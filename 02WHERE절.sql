--WHERE 조건절
SELECT * FROM EMPLOYEES WHERE JOB_ID = 'IT_PROG';
SELECT FIRST_NAME, JOB_ID FROM EMPLOYEES WHERE FIRST_NAME = 'David';
SELECT * FROM EMPLOYEES WHERE SALARY >= 15000;
SELECT * FROM EMPLOYEES WHERE DEPARTMENT_ID <> 90; --같지않다
SELECT * FROM EMPLOYEES WHERE HIRE_DATE = '06/03/07'; --날짜 비교도 문자열로 함
SELECT * FROM EMPLOYEES WHERE HIRE_DATE >= '06/03/01'; --날짜의 대소비교 -> 원래 문자열은 안되지만, 자바 COMPARE 비교처럼 로직 들어감

--BETWEEN AND 연산자 : ~사이에
SELECT * FROM EMPLOYEES WHERE SALARY BETWEEN 5000 AND 10000; --이상 ~ 이하
SELECT * FROM EMPLOYEES WHERE HIRE_DATE BETWEEN '03/01/01' AND '03/12/31';

--IN 연산자 : 또는
SELECT * FROM EMPLOYEES WHERE department_id IN (50, 60, 70);
SELECT * FROM EMPLOYEES WHERE JOB_ID IN('IT_PROG', 'ST_MAN');

--LIKE 연산자 : 검색에 사용됨, 리터럴 문자 % _
SELECT * FROM EMPLOYEES WHERE hire_date LIKE '03%'; --03으로 시작하는
SELECT * FROM EMPLOYEES WHERE hire_date LIKE '%03'; --03으로 끝나는
SELECT * FROM EMPLOYEES WHERE hire_date LIKE '%03%'; --03이 포함된(03으로 시작할수도 있고 끝날수도 있음)
SELECT * FROM EMPLOYEES WHERE JOB_ID LIKE '%MAN%';

SELECT * FROM EMPLOYEES WHERE first_name LIKE '__a%'; --a가 셋째자리인 데이터

--NULL값 찾기 : IS NULL, IS NOT NULL
SELECT * FROM EMPLOYEES WHERE commission_pct = NULL; --데이터가 안나옴
SELECT * FROM EMPLOYEES WHERE commission_pct IS NULL; --보너스가 없는 사람
SELECT * FROM EMPLOYEES WHERE commission_pct IS NOT NULL; --보너스가 있는 사람

--AND, OR : AND 가 OR보다 빠름
SELECT * FROM EMPLOYEES WHERE JOB_ID IN ('IT PROG', 'FI_MGR');
SELECT * FROM employees WHERE JOB_ID = 'IT PROG' OR JOB_ID = 'FI_MGR'; --위에랑 같은거

SELECT * FROM employees WHERE JOB_ID = 'IT PROG' OR salary >= 5000;
SELECT * FROM employees WHERE JOB_ID = 'IT_PROG' AND salary >=5000;

SELECT * FROM EMPLOYEES WHERE JOB_ID = 'IT_PROG' OR JOB_ID = 'FI_MGR' AND salary >= 6000; --AND가 먼저 동작됨
SELECT * FROM employees WHERE (JOB_ID = 'IT_PROG' OR JOB_ID = 'FI_MGR') AND SALARY >= 6000; --OR가 먼저 동작됨 소괄호

--NOT : 연산키워드와 사용됨
SELECT * FROM EMPLOYEES WHERE department_id NOT IN (50,60); --부서아이디가 50,60이 아닌
SELECT * FROM employees WHERE JOB_ID NOT LIKE '%MAN%'; --직업명이 MAN이 아닌

--------------------------------------------------------------------------------

--ORDER BY
SELECT * FROM EMPLOYEES ORDER BY SALARY; --아무것도 안적으면 ASC
SELECT * FROM EMPLOYEES ORDER BY department_id DESC; --내림차순

SELECT FIRST_NAME, SALARY * 12 AS 연봉 FROM EMPLOYEES ORDER BY 연봉; --별칭을 ORDER절에서 사용할 수 있음.

--정렬을 2개 이상 칼럼으로 시킬 수 있음
--ex> 부서번호가 높은 사람들 중에서, 급여가 높은 사람들 기준으로 정렬
SELECT * FROM employees ORDER BY department_id DESC, salary DESC;

SELECT * FROM employees WHERE JOB_ID IN('IT_PROG', 'SA_MAN') ORDER BY first_name ASC;











































