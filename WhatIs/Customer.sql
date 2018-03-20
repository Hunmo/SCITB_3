create table customer1(
	custid varchar2(20) primary key, --고객아이디
	pass varchar2(20) not null,		--비밀번호	
	name varchar2(30) not null,		--이름
	age number,						--나이
	email varchar2(20),				--이메일
	address varchar2(100)			--주소
);	

-- 테스트용 고객 데이터 
insert into customer values ('aaa','aaa', '홍길동', '25', 'aaa@aaa.com', '서울시');

create table board1 (
	boardnum		number	primary key,		--글번호
	id				varchar2(20) not null,		--작성자 ID
	title			varchar2(100) not null,		--글제목
	content			varchar2(2000) not null,	--글내용
	inputdate		date	default sysdate,	--작성날짜,시간
	hits			number 	default 0,			--조회수
	originalfile	varchar2(200),				--첨부파일명 (원래 이름)
	savedfile		varchar2(100)				--첨부파일명 (실제 저장된 이름)
);

-- 게시판 일련번호에 사용할 시퀀스 
create sequence board1_seq start with 1 increment by 1;