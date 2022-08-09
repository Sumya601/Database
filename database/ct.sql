select distinct e.employee_name, city from  employee as e, works as w
where e.employee_name=w.employee_name and company_name='Frist Bank Corporation'


select distinct e.employee_name, street,city from employee as e, works as w
where e.employee_name=w.employee_name and company_name='Frist Bank Corporation' and salary>10000


(select employee_name from works )
except
(select distinct e.employee_name from  employee as e, works as w
where e.employee_name=w.employee_name and company_name='Frist Bank Corporation')


select employee_name from works
where salary > all (select salary from works where company_name='small bank')



select h.company_name from works as h, works as l

group by company_name

having count(h.employee_name) > count(l.employee_name)

