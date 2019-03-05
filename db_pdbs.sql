SET      pagesize 0
SET      heading OFF
SET      feedback OFF
SET      verify OFF
SELECT   TRIM(PDB_NAME)
FROM     dba_pdbs
WHERE    pdb_name not in ('PDB$SEED');
QUIT;
