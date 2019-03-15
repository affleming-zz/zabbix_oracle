SET      pagesize 0
SET      heading OFF
SET      feedback OFF
SET	 verify OFF
SELECT 
' Tablespace: ' || lower(m.tablespace_name) || ' | Utilizado: ' || round(m.used_percent) || '%' || ' | PDB: ' || lower(p.pdb_name) || ' || '
FROM cdb_tablespace_usage_metrics m INNER JOIN cdb_pdbs p
ON m.con_id = p.con_id
WHERE round(m.used_percent) >= 90
AND round(m.used_percent) <= 100
ORDER BY round(m.used_percent) desc;
QUIT
