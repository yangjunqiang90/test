CREATE DATABASE test;
use  test;
show  tables;
drop table tabname;
CREATE TABLE user (name VARCHAR(20),password VARCHAR(20));
INSERT INTO user VALUES('huzhiheng','123456');
create table file(MODULEID int auto_increment primary key,FILENAME varchar(50) unique);

create table node(NODEID int auto_increment primary key,MODULEID int,FUNCTIONNAME varchar(50) NOT NULL unique,TOMODULE varchar(50)NOT NULL,Foreign Key (MODULEID) REFERENCES  file(MODULEID));

create table relation(RELATIONID int auto_increment primary key,FUNCTION1_ID int,FUNCTION1NAME varchar(50) NOT NULL,FUNCTION2_ID int,FUNCTION2NAME varchar(50) NOT NULL,Foreign Key(FUNCTION1_ID) References node(NODEID),Foreign Key (FUNCTION2_ID)References node(NODEID));

150,3	46,3
select * from node where NODEID=150;
select * from node where NODEID=46;

select FUNCTION1_ID,FUNCTION2_ID from relation;
select MODULEID from node where node.NODEID=1
insert into relation (FUNCTION1_ID,FUNCTION1NAME,FUNCTION2_ID,FUNCTION2NAME) values(1,'listen_add',3,'R1');



INSERT INTO file(FILENAME) VALUES("afda");
INSERT INTO file(FILENAME) VALUES("a");
INSERT INTO file(FILENAME) VALUES("2");
INSERT INTO file(FILENAME) VALUES("3");
//INSERT INTO node(MODULEID,TOMODULE,FUNCTIONNAME) VALUES((select MODULEID ,FILENAME from file where FILENAME='a'),'fun' );

INSERT INTO file(FILENAME) 
VALUES('afda') where not exists (select * from file where file.FILENAME ='afda');

INSERT INTO file(FILENAME) 
select FILENAME from file where not exists (select * from file where file.FILENAME ='afdaa1');

INSERT INTO clients
(client_id, client_name, client_type)
SELECT supplier_id, supplier_name, 'advertising'
FROM suppliers
WHERE not exists (select * from clients
where clients.client_id = suppliers.supplier_id);

insert into TABLE_NAME (COLUMN_NAME1,COLUMN_NAME2)
select COLUMN_NAME1,COLUMN_NAME2 from TABLE_NAME where COLUMN_NAME not in (select COLUMN_NAME from TABLE_NAME )

select NODEID from node where node.FUNCTIONNAME='R1';

insert into relation 



BUTLERID���豸id
ROOT_PASSWORD:����Ա����
LOCK_PASSWORD����������
//WEATHER���Ƿ���ʾ����
WELCOME���Ƿ���ʾ��ʾ��
WELCOME_TEXT����ӭ��
DYNAMIC_UPDATE_LOCK���Ƿ�̬��ʾ��������
ONEKEY_LOCK
USERID  �û�id��һ���û������ж���豸 ""
CMD : ֵ   ����      ��Ҫ�Ĳ���                                                  ����ֵ
			0 ��ȡ��ӭ��    BUTLERID 																				1;WELCOME_TEXT=��ӭʹ�����ܿ�ݹܼ�; (�Ƿ��ȡ�ɹ�;�Ƿ���ʾ;����)
			1 ��֤����      BUTLERID LOCK_PASSWORD																 1; (�Ƿ�ɹ�)
			2 �޸���Ϣ      BUTLERID LOCK_PASSWORD  ROOT_PASSWORD WELCOME_TEXT WELCOME 1; (�Ƿ�ɹ�)
			3 ����Ա��֤    BUTLERID ROOT_PASSWORD																		1; (�Ƿ�ɹ�)
			4 ����ʶ��	
			5 �ָ���������  BUTLERID
			6 ����һ������  BUTLERID ONEKEY_LOCK														1;
			7 ���ֻ�����Ϣ
			8 ��ȡһ������,�Ƿ���ʾ��ӭ�ʵ�״̬                             1;ONEKEY_LOCK=0;WELCOME=0;����ȡ��״̬��indexof("ONEKEY_LOCK=0")
CHANNELID �豸id



create table EXPRESSAGE_BUTLER(
								BUTLERID varchar(20) primary key,ROOT_PASSWORD varchar(10),LOCK_PASSWORD varchar(10) ,WEATHER varchar(1),
								WELCOME varchar(1),WELCOME_TEXT varchar(100),DYNAMIC_UPDATE_LOCK varchar(1),ONEKEY_LOCK varchar(1),
								USERID varchar(25),CHANNELID varchar(25)
								) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into EXPRESSAGE_BUTLER(BUTLERID,ROOT_PASSWORD,LOCK_PASSWORD,WEATHER,WELCOME,WELCOME_TEXT,DYNAMIC_UPDATE_LOCK,ONEKEY_LOCK,UCHANNELID) 
values('1',"123456","123456","1","1","��ӭʹ�����ܿ�ݹܼ�","0","0","zhinengkuaidiguanjia0");

insert into EXPRESSAGE_BUTLER(BUTLERID,ROOT_PASSWORD,LOCK_PASSWORD,WEATHER,WELCOME,WELCOME_TEXT,DYNAMIC_UPDATE_LOCK) 
values('2','123456','123456','1','1','��ӭʹ�����ܿ�ݹܼ�','0',"0");

update EXPRESSAGE_BUTLER set LOCK_PASSWORD='1211' where BUTLERID='1' and ROOT_PASSWORD='654321';

update EXPRESSAGE_BUTLER set BUTLERID='0' where BUTLERID='1';

 delete from expressage_butler;
 drop tables expressage_butler;
 select LOCK_PASSWORD from EXPRESSAGE_BUTLER where BUTLERID='0';

//�������ݿ�
CREATE DATABASE test  
CHARACTER SET 'utf8'  
COLLATE 'utf8_general_ci'; 
//����
CREATE TABLE `database_user` (  
`ID` varchar(40) NOT NULL default '',  
`UserID` varchar(40) NOT NULL default '',  
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




insert into EXPRESSAGE_BUTLER(BUTLERID,ROOT_PASSWORD,LOCK_PASSWORD,WEATHER,WELCOME,WELCOME_TEXT,DYNAMIC_UPDATE_LOCK,ONEKEY_LOCK,CHANNELID) 
values('0',"123456","123456","1","1","��ӭʹ�����ܿ�ݹܼ�","0","0","zhinengkuaidiguanjia0");