create table oneroom(
num number,
-- �Ź���ȣ
realtor varchar2(100),
-- �����߰���
area number(6,2),
-- ����(������)
adress varchar2(100),
-- �ּ�
floor number,
-- ��
monthlyfee number,
-- �Ź� ����
charter number,
-- �Ź� ������
difference_monthlyfee number,
-- �ü�����(�ü�-����)
difference_charter number,
-- �ü�����(�ü�-������)
 
insurance number,
--�������迩��--0:�ش����,1:�ش�--
building_registration number,
--�ǹ���⿩��--0:�ش����,1:�ش�--

land_ledger number,
--�������忩��--0:�ش����,1:�ش�--
building_book number,
--���๰���忩��--0:�ش����,1:�ش�--
num_count number,
--�Ź���ȣ 8�ڸ� ����--0:8�ڸ� �ƴ�,1:8�ڸ� ����--

CONSTRAINT PK_num PRIMARY KEY(num)
);

--oneroom ���̺� ��ȸ--
select * from oneroom;
select distinct count(num) from oneroom;
delete from oneroom;
--oneroom ���̺� ����--
drop table oneroom;

--���̺� �� ����--
alter table oneroom drop result;


--���̺� ���� �Է��ϱ�--
insert into oneroom 
values(6795289,'�����������߰���繫��',36.3,'���ֱ����� ���� ���̵�',3,20,100,10,100,0,0,0,0,0);

