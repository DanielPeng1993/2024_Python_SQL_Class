create table if not exists stations (
   id serial primary key,
   code varchar(5) not null unique,
   name varchar(10) not null unique,
   e_name varchar(50)
) ;

drop table if exists stations;