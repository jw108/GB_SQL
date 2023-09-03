SELECT color, mark, count(1)
FROM auto 
WHERE mark IN ('BMW','LADA') 
GROUP BY color, mark;