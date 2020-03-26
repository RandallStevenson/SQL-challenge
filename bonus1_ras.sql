CREATE TABLE title_sal AS
SELECT tit.title,tit.empl_no,sal.salary
FROM titles tit
JOIN salaries sal ON
	sal.emp_no=tit.empl_no;
	