create table student(
  id int primary key,
  name varchar(50) not null,
  age int check (age>=18),
  department varchar(20)
);
insert into student values(1,"mahmud",20,"cse");
insert into student values (2,"bornil",32,"EEE");

--invalid 
--insert into student values (4,null,12,"bba");

select * from student;

