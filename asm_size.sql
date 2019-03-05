SET      pagesize 0
SET      heading OFF
SET      feedback OFF
SET	 verify OFF
SELECT
--name,
--round(total_mb - free_mb, 2) used_mb,
round((total_mb - free_mb) * 100/total_mb, 2) pct_used
FROM
v$asm_diskgroup
WHERE name = UPPER('&1');
QUIT;
