INSTALL postgres_scanner;
LOAD postgres_scanner;
COPY (SELECT * FROM postgres_scan('postgresql://postgres:foo@postgres/my_database', 'my_schema', 'dummy_table')) TO '/exp/dummy_table.parquet' (FORMAT PARQUET);