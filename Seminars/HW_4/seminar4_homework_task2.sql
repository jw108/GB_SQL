SELECT DISTINCT mark, (select count(1) 
FROM auto a1 
WHERE a1.mark != a.mark) AS c 
FROM auto a;