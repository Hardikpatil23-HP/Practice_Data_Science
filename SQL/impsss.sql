/* 
  INDEX
  1.alter,create,insert,drop and all
  2.defining constraints
  3.SELCT AND DISTINCT
  4.WHERE CLAUSE AND LOGICAL OPERARATOR
  5.RANGE AND LIST OPEREATOR
  6.NULL NOT NULL WILDCARD
  7.ORDER BY
  8.AGGERATE FUNCTIONS
  9.GROUPBY AND HAVING CLAUSE
  10.STRING FUNCTONSSS
  11.DATE FUNCTIONS AND CONVERSION
  12.COALESCE FUNCTION AND STRING AGG FUNCTION
  13.JOINTS
  14.Set Operator 
  15.CASE STATEMENT
  16.SUBQUERIES
  17.CTE
  18.WINDOW FUNCTION
  19.STORED PROCEDURE
  20.VIEWS
*/








use prt


select*
from saket

create table saket(
"rollno" int primary key,
"name" varchar(50),
"subject" varchar(10)

)
insert into saket values(1,'saket','maths')
insert into saket values(2,'rohit','englisgh')

alter table saket
add email varchar(20)

alter table saket
drop column email

alter table saket
alter column name varchar(40)

EXEC sp_rename 'table_name.old_column_name', 'new_column_name', 'COLUMN';  (--'COLUMN': Specifies that you are renaming a column.)

DROP TABLE saket; --(puri table delte with table sturcture and all)(DDL)(faster)

delete  from saket --(specific row )(DML)
where rollno= 2

truncate table saket   --(empty all the table on once very fastest)(DDL)(sturctre,constaints dlete nahi hote)



sp_help saket


update saket
set name= 'saketmotekar',subject='science'
where rollno=1
---------------------------------------------------------------------------------------------------------------
--defining constraints
create table student(
     studentid int primary key,
	 fristname varchar(50) not null,
	 lastname varchar(50),
	 branchid int foreign key references branch(branchid), ---create branch table 1st
	 email varchar(50) unique
)        --indentity (100,1)   starts index from 100 increment 1 for next recoed

create table branch (
		branchid int primary key,
		branchname varchar(50),
		cpacity int default 200
)


insert into branch values(100,'EE',200)
insert into branch values(101,'CSE',200)
insert into branch values(102,'ECE',200)
insert into branch values(103,'ME',200)

insert into branch(branchid,branchname) values(104,'IT')

ALTER TABLE branch
ADD CONSTRAINT chk_branchname CHECK (branchname IN ('EE', 'CSE', 'ECE', 'ME', 'IT'));


insert into branch values(108,'data_science',200)--not work

select*
from branch

-----------------------------------------------------------------------------------------------------------------------
--SELCT AND DISTINCT
select*
from [games_dataset ]


select distinct game_title
from [games_dataset ]
----------------------------------------------------------------------------------------------------------
--WHERE CLAUSE AND LOGICAL OPERARATOR
select * 
from [games_dataset ]
where game_title= 'Valorant'

select * 
from [games_dataset ]
where game_title= 'Valorant' and [platform] = 'PC'

select * 
from [games_dataset ]
where game_title= 'Valorant' or [platform] = 'PC'

select * 
from [games_dataset ]
where  game_title != 'Valorant' --<>


--------------------------------------------------------------------------------------------------------------------------
--RANGE AND LIST OPEREATOR

select * 
from [games_dataset ]
where rating between 5 and 10

select * 
from [games_dataset ]
where rating not between 9 and 10

select * 
from [games_dataset ]
where game_title in ('valorant','starborne')
------------------------------------------------------------------------------------------------------------------------
--NULL NOT NULL WILDCARD

select * 
from [games_dataset ]
where game_title IS NULL

select * 
from [games_dataset ]
where game_title IS NOT NULL and genre is null

select * 
from [games_dataset ]
where game_title like 'A%' --starts with a


select * 
from [games_dataset ]                                             --%kitne bhi albhabet ho sakte hai
where game_title like '__A%' -- having a at 2postion                   --_ single charackter

select * 
from [games_dataset ]
where game_title like '%a' ---ending with a

--------------------------------------------------------------------------------------------------------------------
--ORDER BY
select * 
from [games_dataset ]
order by rating


select * 
from [games_dataset ]
order by rating desc


select * 
from [games_dataset ]
order by rating desc, number_of_players asc

select TOP 5  game_id,game_title
from [games_dataset ]
order by rating desc, number_of_players asc

---------------------------------------------------------------------------------------------------------------------------------------
--AGGERATE FUNCTIONS  ( WRITTENS SINGLE RESULT)

select COUNT(*) as "no_of record"
from [games_dataset ]

select sum(number_of_players) as "no_of player"
from [games_dataset ]
where genre= 'FPS'

select avg(number_of_players) as "no_of avgplayer"
from [games_dataset ]
where genre= 'FPS'

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--GROUPBY AND HAVING CLAUSE

select genre , avg(number_of_players) as 'avg_palyers'
from [games_dataset ]
group by genre

select genre , avg(number_of_players) as 'avg_palyers'
from [games_dataset ]
group by genre
having  avg(number_of_players)>2500000

----------------------------------------------------------------------------------------------------------------------------------
--STRING FUNCTONSSS

select concat(developer,' ',publisher)
from [games_dataset ]

select len(game_title)
from [games_dataset ]

select lower(game_title)
from [games_dataset ]

select upper(game_title)
from [games_dataset ]

select  game_title,substring(game_title,1,6)  --game title me se sabke staring 6 character
from [games_dataset ]

select upper(game_title)
from [games_dataset ]

select ltrim('      hello')  --ans=hello
select rtrim('hello     ')    --ans=hello


-------------------------------------------------------------------------------------------------------------------------------------
--DATE FUNCTIONS AND CONVERSION

select GETDATE() as 'currentdate'

select release_date , 
DATEDIFF(year,release_date,GETDATE()) as year_diff
from games_dataset

select release_date , 
dateadd(month,3,release_date)
from games_dataset

select getdate(),
dateadd(year,5,dateadd(month,5,dateadd(day,5,getdate())))

select release_date , 
day(release_date) as 'day'
from games_dataset    --same for month and year

select release_date , 
convert(varchar(20), release_date,103) as 'coverted'
from [games_dataset ]
------------------------------------------------------------------------------------------------------------------------------------------------------------
--COALESCE FUNCTION AND STRING AGG FUNCTION
--COALESCE FUNCTIONS RETURNS THE FRIST NON NULL EXPRESSION FROM A LIST OF EXPRESSIONS

select release_date , COALESCE(game_title,genre)
from [games_dataset ]

select STRING_AGG(game_title,',') as 'allname'
from [games_dataset ]
--------------------------------------------------------------------------------------------------------------------------------------------------------
--JOINTS
select *
from [games_dataset ] g
inner join [players_dataset ] p
on g.game_id =p.preferred_game_id

select *
from [games_dataset ] g
left join [players_dataset ] p
on g.game_id =p.preferred_game_id

select *
from [games_dataset ] g
right join [players_dataset ] p
on g.game_id =p.preferred_game_id

 
select *   ---self joint
from [games_dataset ] g
inner join [players_dataset ] p
on g.game_id =p.preferred_game_id
--------------------------------------------------------------------------------------------------------------------
--Set Operator 

select *
from table_name1
union                           --- removes duplicate rows
select*
from table_name2

select *
from table_name1
union all                         --- give all rows of both the tables
select*
from table_name2

select *
from table_name1
intersect                           --- only common rows
select*
from table_name2
-----------------------------------------------------------------------------------------------------------------
--CASE STATEMENT
select studentID,Fristname,lastname,branch,
		case branch
		when 'cs' then '1#'
		when 'IT' then '1#'
		when 'EE' then '1#'
		else 'not evaluated'
		end as 'branch rating'
from allstudent 

select studentID,Fristname,lastname,branch,marksobt,
		case 
		when marksobt>=900 then 'top performer'
		when marksobt<900 then 'avgperformer'
		when marksobt<850 then 'below avg performer'
		else 'poor performar'
		end as 'student performance'
from allstudent 
-------------------------------------------------------------------------------------------------------------------
--SUBQUERIES
select* 
from orders
where totalamount=(select max(totalamount)from orders    --single row written subquery

 -- for multiple rows use in instead of =
------------------------------------------------------------------------------------------------------------------
--CTE
with cte_avgmarks as
(
	select branch,avg(marksobtained) as 'avg_marks'
	from allstudent
	groupby branch
)
select*
from allstudent a
inner join cte_avgmarks c
on a.banch= c.branch
and a.marksobtained >c. avg_marks
---------------------------------------------------------------------------------------------------------------------
---WINDOW FUNCTION (aggrate function)
select  studentid,fristname,lastname,brach,marksobtained,
		avg(marksobtained) over(partition by branch) as 'avg_marks',
		count(*) over(partition by branch) as 'no_of student',
		max(marksobtained) over(partition by branch) as 'max_marks'
from allstudent
 
 select  studentid,fristname,lastname,brach,marksobtained,
		 sum(marksobtained) over (order by marksobtained rows between unbounded preceding and current row)
from allstudent --cumulative sum

--Rankingfunctions (order by compulsory hai)
select  studentid,fristname,lastname,brach,marksobtained,
        ROW_NUMBER() over(partition by branch order by marksobtained desc), --gives serial number
		rank() over(order by marksobtained desc), --number skip karega
		dense_rank() over(partition by branch order by marksobtained desc) --number skip nahi karega
from allstudent
--value window function
select  studentid,fristname,lastname,brach,marksobtained,
		lag(marksobtained) over(order by marksobtained) as 'avg_marks',
		lead(marksobtained) over(order by marksobtained) as 'max_marks'
from allstudent
------------------------------------------------------------------------------------------------------------------
--STORED PROCEDURE
CREATE PROCEDURE SelectAllCustomers @City nvarchar(30), @PostalCode nvarchar(10)
AS
SELECT * FROM Customers WHERE City = @City AND PostalCode = @PostalCode
GO;
EXEC SelectAllCustomers @City = 'London', @PostalCode = 'WA1 1DP';

--power of number
CREATE PROCEDURE power_of_num 
    @number INT
AS
BEGIN
    SELECT POWER(@number, 2) AS Result;
END;
GO

EXEC power_of_num @number = 2;
--------------------------------------------------------------------------------------------------------
--VIEWS
CREATE VIEW HR_Employees AS
SELECT EmployeeID, FirstName, LastName, Department, Salary
FROM Employees
WHERE Department = 'HR';

SELECT * FROM HR_Employees;
------------------------------------------------------------------------------------------------------------------




select * 
from [games_dataset ]

select *
from [players_dataset ]