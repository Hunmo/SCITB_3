create table importable(
charNum  number primary key,
charName varchar2(100) not null,
charText varchar2(1000) not null,
charImgPath varchar2(100) not null
);

-- 정보테이블에 사용할 시퀀스
create sequence impor_seq start with 1 increment by 1;


-- 예시 입력 
insert into  importable
values
(impor_seq.nextval , "그레이브즈" , "그레이브즈는 두 발 씩 충전되는 강력한 산탄형 기본 공격을 가진 챔피언입니다. 스킬과 기본 공격이 다른 원거리 챔피언에 비해 비교적 짧지만, 공격 하나하나의 피해량이 높고, 빨리 뽑기와 진정한 용기 효과를 이용해 중근거리 전투에서도 강력한 모습을 보여주는 챔피언입니다." , "/resources/img/p.jpg");