SELECT ROLE.ID,ROLE.NAME,user_new.ID,user_new.EMAIL,user_new.NAME,user_new.PASSWORD,user_new.PHONENUBER,user_new.profile_id,user_new.role_id,user_new.username FROM role INNER JOIN user_new  ON ROLE.ID = user_new .role_id ORDER BY ROLE.NAME , user_new.NAME ASC
select * from role inner join user_new on role.id = user_new.role_id order by role.name,user_new.name asc; 

select * from user_new left join role on role.id = user_new.role_id order by role.name,user_new.name asc; 
select user_new.name from role inner join user_new on role.id = user_new.role_id ;
select * from user_new;
select * from role;
select * from skills
select user_new.phonenumber, user_new.emailid, profile.batch, department.name, profile.designation, experience.company_name from user_new inner join profile on user_new.profile_id=profile.id  
left join degree on  profile.degree_id=degree.id inner join department on degree.department_id = department.id inner join experience on profile.id = experience.profile_id where 
user_new.name = "ProGrad" and experience.currentValue=3

select user_new.phonenumber, user_new.emailid, profile.batch, department.name, profile.designation, experience.company_name from user_new inner join profile on user_new.profile_id=profile.id  
left join degree on  profile.degree_id=degree.id inner join department on degree.department_id = department.id inner join experience on profile.id = experience.profile_id where
user_new.name like '%ProGrad%' and experience.currentValue=3

select user_new.name, skills.name from user_new left join role on user_new.role_id= role.id left join profile on user_new.profile_id = profile.id  left join
 profile_skills on profile.id = profile_skills.profile_id  left join skills on profile_skills.skill_id = skills.id
 
where role.name like '%Alumini%' order by  user_new.name,skills.name

select user_new.name, skills.name from skills inner join profile_skills on skills.id= profile_skills.profile_id inner join

update role set name = 'Alumini' where id = 3;


select * from profile
role
 select  user_new.name, experience.company_name from user_new left join role on user_new.role_id= role.id left join profile on user_new.profile_id = profile.id  left join
 experience on profile.id = experience.profile_id 
where role.name like '%Alumini%'and experience.currentValue=1 and profile.batch='2008' order by  user_new.name  asc;

select  user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new left join role on user_new.role_id= role.id 
 left join profile on user_new.profile_id = profile.id left join degree on degree.id = profile.degree_id  where role.name='Alumni'  and  degree.name='BSC_CT' order by  user_new.name  asc
 
 13)select  user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new left join role on user_new.role_id= role.id 
 left join profile on user_new.profile_id = profile.id left join degree on degree.id = profile.degree_id  left join department on degree.department_id = department.id where role.name='Alumni'  and  department.name='CSE' order by  user_new.name  asc
14)select user_new.name, higher_degree.university_name from user_new left join role on user_new.role_id= role.id left join profile on user_new.profile_id = profile.id left join  higher_degree 
on profile.id = higher_degree.profile_id left join degree on profile.degree_id = degree.id left join department on department.id = degree.department_id where
 role.name='Alumni' and higher_degree.degree_name!=null order by  user_new.name ,higher_degree.university_name asc;
 
 select user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new  left join role on user_new.role_id= role.id left join profile on user_new.profile_id = profile.id left join  higher_degree 
on profile.id = higher_degree.profile_id left join degree on profile.degree_id = degree.id left join department on department.id = degree.department_id where
 role.name='Alumni' and higher_degree.university_name='Texas University' order by  user_new.name ,higher_degree.university_name asc;
 
 select user_new.name, profile.batch from user_new  left join role on user_new.role_id= role.id left join profile on user_new.profile_id = profile.id  where role.name='Alumni' and profile.gender='female' 
 order by  user_new.name asc

select user_new.name, profile.batch, degree.name, department.name from user_new  left join role on user_new.role_id= role.id 
 left join profile on user_new.profile_id = profile.id left join degree on degree.id = profile.degree_id left join department on department.id =degree.department_id where role.name='Alumni' and profile.gender='female order by  user_new.name  asc
 
19)select degree.name, department.name from degree left join department on degree.department_id = department.id order by  degree.name
20)
select user_new.name, profile.designation from user_new left join role on user_new.role_id= role.id 
 left join profile on user_new.profile_id = profile.id where role.name='Alumni' and profile.gender='male' order by  user_new.name asc
 
 21)select user_new.name, profile.designation from user_new left join role on user_new.role_id= role.id 
 left join profile on user_new.profile_id = profile.id left join experience on experience.profile_id = profile.id where role.name='Alumni' and experience.currentValue=1 and experience.company_name='TCS'order by  user_new.name asc
 
 22) select user_new.name, querytable.content from user_new left join querytable on querytable.user_id = user_new.id order by  user_new.name asc
 
 select * from post;
 23)select user_new.name, querytable.content from user_new inner join querytable on querytable.user_id = user_new.id where querytable.parent_id IS NOT NULL order by  user_new.name asc
 
 24) select user_new.name, post.content from user_new left join post on post.user_id = user_new.id order by  user_new.name asc ;
 
25) select user_new.name, post.content from user_new left join post on post.user_id = user_new.id inner join post_type on post_type.id = post.type_id where post_type.name like '%Technology%' order by user_new.name,post.dateof; 
26)

select user_new.name, post.content from user_new left join post on post.user_id = user_new.id where post.dateof='2013' order by user_new.name, post.dateof, post.content;      


27)
select  user_new.name, department.name from user_new left join profile on user_new.profile_id = profile.id left join degree on degree.id = profile.degree_id  left join department on degree.department_id = department.id 
inner join profile_skills on profile_skills.profile_id = profile.id inner join skills on skills.id =  profile_skills.skill_id where skills.name like '%Programming%' order by user_new.name; 


select * from EVENT
28)
 select user_new.name, event.name from user_new  left join role on user_new.role_id= role.id INNER JOIN EVENT ON EVENT.organiser_id  =  user_new .ID INNER JOIN ROLE ON  user_new.ROLE_ID = ROLE.ID
 where role.name='Alumni' order by user_new.name; 
29}select user_new.name, event.name from user_new  left join role on user_new.role_id= role.id INNER JOIN EVENT ON EVENT.organiser_id  =  user_new .ID INNER JOIN ROLE ON  user_new.ROLE_ID = ROLE.ID
 where role.name='Alumni' order by user_new.name; 

