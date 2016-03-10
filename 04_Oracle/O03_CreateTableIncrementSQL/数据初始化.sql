
--����ű�������ʼ:" 2016-03-10 17:42:12
declare
v_cnt      int          :=0;
begin
      SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'C_PK';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add C_PK VARCHAR2(64)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.C_PK is ''����ID=ͳ������+��Ŀ����''';
     dbms_output.put_line('���C_PK(����ID=ͳ������+��Ŀ����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'D_DATE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add D_DATE DATE';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.D_DATE is ''ͳ������''';
     dbms_output.put_line('���D_DATE(ͳ������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'C_PROJCODE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add C_PROJCODE VARCHAR2(40)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.C_PROJCODE is ''��Ŀ����''';
     dbms_output.put_line('���C_PROJCODE(��Ŀ����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'C_PROJNAME';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add C_PROJNAME VARCHAR2(255)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.C_PROJNAME is ''��Ŀ���''';
     dbms_output.put_line('���C_PROJNAME(��Ŀ���)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'C_PROJFULLNAME';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add C_PROJFULLNAME VARCHAR2(255)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.C_PROJFULLNAME is ''��Ŀȫ��''';
     dbms_output.put_line('���C_PROJFULLNAME(��Ŀȫ��)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'D_BDATE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add D_BDATE DATE';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.D_BDATE is ''��������''';
     dbms_output.put_line('���D_BDATE(��������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'D_EDATE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add D_EDATE DATE';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.D_EDATE is ''��������''';
     dbms_output.put_line('���D_EDATE(��������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'L_PERIOD';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add L_PERIOD NUMBER(22)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.L_PERIOD is ''��Ŀ����: ��λ�£�=round( ((������-������)/365)*12,0 )''';
     dbms_output.put_line('���L_PERIOD(��Ŀ����: ��λ�£�=round( ((������-������)/365)*12,0 ))�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'L_EXISTDAYS';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add L_EXISTDAYS NUMBER(22)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.L_EXISTDAYS is ''������������λ��''';
     dbms_output.put_line('���L_EXISTDAYS(������������λ��)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'L_PROJKIND';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add L_PROJKIND NUMBER(22)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.L_PROJKIND is ''��Ŀ����: 1��һ�ʽ�/2�����ʽ�/3�Ʋ����Ʋ�Ȩ''';
     dbms_output.put_line('���L_PROJKIND(��Ŀ����: 1��һ�ʽ�/2�����ʽ�/3�Ʋ����Ʋ�Ȩ)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'L_FUNCTYPE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add L_FUNCTYPE NUMBER(22)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.L_FUNCTYPE is ''���ܷ���: 1������/2Ͷ����/3���������''';
     dbms_output.put_line('���L_FUNCTYPE(���ܷ���: 1������/2Ͷ����/3���������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'L_COOPTYPE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add L_COOPTYPE NUMBER(22)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.L_COOPTYPE is ''�������ͣ�1���ź���/2֤�ź���/3���ź���.��������/4��������/5˽ļ�������/6���ź���.˽ļ�������/9����''';
     dbms_output.put_line('���L_COOPTYPE(�������ͣ�1���ź���/2֤�ź���/3���ź���.��������/4��������/5˽ļ�������/6���ź���.˽ļ�������/9����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'L_INDUSTRY';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add L_INDUSTRY NUMBER(22)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.L_INDUSTRY is ''Ͷ����ҵ��1������ҵ/2���ز�/3֤ȯ/4���ڻ���/5������ҵ/9����''';
     dbms_output.put_line('���L_INDUSTRY(Ͷ����ҵ��1������ҵ/2���ز�/3֤ȯ/4���ڻ���/5������ҵ/9����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'C_RUNMODE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add C_RUNMODE VARCHAR2(8)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.C_RUNMODE is ''���з�ʽ: 0���/1����''';
     dbms_output.put_line('���C_RUNMODE(���з�ʽ: 0���/1����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'C_MANAGETYPE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add C_MANAGETYPE VARCHAR2(8)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.C_MANAGETYPE is ''�������η���: 0����/1����''';
     dbms_output.put_line('���C_MANAGETYPE(�������η���: 0����/1����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'C_INDUSTRYDTL1';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add C_INDUSTRYDTL1 VARCHAR2(100)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.C_INDUSTRYDTL1 is ''��ҵ��ϸ1''';
     dbms_output.put_line('���C_INDUSTRYDTL1(��ҵ��ϸ1)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'C_INDUSTRYDTL2_NAME';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add C_INDUSTRYDTL2_NAME VARCHAR2(100)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.C_INDUSTRYDTL2_NAME is ''��ҵ��ϸ2����''';
     dbms_output.put_line('���C_INDUSTRYDTL2_NAME(��ҵ��ϸ2����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'C_INDUSTRYDTL2_B';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add C_INDUSTRYDTL2_B VARCHAR2(100)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.C_INDUSTRYDTL2_B is ''��ҵ��ϸ2_B''';
     dbms_output.put_line('���C_INDUSTRYDTL2_B(��ҵ��ϸ2_B)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'C_USEOFAREA';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add C_USEOFAREA VARCHAR2(32)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.C_USEOFAREA is ''�ʽ�Ͷ���������''';
     dbms_output.put_line('���C_USEOFAREA(�ʽ�Ͷ���������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'C_USEOFAREA_NAME';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add C_USEOFAREA_NAME VARCHAR2(60)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.C_USEOFAREA_NAME is ''�ʽ�Ͷ���������''';
     dbms_output.put_line('���C_USEOFAREA_NAME(�ʽ�Ͷ���������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'C_ISQDII';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add C_ISQDII VARCHAR2(8)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.C_ISQDII is ''�Ƿ�QDII''';
     dbms_output.put_line('���C_ISQDII(�Ƿ�QDII)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'C_ISPWFT';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add C_ISPWFT VARCHAR2(8)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.C_ISPWFT is ''�Ƿ�������''';
     dbms_output.put_line('���C_ISPWFT(�Ƿ�������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'C_ISANNUITY';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add C_ISANNUITY VARCHAR2(8)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.C_ISANNUITY is ''�Ƿ��������''';
     dbms_output.put_line('���C_ISANNUITY(�Ƿ��������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'C_ISABS';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add C_ISABS VARCHAR2(8)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.C_ISABS is ''�Ƿ��ʲ�֤ȯ��''';
     dbms_output.put_line('���C_ISABS(�Ƿ��ʲ�֤ȯ��)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'F_EXPYIELDRATE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add F_EXPYIELDRATE NUMBER(22,6)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.F_EXPYIELDRATE is ''Ԥ��������''';
     dbms_output.put_line('���F_EXPYIELDRATE(Ԥ��������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'C_TRUSTREWARDTYPE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add C_TRUSTREWARDTYPE VARCHAR2(2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.C_TRUSTREWARDTYPE is ''���б�����᷽ʽ[0-�̶�/1-����/2-�̶�+����]''';
     dbms_output.put_line('���C_TRUSTREWARDTYPE(���б�����᷽ʽ[0-�̶�/1-����/2-�̶�+����])�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'F_TRUSTPAYRATE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add F_TRUSTPAYRATE NUMBER(22,6)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.F_TRUSTPAYRATE is ''���б�����''';
     dbms_output.put_line('���F_TRUSTPAYRATE(���б�����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'C_RISKMEASURE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add C_RISKMEASURE VARCHAR2(100)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.C_RISKMEASURE is ''���ջ��ʹ�ʩ����''';
     dbms_output.put_line('���C_RISKMEASURE(���ջ��ʹ�ʩ����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'C_RISKMEASURE_NAME';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add C_RISKMEASURE_NAME VARCHAR2(1000)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.C_RISKMEASURE_NAME is ''���ջ��ʹ�ʩ����''';
     dbms_output.put_line('���C_RISKMEASURE_NAME(���ջ��ʹ�ʩ����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'C_TMANAGER';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add C_TMANAGER VARCHAR2(32)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.C_TMANAGER is ''��Ŀ����''';
     dbms_output.put_line('���C_TMANAGER(��Ŀ����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'C_CMANAGER';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add C_CMANAGER VARCHAR2(32)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.C_CMANAGER is ''��Ŀ�߹�''';
     dbms_output.put_line('���C_CMANAGER(��Ŀ�߹�)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'C_OWERSIGHT';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add C_OWERSIGHT VARCHAR2(32)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.C_OWERSIGHT is ''���������''';
     dbms_output.put_line('���C_OWERSIGHT(���������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'C_ASNUMBER';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add C_ASNUMBER VARCHAR2(20)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.C_ASNUMBER is ''���׺�''';
     dbms_output.put_line('���C_ASNUMBER(���׺�)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'C_DEPTNAME';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add C_DEPTNAME VARCHAR2(32)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.C_DEPTNAME is ''��������''';
     dbms_output.put_line('���C_DEPTNAME(��������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'D_COLLTIME';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add D_COLLTIME DATE';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.D_COLLTIME is ''�ɼ�ʱ��''';
     dbms_output.put_line('���D_COLLTIME(�ɼ�ʱ��)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'C_COLLMAN';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add C_COLLMAN VARCHAR2(20)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.C_COLLMAN is ''�ɼ���''';
     dbms_output.put_line('���C_COLLMAN(�ɼ���)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'L_CHECKFLAG';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add L_CHECKFLAG NUMBER(22)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.L_CHECKFLAG is ''��˱�־[TOTAL_FACTOR_CHECK]��0δ���/1�����/2�˲鲻ͨ��/3�Ѻ˲�''';
     dbms_output.put_line('���L_CHECKFLAG(��˱�־[TOTAL_FACTOR_CHECK]��0δ���/1�����/2�˲鲻ͨ��/3�Ѻ˲�)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'D_CHECKDATE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add D_CHECKDATE DATE';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.D_CHECKDATE is ''�������''';
     dbms_output.put_line('���D_CHECKDATE(�������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'C_CHECKMAN';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add C_CHECKMAN VARCHAR2(20)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.C_CHECKMAN is ''�����''';
     dbms_output.put_line('���C_CHECKMAN(�����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'C_REMARK';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add C_REMARK VARCHAR2(255)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.C_REMARK is ''��ע''';
     dbms_output.put_line('���C_REMARK(��ע)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_TCMP' AND COLUMN_NAME = 'C_CHECKINFO';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_TCMP add C_CHECKINFO VARCHAR2(4000)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_TCMP.C_CHECKINFO is ''�˲���Ϣ''';
     dbms_output.put_line('���C_CHECKINFO(�˲���Ϣ)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'C_PK';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add C_PK VARCHAR2(64)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.C_PK is ''����ID=ͳ������+��Ŀ����''';
     dbms_output.put_line('���C_PK(����ID=ͳ������+��Ŀ����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'D_DATE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add D_DATE DATE';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.D_DATE is ''ͳ������''';
     dbms_output.put_line('���D_DATE(ͳ������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'C_PROJCODE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add C_PROJCODE VARCHAR2(40)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.C_PROJCODE is ''��Ŀ����''';
     dbms_output.put_line('���C_PROJCODE(��Ŀ����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'F_SSXT_TA';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add F_SSXT_TA NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.F_SSXT_TA is ''ʵ������TA''';
     dbms_output.put_line('���F_SSXT_TA(ʵ������TA)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'F_FS_BANKBS';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add F_FS_BANKBS NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.F_FS_BANKBS is ''�ʽ���Դ_���б����ʽ�''';
     dbms_output.put_line('���F_FS_BANKBS(�ʽ���Դ_���б����ʽ�)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'F_FS_BANKFC';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add F_FS_BANKFC NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.F_FS_BANKFC is ''�ʽ���Դ_��������ʽ�''';
     dbms_output.put_line('���F_FS_BANKFC(�ʽ���Դ_��������ʽ�)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'F_FS_BANKARO';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add F_FS_BANKARO NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.F_FS_BANKARO is ''�ʽ���Դ_���д�������''';
     dbms_output.put_line('���F_FS_BANKARO(�ʽ���Դ_���д�������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'F_FS_BANKARN';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add F_FS_BANKARN NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.F_FS_BANKARN is ''�ʽ���Դ_���д�����Ȼ��''';
     dbms_output.put_line('���F_FS_BANKARN(�ʽ���Դ_���д�����Ȼ��)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'F_FS_STOCKBS';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add F_FS_STOCKBS NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.F_FS_STOCKBS is ''�ʽ���Դ_֤ȯ�����ʽ�''';
     dbms_output.put_line('���F_FS_STOCKBS(�ʽ���Դ_֤ȯ�����ʽ�)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'F_FS_STOCKFC';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add F_FS_STOCKFC NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.F_FS_STOCKFC is ''�ʽ���Դ_֤ȯ����ʽ�''';
     dbms_output.put_line('���F_FS_STOCKFC(�ʽ���Դ_֤ȯ����ʽ�)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'F_FS_STOCKAR';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add F_FS_STOCKAR NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.F_FS_STOCKAR is ''�ʽ���Դ_֤ȯ�����Ƽ�''';
     dbms_output.put_line('���F_FS_STOCKAR(�ʽ���Դ_֤ȯ�����Ƽ�)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'F_FS_FUNDBS';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add F_FS_FUNDBS NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.F_FS_FUNDBS is ''�ʽ���Դ_��������ʽ�''';
     dbms_output.put_line('���F_FS_FUNDBS(�ʽ���Դ_��������ʽ�)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'F_FS_FUNDFC';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add F_FS_FUNDFC NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.F_FS_FUNDFC is ''�ʽ���Դ_��������ʽ�''';
     dbms_output.put_line('���F_FS_FUNDFC(�ʽ���Դ_��������ʽ�)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'F_FS_FUNDAR';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add F_FS_FUNDAR NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.F_FS_FUNDAR is ''�ʽ���Դ_��������Ƽ�''';
     dbms_output.put_line('���F_FS_FUNDAR(�ʽ���Դ_��������Ƽ�)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'F_FS_INSUREBS';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add F_FS_INSUREBS NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.F_FS_INSUREBS is ''�ʽ���Դ_���ձ����ʽ�''';
     dbms_output.put_line('���F_FS_INSUREBS(�ʽ���Դ_���ձ����ʽ�)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'F_FS_INSUREFC';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add F_FS_INSUREFC NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.F_FS_INSUREFC is ''�ʽ���Դ_��������ʽ�''';
     dbms_output.put_line('���F_FS_INSUREFC(�ʽ���Դ_��������ʽ�)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'F_FS_INSUREAR';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add F_FS_INSUREAR NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.F_FS_INSUREAR is ''�ʽ���Դ_���մ����Ƽ�''';
     dbms_output.put_line('���F_FS_INSUREAR(�ʽ���Դ_���մ����Ƽ�)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'F_FS_OFIBS';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add F_FS_OFIBS NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.F_FS_OFIBS is ''�ʽ���Դ_�������ڱ����ʽ�''';
     dbms_output.put_line('���F_FS_OFIBS(�ʽ���Դ_�������ڱ����ʽ�)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'F_FS_OFIFC';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add F_FS_OFIFC NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.F_FS_OFIFC is ''�ʽ���Դ_������������ʽ�''';
     dbms_output.put_line('���F_FS_OFIFC(�ʽ���Դ_������������ʽ�)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'F_FS_OFIAR';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add F_FS_OFIAR NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.F_FS_OFIAR is ''�ʽ���Դ_�������ڴ����Ƽ�''';
     dbms_output.put_line('���F_FS_OFIAR(�ʽ���Դ_�������ڴ����Ƽ�)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'F_FS_NOFIOC';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add F_FS_NOFIOC NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.F_FS_NOFIOC is ''�ʽ���Դ_�ǽ��ڻ���''';
     dbms_output.put_line('���F_FS_NOFIOC(�ʽ���Դ_�ǽ��ڻ���)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'F_FS_NOFINC';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add F_FS_NOFINC NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.F_FS_NOFINC is ''�ʽ���Դ_�ǽ�����Ȼ��''';
     dbms_output.put_line('���F_FS_NOFINC(�ʽ���Դ_�ǽ�����Ȼ��)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'F_FS_SELFMKOC';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add F_FS_SELFMKOC NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.F_FS_SELFMKOC is ''�ʽ���Դ_����Ӫ������''';
     dbms_output.put_line('���F_FS_SELFMKOC(�ʽ���Դ_����Ӫ������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'F_FS_SELFMKNC';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add F_FS_SELFMKNC NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.F_FS_SELFMKNC is ''�ʽ���Դ_����Ӫ����Ȼ��''';
     dbms_output.put_line('���F_FS_SELFMKNC(�ʽ���Դ_����Ӫ����Ȼ��)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'F_PS_BANKAR';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add F_PS_BANKAR NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.F_PS_BANKAR is ''��Ŀ��Դ_�����Ƽ�''';
     dbms_output.put_line('���F_PS_BANKAR(��Ŀ��Դ_�����Ƽ�)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'F_PS_OFIAR';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add F_PS_OFIAR NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.F_PS_OFIAR is ''��Ŀ��Դ_���������Ƽ�''';
     dbms_output.put_line('���F_PS_OFIAR(��Ŀ��Դ_���������Ƽ�)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'F_PS_SELFMK';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add F_PS_SELFMK NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.F_PS_SELFMK is ''��Ŀ��Դ_��������''';
     dbms_output.put_line('���F_PS_SELFMK(��Ŀ��Դ_��������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'F_PS_OTHER';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add F_PS_OTHER NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.F_PS_OTHER is ''��Ŀ��Դ_����''';
     dbms_output.put_line('���F_PS_OTHER(��Ŀ��Դ_����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'L_SECBENF_NPQ';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add L_SECBENF_NPQ NUMBER(22)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.L_SECBENF_NPQ is ''�Ӻ�������_��Ȼ�˸���''';
     dbms_output.put_line('���L_SECBENF_NPQ(�Ӻ�������_��Ȼ�˸���)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'F_SECBENF_NPM';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add F_SECBENF_NPM NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.F_SECBENF_NPM is ''�Ӻ�������_��Ȼ�˽��''';
     dbms_output.put_line('���F_SECBENF_NPM(�Ӻ�������_��Ȼ�˽��)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'L_SECBENF_FIQ';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add L_SECBENF_FIQ NUMBER(22)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.L_SECBENF_FIQ is ''�Ӻ�������_���ڻ�������''';
     dbms_output.put_line('���L_SECBENF_FIQ(�Ӻ�������_���ڻ�������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'F_SECBENF_FIM';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add F_SECBENF_FIM NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.F_SECBENF_FIM is ''�Ӻ�������_���ڻ������''';
     dbms_output.put_line('���F_SECBENF_FIM(�Ӻ�������_���ڻ������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'L_SECBENF_OIQ';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add L_SECBENF_OIQ NUMBER(22)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.L_SECBENF_OIQ is ''�Ӻ�������_��ͨ��������''';
     dbms_output.put_line('���L_SECBENF_OIQ(�Ӻ�������_��ͨ��������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'F_SECBENF_OIM';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add F_SECBENF_OIM NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.F_SECBENF_OIM is ''�Ӻ�������_��ͨ�������''';
     dbms_output.put_line('���F_SECBENF_OIM(�Ӻ�������_��ͨ�������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'D_COLLTIME';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add D_COLLTIME DATE';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.D_COLLTIME is ''�ɼ�ʱ��''';
     dbms_output.put_line('���D_COLLTIME(�ɼ�ʱ��)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'C_COLLMAN';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add C_COLLMAN VARCHAR2(20)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.C_COLLMAN is ''�ɼ���''';
     dbms_output.put_line('���C_COLLMAN(�ɼ���)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'L_CHECKFLAG';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add L_CHECKFLAG NUMBER(22)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.L_CHECKFLAG is ''��˱�־��0δ���/1�����/2�����''';
     dbms_output.put_line('���L_CHECKFLAG(��˱�־��0δ���/1�����/2�����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'D_CHECKDATE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add D_CHECKDATE DATE';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.D_CHECKDATE is ''�������''';
     dbms_output.put_line('���D_CHECKDATE(�������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'C_CHECKMAN';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add C_CHECKMAN VARCHAR2(20)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.C_CHECKMAN is ''�����''';
     dbms_output.put_line('���C_CHECKMAN(�����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'C_REMARK';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add C_REMARK VARCHAR2(255)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.C_REMARK is ''��ע''';
     dbms_output.put_line('���C_REMARK(��ע)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSTA' AND COLUMN_NAME = 'C_SUBPROJCODE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSTA add C_SUBPROJCODE VARCHAR2(40)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSTA.C_SUBPROJCODE is ''����Ŀ����''';
     dbms_output.put_line('���C_SUBPROJCODE(����Ŀ����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'C_PK';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add C_PK VARCHAR2(64)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.C_PK is ''����ID=ͳ������+��Ŀ����''';
     dbms_output.put_line('���C_PK(����ID=ͳ������+��Ŀ����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'D_DATE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add D_DATE DATE';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.D_DATE is ''ͳ������''';
     dbms_output.put_line('���D_DATE(ͳ������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'C_PROJCODE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add C_PROJCODE VARCHAR2(40)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.C_PROJCODE is ''��Ŀ����''';
     dbms_output.put_line('���C_PROJCODE(��Ŀ����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'L_RIVALID';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add L_RIVALID NUMBER(22)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.L_RIVALID is ''����ID''';
     dbms_output.put_line('���L_RIVALID(����ID)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'C_RIVALNAME';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add C_RIVALNAME VARCHAR2(100)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.C_RIVALNAME is ''��������''';
     dbms_output.put_line('���C_RIVALNAME(��������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'L_RIVALTYPE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add L_RIVALTYPE NUMBER(22)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.L_RIVALTYPE is ''�������1����/2������''';
     dbms_output.put_line('���L_RIVALTYPE(�������1����/2������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'C_AREA';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add C_AREA VARCHAR2(16)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.C_AREA is ''�����������''';
     dbms_output.put_line('���C_AREA(�����������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'C_AREANAME';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add C_AREANAME VARCHAR2(60)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.C_AREANAME is ''������������''';
     dbms_output.put_line('���C_AREANAME(������������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'C_LISTEDTYPE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add C_LISTEDTYPE VARCHAR2(16)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.C_LISTEDTYPE is ''���б�־��0-�����С�1-�������С�2-�������С�3-������''';
     dbms_output.put_line('���C_LISTEDTYPE(���б�־��0-�����С�1-�������С�2-�������С�3-������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'C_PLATFORMTYPE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add C_PLATFORMTYPE VARCHAR2(16)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.C_PLATFORMTYPE is ''ƽ̨��־��0-��ƽ̨��1-��������ƽ̨��2-������ƽ̨��3-δ������ƽ̨��''';
     dbms_output.put_line('���C_PLATFORMTYPE(ƽ̨��־��0-��ƽ̨��1-��������ƽ̨��2-������ƽ̨��3-δ������ƽ̨��)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'C_GOVNAME';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add C_GOVNAME VARCHAR2(64)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.C_GOVNAME is ''������������''';
     dbms_output.put_line('���C_GOVNAME(������������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'C_GOVLEVLE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add C_GOVLEVLE VARCHAR2(16)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.C_GOVLEVLE is ''������������''';
     dbms_output.put_line('���C_GOVLEVLE(������������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'C_ISGOVHOLDING';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add C_ISGOVHOLDING VARCHAR2(8)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.C_ISGOVHOLDING is ''�Ƿ������عɡ�0-�ǣ�1-��''';
     dbms_output.put_line('���C_ISGOVHOLDING(�Ƿ������عɡ�0-�ǣ�1-��)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'C_ENTSCALETYPE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add C_ENTSCALETYPE VARCHAR2(32)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.C_ENTSCALETYPE is ''��ҵ��ģ���͡�0-������ҵ��1-������ҵ��2-С����ҵ��3-΢����ҵ��''';
     dbms_output.put_line('���C_ENTSCALETYPE(��ҵ��ģ���͡�0-������ҵ��1-������ҵ��2-С����ҵ��3-΢����ҵ��)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'C_INDUSTRYDTL1';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add C_INDUSTRYDTL1 VARCHAR2(100)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.C_INDUSTRYDTL1 is ''������ҵ��A-ũ���֡�������ҵ��B-�ɾ�ҵ��C-����ҵ��D-������ȼ����ˮ�������͹�Ӧҵ��E-����ҵ��F-��ͨ���䡢�ִ�������ҵ��G-��Ϣ���䡢�������������ҵ��H-����������ҵ��I-ס�޺Ͳ���ҵ��J-����ҵ��K-���ز�ҵ��L-���޺��������ҵ��M-��ѧ�о�����������ҵ�͵��ʿ���ҵ��N-ˮ���������͹�����ʩ����ҵ��O-����������������ҵ��P-������Q-��������ᱣ�Ϻ���ḣ��ҵ��R-�Ļ�������������ҵ��S-��������������֯��T-������֯��Z-δ֪��''';
     dbms_output.put_line('���C_INDUSTRYDTL1(������ҵ��A-ũ���֡�������ҵ��B-�ɾ�ҵ��C-����ҵ��D-������ȼ����ˮ�������͹�Ӧҵ��E-����ҵ��F-��ͨ���䡢�ִ�������ҵ��G-��Ϣ���䡢�������������ҵ��H-����������ҵ��I-ס�޺Ͳ���ҵ��J-����ҵ��K-���ز�ҵ��L-���޺��������ҵ��M-��ѧ�о�����������ҵ�͵��ʿ���ҵ��N-ˮ���������͹�����ʩ����ҵ��O-����������������ҵ��P-������Q-��������ᱣ�Ϻ���ḣ��ҵ��R-�Ļ�������������ҵ��S-��������������֯��T-������֯��Z-δ֪��)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_PACTBAL';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_PACTBAL NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_PACTBAL is ''��ͬ���ɱ���''';
     dbms_output.put_line('���F_PACTBAL(��ͬ���ɱ���)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_CFCOSTS';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_CFCOSTS NUMBER(22,6)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_CFCOSTS is ''���ʳɱ����껯��''';
     dbms_output.put_line('���F_CFCOSTS(���ʳɱ����껯��)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_COLLRATE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_COLLRATE NUMBER(22,6)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_COLLRATE is ''����Ѻ��''';
     dbms_output.put_line('���F_COLLRATE(����Ѻ��)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'L_INSEQ';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add L_INSEQ NUMBER(22)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.L_INSEQ is ''�ڲ����''';
     dbms_output.put_line('���L_INSEQ(�ڲ����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_WEIGHT';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_WEIGHT NUMBER(22,6)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_WEIGHT is ''Ȩ��''';
     dbms_output.put_line('���F_WEIGHT(Ȩ��)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_XMQK_XZ_PTQYRZ';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_XMQK_XZ_PTQYRZ NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_XMQK_XZ_PTQYRZ is ''��Ŀ���_������_һ�㹫˾����ҵ����''';
     dbms_output.put_line('���F_XMQK_XZ_PTQYRZ(��Ŀ���_������_һ�㹫˾����ҵ����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_XMQK_XZ_JTJCSS';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_XMQK_XZ_JTJCSS NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_XMQK_XZ_JTJCSS is ''��Ŀ���_������_��ͨ������ʩ''';
     dbms_output.put_line('���F_XMQK_XZ_JTJCSS(��Ŀ���_������_��ͨ������ʩ)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_XMQK_XZ_SZJCSS';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_XMQK_XZ_SZJCSS NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_XMQK_XZ_SZJCSS is ''��Ŀ���_������_����������ʩ''';
     dbms_output.put_line('���F_XMQK_XZ_SZJCSS(��Ŀ���_������_����������ʩ)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_XMQK_XZ_SLJNCJCSS';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_XMQK_XZ_SLJNCJCSS NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_XMQK_XZ_SLJNCJCSS is ''��Ŀ���_������_ˮ����ũ�������ʩ''';
     dbms_output.put_line('���F_XMQK_XZ_SLJNCJCSS(��Ŀ���_������_ˮ����ũ�������ʩ)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_XMQK_XZ_HJBFSS';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_XMQK_XZ_HJBFSS NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_XMQK_XZ_HJBFSS is ''��Ŀ���_������_����������ʩ''';
     dbms_output.put_line('���F_XMQK_XZ_HJBFSS(��Ŀ���_������_����������ʩ)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_XMQK_XZ_SHSY';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_XMQK_XZ_SHSY NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_XMQK_XZ_SHSY is ''��Ŀ���_������_�����ҵ''';
     dbms_output.put_line('���F_XMQK_XZ_SHSY(��Ŀ���_������_�����ҵ)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_XMQK_XZ_YQ';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_XMQK_XZ_YQ NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_XMQK_XZ_YQ is ''��Ŀ���_������_԰��''';
     dbms_output.put_line('���F_XMQK_XZ_YQ(��Ŀ���_������_԰��)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_XMQK_XZ_TDCBZX';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_XMQK_XZ_TDCBZX NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_XMQK_XZ_TDCBZX is ''��Ŀ���_������_���ش�������''';
     dbms_output.put_line('���F_XMQK_XZ_TDCBZX(��Ŀ���_������_���ش�������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_XMQK_XZ_BZXAJGC';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_XMQK_XZ_BZXAJGC NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_XMQK_XZ_BZXAJGC is ''��Ŀ���_������_�����԰��ӹ���''';
     dbms_output.put_line('���F_XMQK_XZ_BZXAJGC(��Ŀ���_������_�����԰��ӹ���)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_XMQK_XZ_QT';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_XMQK_XZ_QT NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_XMQK_XZ_QT is ''��Ŀ���_������_����''';
     dbms_output.put_line('���F_XMQK_XZ_QT(��Ŀ���_������_����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_XMQK_FXZFDC_ZZ';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_XMQK_FXZFDC_ZZ NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_XMQK_FXZFDC_ZZ is ''��Ŀ���_�������෿�ز�_סլ''';
     dbms_output.put_line('���F_XMQK_FXZFDC_ZZ(��Ŀ���_�������෿�ز�_סլ)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_XMQK_FXZFDC_SY';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_XMQK_FXZFDC_SY NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_XMQK_FXZFDC_SY is ''��Ŀ���_�������෿�ز�_����''';
     dbms_output.put_line('���F_XMQK_FXZFDC_SY(��Ŀ���_�������෿�ز�_����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_XMQK_FXZFDC_JSF';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_XMQK_FXZFDC_JSF NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_XMQK_FXZFDC_JSF is ''��Ŀ���_�������෿�ز�_���ʷ�''';
     dbms_output.put_line('���F_XMQK_FXZFDC_JSF(��Ŀ���_�������෿�ز�_���ʷ�)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_XMQK_FXZFDC_TDCB';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_XMQK_FXZFDC_TDCB NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_XMQK_FXZFDC_TDCB is ''��Ŀ���_�������෿�ز�_���ش���''';
     dbms_output.put_line('���F_XMQK_FXZFDC_TDCB(��Ŀ���_�������෿�ز�_���ش���)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_XMQK_FXZFDC_QT';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_XMQK_FXZFDC_QT NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_XMQK_FXZFDC_QT is ''��Ŀ���_�������෿�ز�_����''';
     dbms_output.put_line('���F_XMQK_FXZFDC_QT(��Ŀ���_�������෿�ز�_����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_XMQK_KCNY';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_XMQK_KCNY NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_XMQK_KCNY is ''��Ŀ���_�����Դ''';
     dbms_output.put_line('���F_XMQK_KCNY(��Ŀ���_�����Դ)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_XMQK_QT';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_XMQK_QT NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_XMQK_QT is ''��Ŀ���_����''';
     dbms_output.put_line('���F_XMQK_QT(��Ŀ���_����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_YJHKLY_JYXXJL';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_YJHKLY_JYXXJL NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_YJHKLY_JYXXJL is ''Ԥ�ƻ�����Դ_��Ӫ���ֽ���''';
     dbms_output.put_line('���F_YJHKLY_JYXXJL(Ԥ�ƻ�����Դ_��Ӫ���ֽ���)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_YJHKLY_FDCXMXSSR';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_YJHKLY_FDCXMXSSR NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_YJHKLY_FDCXMXSSR is ''Ԥ�ƻ�����Դ_���ز���Ŀ��������''';
     dbms_output.put_line('���F_YJHKLY_FDCXMXSSR(Ԥ�ƻ�����Դ_���ز���Ŀ��������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_YJHKLY_XTZCZRHCSBX';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_YJHKLY_XTZCZRHCSBX NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_YJHKLY_XTZCZRHCSBX is ''Ԥ�ƻ�����Դ_�����ʲ�ת�û���۱���''';
     dbms_output.put_line('���F_YJHKLY_XTZCZRHCSBX(Ԥ�ƻ�����Դ_�����ʲ�ת�û���۱���)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_YJHKLY_TDCRSR';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_YJHKLY_TDCRSR NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_YJHKLY_TDCRSR is ''Ԥ�ƻ�����Դ_���س�������''';
     dbms_output.put_line('���F_YJHKLY_TDCRSR(Ԥ�ƻ�����Դ_���س�������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_YJHKLY_ZXFYFH';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_YJHKLY_ZXFYFH NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_YJHKLY_ZXFYFH is ''Ԥ�ƻ�����Դ_ר����÷���''';
     dbms_output.put_line('���F_YJHKLY_ZXFYFH(Ԥ�ƻ�����Դ_ר����÷���)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_YJHKLY_ZXSSFH';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_YJHKLY_ZXSSFH NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_YJHKLY_ZXSSFH is ''Ԥ�ƻ�����Դ_ר��˰�շ���''';
     dbms_output.put_line('���F_YJHKLY_ZXSSFH(Ԥ�ƻ�����Դ_ר��˰�շ���)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_YJHKLY_BOT';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_YJHKLY_BOT NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_YJHKLY_BOT is ''Ԥ�ƻ�����Դ_BOT����������''';
     dbms_output.put_line('���F_YJHKLY_BOT(Ԥ�ƻ�����Դ_BOT����������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_YJHKLY_CZDD';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_YJHKLY_CZDD NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_YJHKLY_CZDD is ''Ԥ�ƻ�����Դ_��������''';
     dbms_output.put_line('���F_YJHKLY_CZDD(Ԥ�ƻ�����Դ_��������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'F_YJHKLY_QT';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add F_YJHKLY_QT NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.F_YJHKLY_QT is ''Ԥ�ƻ�����Դ_����''';
     dbms_output.put_line('���F_YJHKLY_QT(Ԥ�ƻ�����Դ_����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'D_COLLTIME';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add D_COLLTIME DATE';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.D_COLLTIME is ''�ɼ�ʱ��''';
     dbms_output.put_line('���D_COLLTIME(�ɼ�ʱ��)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'C_COLLMAN';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add C_COLLMAN VARCHAR2(20)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.C_COLLMAN is ''�ɼ���''';
     dbms_output.put_line('���C_COLLMAN(�ɼ���)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'L_CHECKFLAG';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add L_CHECKFLAG NUMBER(22)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.L_CHECKFLAG is ''��˱�־��0δ���/1�����/2�����''';
     dbms_output.put_line('���L_CHECKFLAG(��˱�־��0δ���/1�����/2�����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'D_CHECKDATE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add D_CHECKDATE DATE';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.D_CHECKDATE is ''�������''';
     dbms_output.put_line('���D_CHECKDATE(�������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'C_CHECKMAN';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add C_CHECKMAN VARCHAR2(20)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.C_CHECKMAN is ''�����''';
     dbms_output.put_line('���C_CHECKMAN(�����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'C_REMARK';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add C_REMARK VARCHAR2(255)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.C_REMARK is ''��ע''';
     dbms_output.put_line('���C_REMARK(��ע)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'C_CHECKINFO';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add C_CHECKINFO VARCHAR2(4000)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.C_CHECKINFO is ''�˲���Ϣ''';
     dbms_output.put_line('���C_CHECKINFO(�˲���Ϣ)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'C_SUBPROJCODE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add C_SUBPROJCODE VARCHAR2(40)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.C_SUBPROJCODE is ''����Ŀ����''';
     dbms_output.put_line('���C_SUBPROJCODE(����Ŀ����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'C_PROVINCENAME';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add C_PROVINCENAME VARCHAR2(60)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.C_PROVINCENAME is ''����ʡ��''';
     dbms_output.put_line('���C_PROVINCENAME(����ʡ��)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'C_INDUSTRYDTL';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add C_INDUSTRYDTL VARCHAR2(100)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.C_INDUSTRYDTL is ''Ͷ����ҵ��ϸ��AM.2012�桿''';
     dbms_output.put_line('���C_INDUSTRYDTL(Ͷ����ҵ��ϸ��AM.2012�桿)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'C_RISKMEASURE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add C_RISKMEASURE VARCHAR2(100)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.C_RISKMEASURE is ''���ջ��ʹ�ʩ����''';
     dbms_output.put_line('���C_RISKMEASURE(���ջ��ʹ�ʩ����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSAM' AND COLUMN_NAME = 'C_RISKMEASURE_NAME';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSAM add C_RISKMEASURE_NAME VARCHAR2(1000)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSAM.C_RISKMEASURE_NAME is ''���ջ��ʹ�ʩ����''';
     dbms_output.put_line('���C_RISKMEASURE_NAME(���ջ��ʹ�ʩ����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'C_PK';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add C_PK VARCHAR2(64)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.C_PK is ''����ID=ͳ������+��Ŀ����''';
     dbms_output.put_line('���C_PK(����ID=ͳ������+��Ŀ����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'D_DATE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add D_DATE DATE';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.D_DATE is ''ͳ������''';
     dbms_output.put_line('���D_DATE(ͳ������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'D_INITDATE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add D_INITDATE DATE';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.D_INITDATE is ''��ʼ���ա���ֵƾ֤�ĳ�ʼ�����ڡ�''';
     dbms_output.put_line('���D_INITDATE(��ʼ���ա���ֵƾ֤�ĳ�ʼ�����ڡ�)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'C_PROJCODE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add C_PROJCODE VARCHAR2(40)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.C_PROJCODE is ''��Ŀ����''';
     dbms_output.put_line('���C_PROJCODE(��Ŀ����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'F_SSXT_FA';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add F_SSXT_FA NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.F_SSXT_FA is ''ʵ������FA''';
     dbms_output.put_line('���F_SSXT_FA(ʵ������FA)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'F_ZCYE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add F_ZCYE NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.F_ZCYE is ''�ʲ��ϼơ���''';
     dbms_output.put_line('���F_ZCYE(�ʲ��ϼơ���)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'F_YYFS_DK';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add F_YYFS_DK NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.F_YYFS_DK is ''�ʽ����÷�ʽ_����''';
     dbms_output.put_line('���F_YYFS_DK(�ʽ����÷�ʽ_����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'F_YYFS_JYX';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add F_YYFS_JYX NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.F_YYFS_JYX is ''�ʽ����÷�ʽ_������''';
     dbms_output.put_line('���F_YYFS_JYX(�ʽ����÷�ʽ_������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'F_YYFS_KGCSCYDQ';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add F_YYFS_KGCSCYDQ NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.F_YYFS_KGCSCYDQ is ''�ʽ����÷�ʽ_�ɹ����ۼ����е���''';
     dbms_output.put_line('���F_YYFS_KGCSCYDQ(�ʽ����÷�ʽ_�ɹ����ۼ����е���)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'F_YYFS_CQGQTZ';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add F_YYFS_CQGQTZ NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.F_YYFS_CQGQTZ is ''�ʽ����÷�ʽ_��ȨͶ��''';
     dbms_output.put_line('���F_YYFS_CQGQTZ(�ʽ����÷�ʽ_��ȨͶ��)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'F_YYFS_RZZL';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add F_YYFS_RZZL NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.F_YYFS_RZZL is ''�ʽ����÷�ʽ_����''';
     dbms_output.put_line('���F_YYFS_RZZL(�ʽ����÷�ʽ_����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'F_YYFS_MRFS';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add F_YYFS_MRFS NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.F_YYFS_MRFS is ''�ʽ����÷�ʽ_���뷵��''';
     dbms_output.put_line('���F_YYFS_MRFS(�ʽ����÷�ʽ_���뷵��)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'F_YYFS_CFTY';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add F_YYFS_CFTY NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.F_YYFS_CFTY is ''�ʽ����÷�ʽ_���ͬҵ''';
     dbms_output.put_line('���F_YYFS_CFTY(�ʽ����÷�ʽ_���ͬҵ)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'F_YYFS_QT';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add F_YYFS_QT NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.F_YYFS_QT is ''�ʽ����÷�ʽ_����''';
     dbms_output.put_line('���F_YYFS_QT(�ʽ����÷�ʽ_����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'F_TRUSTPAY';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add F_TRUSTPAY NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.F_TRUSTPAY is ''���б���''';
     dbms_output.put_line('���F_TRUSTPAY(���б���)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'F_OTHERFEE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add F_OTHERFEE NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.F_OTHERFEE is ''��������''';
     dbms_output.put_line('���F_OTHERFEE(��������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'L_BDATE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add L_BDATE NUMBER(22)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.L_BDATE is ''��������''';
     dbms_output.put_line('���L_BDATE(��������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'L_EDATE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add L_EDATE NUMBER(22)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.L_EDATE is ''��������''';
     dbms_output.put_line('���L_EDATE(��������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'L_EXISTDAYS';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add L_EXISTDAYS NUMBER(22)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.L_EXISTDAYS is ''��������''';
     dbms_output.put_line('���L_EXISTDAYS(��������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'L_BIEXISTDAYS';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add L_BIEXISTDAYS NUMBER(22)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.L_BIEXISTDAYS is ''��ʼ��ǰ����''';
     dbms_output.put_line('���L_BIEXISTDAYS(��ʼ��ǰ����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'F_DAYAVGSCALE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add F_DAYAVGSCALE NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.F_DAYAVGSCALE is ''�վ���ģ''';
     dbms_output.put_line('���F_DAYAVGSCALE(�վ���ģ)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'F_OTHERFEERATE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add F_OTHERFEERATE NUMBER(22,6)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.F_OTHERFEERATE is ''����������''';
     dbms_output.put_line('���F_OTHERFEERATE(����������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'D_COLLTIME';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add D_COLLTIME DATE';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.D_COLLTIME is ''�ɼ�ʱ��''';
     dbms_output.put_line('���D_COLLTIME(�ɼ�ʱ��)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'C_COLLMAN';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add C_COLLMAN VARCHAR2(20)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.C_COLLMAN is ''�ɼ���''';
     dbms_output.put_line('���C_COLLMAN(�ɼ���)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'L_CHECKFLAG';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add L_CHECKFLAG NUMBER(22)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.L_CHECKFLAG is ''��˱�־��0δ���/1�����/2�����''';
     dbms_output.put_line('���L_CHECKFLAG(��˱�־��0δ���/1�����/2�����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'D_CHECKDATE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add D_CHECKDATE DATE';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.D_CHECKDATE is ''�������''';
     dbms_output.put_line('���D_CHECKDATE(�������)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'C_CHECKMAN';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add C_CHECKMAN VARCHAR2(20)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.C_CHECKMAN is ''�����''';
     dbms_output.put_line('���C_CHECKMAN(�����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'C_REMARK';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add C_REMARK VARCHAR2(255)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.C_REMARK is ''��ע''';
     dbms_output.put_line('���C_REMARK(��ע)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'C_SUBPROJCODE';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add C_SUBPROJCODE VARCHAR2(40)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.C_SUBPROJCODE is ''����Ŀ����''';
     dbms_output.put_line('���C_SUBPROJCODE(����Ŀ����)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'L_RIVAL_ID';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add L_RIVAL_ID NUMBER(22)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.L_RIVAL_ID is ''����ID''';
     dbms_output.put_line('���L_RIVAL_ID(����ID)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'C_CONTRACTNO';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add C_CONTRACTNO VARCHAR2(32)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.C_CONTRACTNO is ''��ͬ���''';
     dbms_output.put_line('���C_CONTRACTNO(��ͬ���)�ɹ���');
   end if;
   SELECT COUNT(*)  into v_cnt FROM USER_TAB_COLUMNS WHERE TABLE_NAME = 'TRPT_TPROJFULLFACTOR_HSFA' AND COLUMN_NAME = 'F_YYFS_TYCK';
   if v_cnt = 0  then
     execute immediate 'alter table TRPT_TPROJFULLFACTOR_HSFA add F_YYFS_TYCK NUMBER(22,2)';
     execute immediate 'comment on column TRPT_TPROJFULLFACTOR_HSFA.F_YYFS_TYCK is ''ͬҵ���''';
     dbms_output.put_line('���F_YYFS_TYCK(ͬҵ���)�ɹ���');
   end if;
 commit;
end;
/
