-- 1)
SELECT SUBSTR(Ename, 1, 3) AS First_Three_Chars FROM Emp;

-- 2)
Select INSTR(Ename, 'S') from Emp;

-- 3)
SELECT INSTR(Ename, 'A') AS Position_Of_A FROM Emp;

-- 4)
SELECT LENGTH(Ename) AS Name_Length FROM Emp;

-- 5)
SELECT TRIM(BOTH ' ' FROM Ename) AS Trimmed_Name FROM Emp;

-- 6)
SELECT UPPER(Ename) AS Uppercase_Name FROM Emp;

-- 7)
SELECT LOWER(Ename) AS Lowercase_Name FROM Emp;

-- 8)
SELECT REPLACE(Ename, 'SMITH', 'JOHNSON') AS Replaced_Name FROM Emp;

-- 9)
SELECT LPAD(Ename, 10, '.') AS Padded_Name FROM Emp;

-- 10)
SELECT RPAD(Ename, 10, '.') AS Padded_Name FROM Emp;

-- 11)
SELECT INITCAP(Ename) AS Capitalized_Name FROM Emp;

-- 12)
SELECT TRANSLATE(Ename, 'SME', '123') AS Translated_Name FROM Emp;

-- 13)
SELECT REGEXP_REPLACE(Ename, 'I(.*)H', 'R\1N') AS Replaced_Name FROM Emp;

-- Numeric Functions

-- 14)
SELECT ABS(-10) FROM Emp;

-- 15)
SELECT CEIL(3.14159) FROM Emp;

-- 16)
SELECT FLOOR(3.14159) FROM Emp;

-- 17)
SELECT MOD(10, 3) FROM Emp;

-- 18)
SELECT POWER(2, 3) FROM Emp;

-- 19)
SELECT ROUND(3.14159, 2) FROM Emp;

-- 20)
SELECT SIGN(10) FROM Emp;

-- 21)
SELECT SQRT(16) FROM Emp;

-- 22)
SELECT EXP(2) FROM Emp;

-- 23)
SELECT LN(2.71828) FROM Emp;

-- 24)
SELECT LOG(10, 100) FROM Emp;

-- 25)
SELECT TRUNC(3.14159, 2) FROM Emp;

-- 26)
SELECT SIN(1) FROM Emp;

-- Date functions

-- 27)
SELECT SYSDATE FROM emp;

-- 28)
SELECT MONTHS_BETWEEN(hiredate, SYSDATE) AS months_since_hire
FROM emp;

-- 29)
SELECT ADD_MONTHS(hiredate, 6) AS six_months_later
FROM emp;

-- 30)
SELECT LAST_DAY(hiredate) AS last_day_of_month
FROM emp;

-- 31)
SELECT NEXT_DAY(hiredate, 'FRIDAY') AS next_friday_after_hiredate
FROM emp;

-- 32)
SELECT ROUND(hiredate, 'HH24') AS rounded_to_hour
FROM emp;

-- 33)
SELECT TRUNC(hiredate, 'DD') AS truncated_to_day
FROM emp;

-- 34)
SELECT EXTRACT(YEAR FROM hiredate) AS hire_year
FROM emp;

-- 35)
SELECT TO_CHAR(hiredate, 'MM/DD/YYYY') AS hire_date_formatted
FROM emp;

-- 36)
SELECT TO_DATE('04/05/2023', 'MM/DD/YYYY') AS converted_date
FROM dual;

-- 37)
SELECT CURRENT_DATE FROM dual;

-- 38)
SELECT LOCALTIMESTAMP FROM dual;

-- 39)

SELECT hiredate + INTERVAL '6' MONTH AS six_months_later
FROM emp;

-- 40)

SELECT hiredate + (6/24) AS six_hours_later
FROM emp;