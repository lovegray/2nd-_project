create table oneroom(
num number,
-- 매물번호
realtor varchar2(100),
-- 공인중개사
area number(6,2),
-- 면적(계약면적)
adress varchar2(100),
-- 주소
floor number,
-- 층
monthlyfee number,
-- 매물 월세
charter number,
-- 매물 보증금
difference_monthlyfee number,
-- 시세차액(시세-월세)
difference_charter number,
-- 시세차액(시세-보증금)
 
insurance number,
--보증보험여부--0:해당없음,1:해당--
building_registration number,
--건물등기여부--0:해당없음,1:해당--

land_ledger number,
--토지대장여부--0:해당없음,1:해당--
building_book number,
--건축물대장여부--0:해당없음,1:해당--
num_count number,
--매물번호 8자리 여부--0:8자리 아님,1:8자리 맞음--

CONSTRAINT PK_num PRIMARY KEY(num)
);

--oneroom 테이블 조회--
select * from oneroom;
select distinct count(num) from oneroom;
delete from oneroom;
--oneroom 테이블 삭제--
drop table oneroom;

--테이블 열 삭제--
alter table oneroom drop result;


--테이블 내용 입력하기--
insert into oneroom 
values(6795289,'오렌지공인중개사사무소',36.3,'광주광역시 서구 쌍촌동',3,20,100,10,100,0,0,0,0,0);

