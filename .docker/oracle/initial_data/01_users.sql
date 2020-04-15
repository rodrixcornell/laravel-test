--

create user homestead
identified by secret
default tablespace homestead_index
quota unlimited on homestead_index;

alter user homestead
identified by secret
default tablespace homestead_data
temporary tablespace homestead_temporary
quota unlimited on homestead_data;
