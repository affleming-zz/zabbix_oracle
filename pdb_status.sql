SET	 pagesize 0
SET	 heading OFF
SET	 feedback OFF
SET	 verify OFF
SELECT
    CASE
        WHEN open_mode = 'READ WRITE'
             AND restricted = 'NO' THEN
            0
        WHEN open_mode != 'READ WRITE'
             OR restricted IS NULL
             OR restricted = 'YES' THEN
            1
    END
FROM
    v$pdbs
WHERE
    name NOT IN (
        'PDB$SEED'
    )
    AND name = upper('&1');
QUIT;
