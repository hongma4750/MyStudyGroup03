
DROP TABLE sistmember
CASCADE CONSTRAINT;

create table sistmember(
  m_id varchar2(50) primary key,
  m_pw varchar2(500) not null,
  m_nickname varchar2(50) not null,
  m_name varchar2(50) not null,
  m_gender varchar2(1) not null,
  m_birth varchar2(8) not null,
  m_postal varchar2(6) not null,
  m_address varchar2(500) not null,
  m_marketing varchar2(50) not null,
  m_email varchar2(320) not null,
  m_phone varchar2(13) not null,
  m_action number (1) not null
);

insert into sistmember values('aaaa12','a','a','a','m','a','a','a','a','a');
insert into sistmember values('aaaa123','a','a','m','a','a','a','a','a');
insert into sistmember values("aaaa1212",'a','a','m','a','a','a','a','a');


select * from sistmember;