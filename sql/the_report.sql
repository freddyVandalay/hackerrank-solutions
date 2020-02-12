--Challenge:
-- Link: https://www.hackerrank.com/challenges/the-report/problem
--Ketty gives Eve a task to generate a report containing three columns: Name, Grade and Mark.
--Ketty doesn't want the NAMES of those students who received a grade lower than 8.
--The report must be in descending order by grade -- i.e. higher grades are entered first.
--If there is more than one student with the same grade (8-10) assigned to them,
--order those particular students by their name alphabetically.
--Finally, if the grade is lower than 8, use "NULL" as their name and list them by their grades in descending order.
--If there is more than one student with the same grade (1-7) assigned to them,
--order those particular students by their marks in ascending order.
--Write a query to help Eve.

SELECT
    CASE
        WHEN grades.grade > 7 THEN students.name
        ELSE
            NULL
    END,
    grades.grade,
    students.marks
FROM students
INNER JOIN grades
ON students.marks >= min_mark AND students.marks <= max_mark
ORDER BY grades.grade DESC,
CASE
    WHEN grades.grade > 7 THEN students.name
    ELSE students.marks
END ASC;
