use rishab
create table emp(id int,name varchar(50),salary money)
insert into emp values(1,'rishab',1000000),(2,'6ty7uh5',299999),(3,'asdhj',83493409),(4,'asdgyh',215628),(5,'asgfd',68478)
select*from emp
create function emp1(@id int)
returns money
as 
begin
declare @t money,@pf money
select @t=salary from emp where id=@id
set @pf=@t*.1
return @pf
end
select dbo.emp1  (1)
