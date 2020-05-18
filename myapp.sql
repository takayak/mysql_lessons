

drop table if exists users;
create table users (
  id int unsigned primary key auto_increment,
  name varchar(20) unique,
  score float  default 0.0
  -- rank set('gold','silver','bronze')
);
-- alter table users add column email varchar(255) after name;
-- alter table users drop column score;
-- alter table users change name user_name varchar(80) default 'nobody';

-- desc users;
-- alter table users rename persons;
-- show tables;
-- drop table if exists persons;



insert into users (name , score) values ('taguhci',5.8);
insert into users (name , score) values ('koji',5.3);
insert into users (name , score) values ('dotinstall',7.6);
insert into users (name , score) values ('Okdog',11);
insert into users (name , score) values ('takasi',7.3);
insert into users (name , score) values ('honda',3);

select * from users;
desc users;


-- create table users_empty like users;
-- desc users;

-- create table users_copy as select * from users;
-- select * from users_copy;

drop table if exists users_with_team;
create table users_with_team as 
SELECT
  id,
  name,
  score,
  CASE
    when score > 8.0 then 'team-A'
    when score > 6.0 then 'team-B'
    else 'team-C'
  END as team
from users
order by score desc;

-- select * from users_with_team;
-- select * from users;
-- select * from users ;
-- select * from users where rank = 'silver';





-- select length(name) as len , name from users order by len;
-- select length('hello');
-- select substr('hello',2)
-- select substr('this is a pen' , 2 , 4);


-- update users set score = 20000 where id = 1;
-- update users set name = 'sasaki' , score = 2.9 where name = 'tanaka';
-- delete from users where score <= 5;
-- select * from users;


-- select * from users where score >= 3.0 and score <= 3
-- select * from users where score between 3 and 6
-- select * from users where name like 't%';
-- select * from users where score is not null order by score desc;
-- select * from users limit 3 offset 4;

-- select * from users where score >= 6.0;
-- select * from users;
-- select id , name from users;




-- insert into users ( id , name ,score) values (1,'taguchi' , 5.0),(2,'takaya', 5.12);
-- select * from users;