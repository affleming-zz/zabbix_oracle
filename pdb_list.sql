SET	 pagesize 0
SET	 heading OFF
SET	 feedback OFF
SET	 verify OFF
SELECT pdb_name 
FROM cdb_pdbs
WHERE pdb_name NOT IN ('PDB$SEED')
ORDER BY 1;
QUIT;
