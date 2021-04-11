<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.lang.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<link rel="stylesheet" href="./style.css" />
<style>
	table {
		background-color: gainsboro;
		border: 1px solid #000000;
		text-align: center;
		width: 603;
		margin: 0 auto;
	}
	th, td {
    	border: 1px solid #444444;
  	}
	
	h2 {
		text-align: center;
	}
	a.h:hover:not(.active) {background-color:Gold;}
	a{text-decoration: none;}
	a.slink:link{color:black;}
	a.slink:visited{color:blue;}
	a.slink:active{color:yellow;}
	a.slink:hover{color:red;}
	
	#findingButton {
		text-align: center;
	}
	
	body { 
		background-color: #512DA8;
	}
	
	#back {
		width: 800px;
		background-color: white;
		text-align: center;
		margin: 0 auto;
	}
</style>
</head>
<body>
<%@ include file="/top.jsp"%>
<div id = "back"><br><br>
<%
	String[] friends = request.getParameterValues("friends"); // post로 넘겨받은 체크 정보
	String[] mon = new String[friends.length];
	String[] tue = new String[friends.length];
	String[] wed = new String[friends.length];
	String[] thu = new String[friends.length];
	String[] fri = new String[friends.length];
	
	String[][] monday = new String[friends.length][];
	String[][] tueday = new String[friends.length][];
	String[][] wedday = new String[friends.length][];
	String[][] thuday = new String[friends.length][];
	String[][] friday = new String[friends.length][];
	
	boolean[][] finalMap = new boolean[5][30]; 
	
	Connection conn = null; 
	Statement stmt = null; 
	String sql = null; 
	ResultSet rs = null;
	
	try {
		Class.forName("com.mysql.jdbc.Driver"); 
		String url = "jdbc:mysql://18.188.115.127:3306/friend_db?useUnicode=true&characterEncoding=UTF-8"; 
		conn = DriverManager.getConnection(url, "root", "webproject"); 
		stmt = conn.createStatement(); 
		
		for (int j = 0; j < friends.length; j++) {
			sql = "select * from friend_tbl where name = '" + friends[j] + "'"; 
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				mon[j] = rs.getString("mon"); // 그 user의 요일 값이 index별로 저장
				tue[j] = rs.getString("tue");
				wed[j] = rs.getString("wed");
				thu[j] = rs.getString("thu");
				fri[j] = rs.getString("fri");
			}
		}
	} 
	catch(Exception e) { 
		out.println("DB 연동 오류입니다.1: " + e.getMessage()); 
	}
	
	for (int i = 0; i < friends.length; i++) {
		monday[i] = mon[i].split(""); // 배열에 한 글자씩 저장
		tueday[i] = tue[i].split("");
		wedday[i] = wed[i].split("");
		thuday[i] = thu[i].split("");
		friday[i] = fri[i].split("");
	}

	for (int i = 0; i < friends.length; i++) {
		for (int j = 0; j < 27; j++) finalMap[0][j] |= monday[i][j].equals("1");
		for (int j = 0; j < 27; j++) finalMap[1][j] |= tueday[i][j].equals("1");
		for (int j = 0; j < 27; j++) finalMap[2][j] |= wedday[i][j].equals("1");
		for (int j = 0; j < 27; j++) finalMap[3][j] |= thuday[i][j].equals("1");
		for (int j = 0; j < 27; j++) finalMap[4][j] |= friday[i][j].equals("1");
	}
%>
	<table>
		<tr><th width=20% height="5"></th><th>월</th><th>화</th><th>수</th><th>목</th><th>금</th></tr>
		<%
			String[] time = {"08:00-08:30","08:30-09:00","09:00-09:30","09:30-10:00","10:00-10:30","10:30-11:00","11:00-11:30",
					"11:30-12:00","12:00-12:30","12:30-13:00","13:00-13:30","13:30-14:00","14:00-14:30","14:30-15:00","15:00-15:30",
					"15:30-16:00","16:00-16:30","16:30-17:00","17:00-17:30","17:30-18:00","18:00-18:30","18:30-19:00","19:00-19:30",
					"19:30-20:00","20:00-20:30","20:30-21:00"};
			for(int t=0; t<26; t++){
				out.print("<tr><th height=20 bgcolor=gold>"+time[t]+"</th>");
				for(int d=0; d<5; d++){
					boolean mask = finalMap[d][t];
					if(mask) out.print("<td height=20 bgcolor=#dbc5ec></td>");
					else out.print("<td height=20 bgcolor=white></td>");
				}
				out.print("</tr>");
			}
		%>
	</table><br>
	</div><br>
</body>
</html>