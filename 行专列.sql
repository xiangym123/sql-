

drop table if EXISTS source ;

CREATE table source(sname VARCHAR(20),cource VARCHAR(20),scoure INT);


INSERT source VALUES('张三','语文',80),
										('张三','数学',88),
										('张三','英语',90),
										('李四','语文',80),
										('李四','数学',70),
										('李四','英语',78),
										('王五','英语',88),
										('王五','数学',98),
										('王五','语文',80);
select s.* from source s ;
select s.sname from source s GROUP BY s.sname HAVING MIN(s.scoure)>=80;









select s.* from source s;
-- EXPLAIN EXTENDED  
select s.sname,
sum(if(s.cource='语文',s.scoure,0)) '语文',
sum(if(s.cource='数学',s.scoure,0)) '数学',
sum(if(s.cource='英语',s.scoure,0)) '英语' from source s GROUP BY s.sname;
-- show WARNINGS ;



CREATE TABLE t_gread(select s.sname,
sum(if(s.cource='语文',s.scoure,0)) '语文',
sum(if(s.cource='数学',s.scoure,0)) '数学',
sum(if(s.cource='英语',s.scoure,0)) '英语' from source s GROUP BY s.sname);


select * from t_gread;

select t.sname,'语文' course, 语文 as source from t_gread t
UNION
select t.sname,'数学' course, 数学 as source from t_gread t
UNION
select t.sname,'英语' course, 英语 as source from t_gread t




