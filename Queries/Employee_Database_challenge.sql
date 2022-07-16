--Deliverable 1
SELECT e.emp_no AS "Employee Number",
        e.first_name AS "First",
        e.last_name AS "Last",
        t.title AS "Title",
        t.from_date AS "From",
        t.to_date AS "To"
INTO emp_title
FROM employees AS e
JOIN titles AS t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC;

SELECT * FROM emp_title

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON ("Employee Number") "Employee Number",
"First",
"Last",
"Title"

INTO unique_titles
FROM emp_title AS et
WHERE et."To" = '9999-01-01'
ORDER BY "Employee Number" ASC, "To" DESC;

SELECT * FROM unique_titles

--Retrieve Number of Employees by most recent job title who are about to retire.
SELECT COUNT ("Title"), "Title"
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY "Title" 
ORDER BY COUNT("Title") DESC;

SELECT * FROM retiring_titles









