--

create temporary tablespace homestead_temporary
tempfile
'homestead_temporary_01.dat' size 100m autoextend on next 100m,
'homestead_temporary_02.dat' size 100m autoextend on next 100m,
'homestead_temporary_03.dat' size 100m autoextend on next 100m
extent management local;

create tablespace homestead_index
datafile
'homestead_index_01.dbf' size 100m autoextend on next 100m,
'homestead_index_02.dbf' size 100m autoextend on next 100m,
'homestead_index_03.dbf' size 100m autoextend on next 100m
nologging
extent management local;

create tablespace homestead_data
datafile
'homestead_data_01.dbf' size 100m autoextend on next 100m,
'homestead_data_02.dbf' size 100m autoextend on next 100m,
'homestead_data_03.dbf' size 100m autoextend on next 100m
nologging
extent management local;


create user homestead
identified by secret
default tablespace homestead_index
quota unlimited on homestead_index;

alter user homestead
identified by secret
default tablespace homestead_data
temporary tablespace homestead_temporary
quota unlimited on homestead_data;

grant all PRIVILEGES
to homestead
with admin option;
