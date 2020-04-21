--

create temporary tablespace homestead_temporary
tempfile 'homestead_temporary.dat' size 1024m autoextend on next 1024m
extent management local;

create tablespace homestead_index
datafile 'homestead_index.dbf' size 1024m autoextend on next 1024m
nologging
extent management local;

create tablespace homestead_data
datafile 'homestead_data.dbf' size 1024m autoextend on next 1024m
nologging
extent management local;
