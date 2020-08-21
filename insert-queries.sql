insert into role(id,name)values(1,'designer');
insert into role(id,name)values(2,'guide');
insert into role(id,name)values(4,'designer');
insert into role(id,name)values(5,'guide');
insert into role(id,name)values(6,'designer');
insert into role(id,name)values(7,'guide');
insert into role(id,name)values(8,'designer');
insert into role(id,name)values(9,'guide');

insert into role(id,name)values(10,'developer');


select * from role;

insert into skills(id,description,name)values(1,'self learning','learn');
insert into skills(id,description,name)values(2,'technical skills','coding');
insert into skills(id,description,name)values(3,'networking-conceptes','CN');
insert into skills(id,description,name)values(4,'physical studies','physics');
insert into skills(id,description,name)values(5,'self learning','learn');
insert into skills(id,description,name)values(6,'technical skills','coding');
insert into skills(id,description,name)values(7,'networking-conceptes','CN');
insert into skills(id,description,name)values(8,'physical studies','physics');
insert into skills(id,description,name)values(9,'networking-conceptes','CN');
insert into skills(id,description,name)values(10,'physical studies','physics');
select * from skill;
desc skills
insert into post_type(id,name)values(1,'business');
insert into post_type(id,name)values(2,'business');
insert into post_type(id,name)values(3,'teacher');
insert into post_type(id,name)values(4,'lawyer');
insert into post_type(id,name)values(5,'nurse');
insert into post_type(id,name)values(6,'teacher');
insert into post_type(id,name)values(7,'lawyer');
insert into post_type(id,name)values(8,'nurse');
insert into post_type(id,name)values(9,'teacher');
insert into post_type(id,name)values(10,'lawyer');
insert into post_type(id,name)values(11,'nurse');
insert into post_type(id,name)values(12,'teacher');
select * from post_type;


insert into department(id,name)values(1,'bpo');
insert into department(id,name)values(2,'IT');
insert into department(id,name)values(3,'bpo');
insert into department(id,name)values(4,'IT');
insert into department(id,name)values(5,'bpo');
insert into department(id,name)values(6,'IT');
insert into department(id,name)values(7,'bpo');
insert into department(id,name)values(8,'IT');
insert into department(id,name)values(9,'bpo');
insert into department(id,name)values(10,'IT');
select * from department;

insert into degree(id,department_id,name)values(5,1,'EEE');
insert into degree(id,department_id,name)values(6,2,'ECE');
insert into degree(id,department_id,name)values(3,1,'cse');
insert into degree(id,department_id,name)values(4,2,'civil');

insert into degree(id,department_id,name)values(6,5,'EEE');
insert into degree(id,department_id,name)values(5,3,'ECE');
insert into degree(id,department_id,name)values(6,6,'cse');
insert into degree(id,department_id,name)values(7,7,'CIV');

insert into profile(id,address,batch,degree_id,designation,gender)values(1,'London','En',1,'HR','Male');
insert into profile(id,address,batch,degree_id,designation,gender)values(2,'Chennai','For',2,'Manager','Female');
insert into profile(id,address,batch,degree_id,designation,gender)values(4,'London','En',1,'HR','Male');
insert into profile(id,address,batch,degree_id,designation,gender)values(3,'Chennai','For',2,'Manager','Female');
insert into profile(id,address,batch,degree_id,designation,gender)values(5,'London','En',3,'HR','Male');
insert into profile(id,address,batch,degree_id,designation,gender)values(6,'Chennai','For',4,'Manager','Female');
insert into profile(id,address,batch,degree_id,designation,gender)values(7,'London','En',5,'HR','Male');
insert into profile(id,address,batch,degree_id,designation,gender)values(8,'Chennai','For',6,'Manager','Female');

insert into higher_degree(id,degree_name,university_name,profile_id)values(1,'BE','MIT',1);
insert into higher_degree(id,degree_name,university_name,profile_id)values(2,'BE','STANFORD',2);

insert into higher_degree(id,degree_name,university_name,profile_id)values(9,'BE','MIT',1);
insert into higher_degree(id,degree_name,university_name,profile_id)values(10,'BE','STANFORD',2);


insert into experience(id,company_name,currentvalue,enddate,startdate,profile_id)values(10,'CTS',1,TO_DATE('2008/11/11','YYYY/MM/DD'),TO_DATE('2019/11/11','YYYY/MM/DD'),2);

insert into experience(id,company_name,currentvalue,enddate,startdate,profile_id)values(4,'TVS',3,TO_DATE('2007/02/02','YYYY/MM/DD'),TO_DATE('2011/02/02','YYYY/MM/DD'),3);
DESC EXPERIENCE
insert into project(id,name,number_of_members,profile_id,short_description)values(9,'Alumini management',10,1,'for school and college');
insert into project(id,name,number_of_members,profile_id,short_description)values(10,'Library management',11,2,'for school and college');
select * from project;

insert into user_new(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(9,'abcd@efgh.com','abcd','efgh',9884642005,5,3,'abcdefgh');
insert into user_new(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(10,'ijkl@mnop.com','ijkl','mnop',9845621745,3,6,'ijklmnop');
select * from user_new
insert into querytable(id,content,dateof,parent_id,user_id)values(4,'Alumini management',TO_DATE('2008/11/12','YYYY/MM/DD'),4,4);
insert into querytable(id,content,dateof,parent_id,user_id)values(3,'Library management',To_DATE('2008/12/13','YYYY/MM/DD'),4,5);
insert into querytable(id,content,dateof,parent_id,user_id)values(10,'Library management',To_DATE('2008/12/13','YYYY/MM/DD'),6,7);
select * from querytable
 insert into event(id,dateof,descriptionValue,invitation,name,organiser_id)values(9,TO_DATE('2008/11/11','YYYY/MM/DD'),'Alumni meet','OBA','ProGrad',3);
 insert into event(id,dateof,descriptionValue,invitation,name,organiser_id)values(10,TO_DATE('2008/11/11','YYYY/MM/DD'),'Library opening','member','FACEPrep',5);
select * from event