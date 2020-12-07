use [DS2_DWH]
go

set datefirst 1 --start from Monday

declare @StartDate date = '20000101';
declare @CutoffDate date = dateadd(day, -1, dateadd(year, 100, @StartDate));

with SequenceN(n) as
(
    select 0
	union all
	select n + 1
	from SequenceN
	where n < datediff(day, @StartDate, @CutoffDate)
),

Dates(d) as
(
    select dateadd(day, n, @StartDate)
	from SequenceN
),

Calendar as
(
    select
	    TheDate = convert(date, d),
		TheDay = datepart(day, d),
		TheMonth = datepart(month, d),
		TheMonthName = datename(month, d),
		TheYear = datepart(year, d),
		TheWeekDay = datepart(weekday, d),
		TheWeekDayName = datename(weekday, d),
		TheWeekInYear = datepart(week, d),
		TheWeekInMonth = datediff(week, dateadd(week, datediff(day, 0, dateadd(month, datediff(month, 0, d), 0)) / 7, 0), convert(datetime, d) - 1) + 1
	from Dates
)

insert into [dbo].[Date]
    (TheDate, TheDay, TheMonth, TheMonthName, TheYear, TheWeekDay, TheWeekDayName, TheWeekInYear, TheWeekInMonth)
    select * from Calendar
    option (maxrecursion 0)