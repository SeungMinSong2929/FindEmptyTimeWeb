# FindEmptyTimeWeb

2019-2 웹 프로그래밍 수업 웹 프로젝트 
* 주제: 사용자 간의 공통된 공강 찾기 웹 프로젝트  
* 개발하게 된 계기: 대학생들은 많은 팀 프로젝트를 수행하는데, 그때마다 서로의 시간표를 확인하여 공간 시간을 찾기 어렵다. 따라서, 이 웹 사이트를 사용하여 시간표를 등록하면 쉽게 회의 시간을 정할 수 있다. 
* 개요: 본 프로젝트는 웹 사이트 ‘공강’의 구현을 목표로 한다. 웹 사이트 ‘공강’은 사용자 간의 공통적인 여유 시간, 즉 공강 시간을 찾아 알려 주는 것이 주된 기능이다. 사용자가 자신의 이름과 시간표를 입력하면, 입력한 정보는 데이터베이스에 저장되며, 여러 사용자가 입력했을 시 해당 사용자들의 시간표 정보는 친구 목록에 포함된다. 공통 공강 시간을 계산하고 싶은 사용자들을 선택한 뒤 버튼을 누르면 해당하는 사용자들의 공통 공강 시간이 시각적인 시간표 형태로 출력된다.

### 사용된 기술
Front-end: html/CSS, JavaScript <br>
Back-end: MySQL DB, bootstrap framework <br>
개발 환경: Chrome 브라우저를 기준. MySQL 버전 5.5.62를 사용. 톰캣 서버 버전은 8.5 사용.

#### 스토리보드
본 프로젝트의 사이트 맵 <br>
![storyboard](https://user-images.githubusercontent.com/58732639/114313269-d76e5600-9b30-11eb-8e67-eb9bd5849191.png)

#### 페이지 구성
![main](https://user-images.githubusercontent.com/58732639/114313472-a7738280-9b31-11eb-8bfa-76b189db4c14.png) <br>
main.html 
----------
![top.jsp](https://user-images.githubusercontent.com/58732639/114313507-beb27000-9b31-11eb-9f74-c8812a790ce5.png) <br>
top.jsp
----------
![addTimeTable.jsp](https://user-images.githubusercontent.com/58732639/114313575-ffaa8480-9b31-11eb-8f20-6b0a0729b604.png) <br>
addTimeTable.jsp
----------
![insertDB.jsp](https://user-images.githubusercontent.com/58732639/114313616-194bcc00-9b32-11eb-92a0-19b272dac89a.png) <br>
insertDB.jsp
----------
![freindList.jsp](https://user-images.githubusercontent.com/58732639/114313672-64fe7580-9b32-11eb-82ab-f789d0531934.png) <br>
freindList.jsp
----------
![friendTable-read.jsp](https://user-images.githubusercontent.com/58732639/114313766-cfafb100-9b32-11eb-94dd-6bcbceffd31c.png) <br>
friendTable-read.jsp
----------
![findEmptyTime.jsp](https://user-images.githubusercontent.com/58732639/114313801-fe2d8c00-9b32-11eb-98cf-1bfa963a1048.png) <br>
findEmptyTime.jsp
----------
![deleteDB.jsp](https://user-images.githubusercontent.com/58732639/114313811-10a7c580-9b33-11eb-9fde-1701836d2147.png) <br>
deleteDB.jsp
----------
![meal](https://user-images.githubusercontent.com/58732639/114313827-21f0d200-9b33-11eb-8160-8b4d2d8cea8b.png) <br>
오늘의 식단
----------

#### DB 테이블 구성
![DB](https://user-images.githubusercontent.com/58732639/114313650-400a0280-9b32-11eb-887b-904bfec6bb97.png) <br>
DB 테이블 구조도 

### 개발자
공강 말고 종강 조 
* 유현지 <br>
* 송승민 <br>
* 신승윤 <br>

