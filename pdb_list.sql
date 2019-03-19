-- grant CREATE SESSION to C##ZABBIX container = all;
-- grant SELECT ANY DICTIONARY to C##ZABBIX container = all;
-- alter user c##zabbix set container_data = all container=current;
SET	 pagesize 0
SET	 heading OFF
SET	 feedback OFF
SET	 verify OFF
SELECT pdb_name 
FROM cdb_pdbs
WHERE pdb_name NOT IN ('PDB$SEED')
ORDER BY 1;
QUIT;
