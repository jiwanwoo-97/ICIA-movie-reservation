--------------------------------------------------------
--  ������ ������ - ������-2��-10-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table MEMBERS
--------------------------------------------------------

  CREATE TABLE "MEMBERS" 
   (	"NAME" NVARCHAR2(5), 
	"ID" NVARCHAR2(10), 
	"PW" NVARCHAR2(10), 
	"PHONE" NVARCHAR2(13), 
	"RANK" NVARCHAR2(10) DEFAULT 'D', 
	"BUY" NUMBER DEFAULT 0, 
	"BIRTH" DATE, 
	"MCODE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DRAMA
--------------------------------------------------------

  CREATE TABLE "DRAMA" 
   (	"DCODE" NUMBER, 
	"DNAME" NVARCHAR2(10), 
	"DIRECTOR" NVARCHAR2(5), 
	"GENRE" NVARCHAR2(6), 
	"RUNTIME" NUMBER, 
	"AGE" NUMBER, 
	"PRICE" NUMBER, 
	"CONTENTS" NVARCHAR2(1000), 
	"HITS" NUMBER, 
	"SHOWDATE" DATE, 
	"FILES" NVARCHAR2(30)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TICKET
--------------------------------------------------------

  CREATE TABLE "TICKET" 
   (	"TNUM" NUMBER, 
	"T_MCODE" NUMBER, 
	"T_DCODE" NUMBER, 
	"TCODE" NUMBER, 
	"BUYDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COMMENTS
--------------------------------------------------------

  CREATE TABLE "COMMENTS" 
   (	"C_MCODE" NUMBER, 
	"C_DCODE" NUMBER, 
	"COMMENTS" NVARCHAR2(100), 
	"GRADE" NUMBER, 
	"CCODE" NUMBER, 
	"CPW" NVARCHAR2(10)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into MEMBERS
SET DEFINE OFF;
Insert into  MEMBERS (NAME,ID,PW,PHONE,RANK,BUY,BIRTH,MCODE) values ('bbbb','bbbb','bbbb','1111','C',27000,to_date('2020/11/09 00:00:00','YYYY/MM/DD HH24:MI:SS'),11);
Insert into  MEMBERS (NAME,ID,PW,PHONE,RANK,BUY,BIRTH,MCODE) values ('1234','1234','1234','987654321','S',387000,to_date('1234/12/03 00:00:00','YYYY/MM/DD HH24:MI:SS'),4);
Insert into  MEMBERS (NAME,ID,PW,PHONE,RANK,BUY,BIRTH,MCODE) values ('123','12','12','12','S',202000,to_date('0012/01/31 00:00:00','YYYY/MM/DD HH24:MI:SS'),6);
Insert into  MEMBERS (NAME,ID,PW,PHONE,RANK,BUY,BIRTH,MCODE) values ('123','123','123','010-1111-1234','C',63000,to_date('2020/11/24 00:00:00','YYYY/MM/DD HH24:MI:SS'),8);
Insert into  MEMBERS (NAME,ID,PW,PHONE,RANK,BUY,BIRTH,MCODE) values ('1234','5555','5555','1234','D',0,to_date('2020/11/10 00:00:00','YYYY/MM/DD HH24:MI:SS'),12);
Insert into  MEMBERS (NAME,ID,PW,PHONE,RANK,BUY,BIRTH,MCODE) values ('aaaa','aaaa','aaaa','010-1111-1234','D',0,to_date('2020/11/20 00:00:00','YYYY/MM/DD HH24:MI:SS'),9);
Insert into  MEMBERS (NAME,ID,PW,PHONE,RANK,BUY,BIRTH,MCODE) values ('����������','12345','12345','010-1111-1234','D',0,to_date('0123/12/03 00:00:00','YYYY/MM/DD HH24:MI:SS'),10);
REM INSERTING into  DRAMA
SET DEFINE OFF;
Insert into  DRAMA (DCODE,DNAME,DIRECTOR,GENRE,RUNTIME,AGE,PRICE,CONTENTS,HITS,SHOWDATE,FILES) values (1,'��ž�������','ƾƾȦ','����',100,13,9000,'�۰��� ���� �Ȱ� ����� ��� ���� ������ ��ü�� �� �� ���� �̽��͸� ���� ���� ����� ��ž������ ���ÿ� �̻縦 �� �� ������ ����̾߱�..',197,to_date('2020/11/22 15:30:00','YYYY/MM/DD HH24:MI:SS'),'��ž�������.jpg');
Insert into  DRAMA (DCODE,DNAME,DIRECTOR,GENRE,RUNTIME,AGE,PRICE,CONTENTS,HITS,SHOWDATE,FILES) values (2,'2ȣ��������','���·�','����',90,13,7000,'�ƹ����� �ڸ� �̾� ����簡 �ǰ����� û��, ��ȣ��?������ ����� ����, ����� ����, ���� �ϳ� �Ǵ� ���� ����.?������ 2ȣ�� ���������� �����ϰ� ������..?',63,to_date('2020/11/23 15:30:00','YYYY/MM/DD HH24:MI:SS'),'2ȣ��������.jpg');
Insert into  DRAMA (DCODE,DNAME,DIRECTOR,GENRE,RUNTIME,AGE,PRICE,CONTENTS,HITS,SHOWDATE,FILES) values (3,'�׳��ڱ׿���','���·�','����',100,13,9000,'���з� ������ �뼼 �׳��ڱ׿��� �뼼 ������ ���� ����� ���� ġ���� ����� ��ӵȴ�!',27,to_date('2020/11/23 15:30:00','YYYY/MM/DD HH24:MI:SS'),'�׳��ڱ׿���.jpg');
Insert into  DRAMA (DCODE,DNAME,DIRECTOR,GENRE,RUNTIME,AGE,PRICE,CONTENTS,HITS,SHOWDATE,FILES) values (4,'�����','���·�','�߸�',90,11,10000,'4���� ���(?) �˸�����. ��ΰ� �����ڴ�! ��� ��翡 �����ؾ� �Ѵ�',5,to_date('2020/11/25 15:30:00','YYYY/MM/DD HH24:MI:SS'),'�����.jpg');
Insert into  DRAMA (DCODE,DNAME,DIRECTOR,GENRE,RUNTIME,AGE,PRICE,CONTENTS,HITS,SHOWDATE,FILES) values (5,'�ѻ»���','���·�','����',100,15,12000,'�� �� ������ ���̸� �� 4���� ���ǽ��� �̿���, �Ұ��� ������ ��ũ���� ���º� ���˻�� �Ӹ����� 1�� ������ ���ϴ� �����, �׸��� ����ð��� ����1:38��!!',5,to_date('2020/11/26 15:30:00','YYYY/MM/DD HH24:MI:SS'),'�ѻ»���.jpg');
Insert into  DRAMA (DCODE,DNAME,DIRECTOR,GENRE,RUNTIME,AGE,PRICE,CONTENTS,HITS,SHOWDATE,FILES) values (6,'��ƼǮ������','���·�','�����',90,8,6000,'�� ����, �׸��� �� ����. �� ����� ó�� ���� ���� ȣ���� ������ �����ϱ���� �� �е� �ɸ��� �ʴ´�. ������ ���� ���� �װ� �� �� ������ �Ⱥ��� ',2,to_date('2020/11/27 15:30:00','YYYY/MM/DD HH24:MI:SS'),'��ƼǮ������.jpg');
REM INSERTING into  TICKET
SET DEFINE OFF;
Insert into  TICKET (TNUM,T_MCODE,T_DCODE,TCODE,BUYDATE) values (1,9,1,4,to_date('2020/11/20 21:41:42','YYYY/MM/DD HH24:MI:SS'));
Insert into  TICKET (TNUM,T_MCODE,T_DCODE,TCODE,BUYDATE) values (3,6,1,11,to_date('2020/11/23 17:50:04','YYYY/MM/DD HH24:MI:SS'));
Insert into  TICKET (TNUM,T_MCODE,T_DCODE,TCODE,BUYDATE) values (1,6,4,10,to_date('2020/11/23 17:24:23','YYYY/MM/DD HH24:MI:SS'));
Insert into  TICKET (TNUM,T_MCODE,T_DCODE,TCODE,BUYDATE) values (8,4,1,5,to_date('2020/11/23 16:33:20','YYYY/MM/DD HH24:MI:SS'));
Insert into  TICKET (TNUM,T_MCODE,T_DCODE,TCODE,BUYDATE) values (6,8,1,3,to_date('2020/11/20 21:27:08','YYYY/MM/DD HH24:MI:SS'));
Insert into  TICKET (TNUM,T_MCODE,T_DCODE,TCODE,BUYDATE) values (5,4,2,6,to_date('2020/11/23 16:36:50','YYYY/MM/DD HH24:MI:SS'));
Insert into  TICKET (TNUM,T_MCODE,T_DCODE,TCODE,BUYDATE) values (8,4,4,8,to_date('2020/11/23 17:08:49','YYYY/MM/DD HH24:MI:SS'));
Insert into  TICKET (TNUM,T_MCODE,T_DCODE,TCODE,BUYDATE) values (3,6,2,9,to_date('2020/11/23 17:24:16','YYYY/MM/DD HH24:MI:SS'));
Insert into  TICKET (TNUM,T_MCODE,T_DCODE,TCODE,BUYDATE) values (10,6,1,12,to_date('2020/11/23 17:50:13','YYYY/MM/DD HH24:MI:SS'));
Insert into  TICKET (TNUM,T_MCODE,T_DCODE,TCODE,BUYDATE) values (1,8,1,13,to_date('2020/11/23 18:19:36','YYYY/MM/DD HH24:MI:SS'));
Insert into  TICKET (TNUM,T_MCODE,T_DCODE,TCODE,BUYDATE) values (3,11,1,15,to_date('2020/11/23 18:28:58','YYYY/MM/DD HH24:MI:SS'));
REM INSERTING into  COMMENTS
SET DEFINE OFF;
Insert into  COMMENTS (C_MCODE,C_DCODE,COMMENTS,GRADE,CCODE,CPW) values (6,1,'����ֽ��ϴ� �Ф� �����̶� �������ٰ� ���� ������Գ׿� ����..�β�������~',4,3,null);
Insert into  COMMENTS (C_MCODE,C_DCODE,COMMENTS,GRADE,CCODE,CPW) values (6,1,'�׳� �׷������̳׿�',3,4,'1234');
Insert into  COMMENTS (C_MCODE,C_DCODE,COMMENTS,GRADE,CCODE,CPW) values (6,1,'�־� �ò������� ���ߵ� ������.',1,5,'1234');
Insert into  COMMENTS (C_MCODE,C_DCODE,COMMENTS,GRADE,CCODE,CPW) values (6,2,'�����ϳ׿� ��',5,6,'1234');
Insert into  COMMENTS (C_MCODE,C_DCODE,COMMENTS,GRADE,CCODE,CPW) values (6,3,'�׳� ����..',3,7,'1234');
Insert into  COMMENTS (C_MCODE,C_DCODE,COMMENTS,GRADE,CCODE,CPW) values (11,1,' ��̾����',1,8,null);
Insert into  COMMENTS (C_MCODE,C_DCODE,COMMENTS,GRADE,CCODE,CPW) values (8,1,'123',5,9,'123');
Insert into  COMMENTS (C_MCODE,C_DCODE,COMMENTS,GRADE,CCODE,CPW) values (8,1,'1234',5,10,'123');
Insert into  COMMENTS (C_MCODE,C_DCODE,COMMENTS,GRADE,CCODE,CPW) values (6,1,'��վ��',5,1,'1234');
Insert into  COMMENTS (C_MCODE,C_DCODE,COMMENTS,GRADE,CCODE,CPW) values (6,1,'���� ������ �������� ��¥ �̹���ŭ ���Ⱑ ���Ҵ����� �����',5,2,'1234');
--------------------------------------------------------
--  DDL for Index UK_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX "UK_ID" ON "MEMBERS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_MCODE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_MCODE" ON "MEMBERS" ("MCODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index UK_DNAME
--------------------------------------------------------

  CREATE UNIQUE INDEX "UK_DNAME" ON "DRAMA" ("DNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_DCODE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_DCODE" ON "DRAMA" ("DCODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_CCODE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CCODE" ON "COMMENTS" ("CCODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table MEMBERS
--------------------------------------------------------

  ALTER TABLE "MEMBERS" ADD CONSTRAINT "PK_MCODE" PRIMARY KEY ("MCODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MEMBERS" ADD CONSTRAINT "UK_ID" UNIQUE ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MEMBERS" MODIFY ("BIRTH" NOT NULL ENABLE);
  ALTER TABLE "MEMBERS" MODIFY ("PHONE" NOT NULL ENABLE);
  ALTER TABLE "MEMBERS" MODIFY ("PW" NOT NULL ENABLE);
  ALTER TABLE "MEMBERS" MODIFY ("NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DRAMA
--------------------------------------------------------

  ALTER TABLE "DRAMA" ADD CONSTRAINT "PK_DCODE" PRIMARY KEY ("DCODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "DRAMA" ADD CONSTRAINT "UK_DNAME" UNIQUE ("DNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "DRAMA" MODIFY ("SHOWDATE" NOT NULL ENABLE);
  ALTER TABLE "DRAMA" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "DRAMA" MODIFY ("AGE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TICKET
--------------------------------------------------------

  ALTER TABLE "TICKET" MODIFY ("TNUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "COMMENTS" ADD CONSTRAINT "PK_CCODE" PRIMARY KEY ("CCODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "COMMENTS" MODIFY ("GRADE" NOT NULL ENABLE);
  
  CREATE SYNONYM ME FOR MEMBERS;
  CREATE SYNONYM DR FOR DRAMA;
  CREATE SYNONYM TK FOR TICKET;
  CREATE SYNONYM CM FOR COMMENTS;