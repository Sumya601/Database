select namefrom instructor
 where dept_name = 'Comp. Sci.'

 select name	from instructor
 where dept_name = 'Comp. Sci.'  and salary > 80000

 select *from instructor, teaches

 select *from instructor as i, teaches as t
 where i.id=t.id

 select distinct T.namefrom instructor as T, instructor as Swhere T.salary > S.salary and S.dept_name = 'Comp. Sci.'

 select '437' as foo

 select name	from instructor	where name like '%vas%' 

 select name	from instructor	where name like '%vas'

 select distinct name	from    instructor		order by name

 select distinct name	from    instructor		order by name desc

 select  name	from    instructor		order by  dept_name, name

 select namefrom instructorwhere salary between 90000 and 100000



 (select course_id from section where semester = 'Fall' and year = 2009)
  union
 (select course_id from section where semester = 'Spring' and year = 2010)

 (select course_id from section where semester = 'Fall' and year = 2009)
  intersect
 (select course_id from section where semester = 'spring' and year = 2010)

 (select course_id from section where semester = 'Fall' and year = 2009)
  except
 (select course_id from section where semester = 'Spring' and year = 2010)

