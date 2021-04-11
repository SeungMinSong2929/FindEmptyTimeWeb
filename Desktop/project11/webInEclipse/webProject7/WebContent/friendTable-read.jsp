<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!-- 2018112042 송승민 -->
<!-- 친구 시간표 뜨는 곳 -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>친구 시간표</title>
<link rel="stylesheet" href="./style.css" />
<style>
	table {
		background-color: gainsboro;
		border: 1px solid #000000;
		text-align: center;
		width: 700;
		margin: 0 auto;

	}
	th, td {
    	border: 1px solid #444444;
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
<%@ include file="/top.jsp" %>
<div id="back"><font size=1><br></font>
	<h2><%=request.getParameter("name") %> 시간표 </h2>
	<%
		int rownum = 0;
		String name, mon="", tue="", wed="", thu="", fri="";
		String[][] days=new String[5][27];
		Connection conn = null; 
		Statement stmt = null; 
		ResultSet rs = null;
		
		name=request.getParameter("name");
		try {
			Class.forName("com.mysql.jdbc.Driver"); 
			String url = "jdbc:mysql://18.188.115.127:3306/friend_db?useUnicode=true&characterEncoding=UTF-8"; 
			conn = DriverManager.getConnection(url, "root", "webproject"); 
			stmt = conn.createStatement(); 
			String sql = "select * from friend_tbl where name='"+name +"'"; 
			rs = stmt.executeQuery(sql);
		} 
		catch(Exception e) { 
			out.println("DB 연동 오류입니다. : " + e.getMessage()); 
		}
		
		while(rs.next()){
			name = rs.getString("name");
			mon = rs.getString("mon");
			tue = rs.getString("tue");
			wed = rs.getString("wed");
			thu = rs.getString("thu");
			fri = rs.getString("fri");
		}
		
		String[] mon_a=mon.split("");
		String[] tue_a=tue.split("");
		String[] wed_a=wed.split("");
		String[] thu_a=thu.split("");
		String[] fri_a=fri.split("");
		
		for(int i=0; i<27;i++){
			days[0][i]=mon_a[i];
			days[1][i]=tue_a[i];
			days[2][i]=wed_a[i];
			days[3][i]=thu_a[i];
			days[4][i]=fri_a[i];
		}
	%>
	<table>
	<tr><th width="120px">시간</th><th>월</th><th>화</th><th>수</th><th>목</th><th>금</th></tr>
	<%
	int count=0;
	int hour=8;
	while(count<26){
		%>
		<tr>
		<td height="20px" bgcolor="gold"><b><%switch(count){ 
		case 0: %>
		08:00-08:30
		<%break;
		case 1: %>
		08:30-09:00
		<%break;
		case 2: %>
		09:00-09:30
		<%break;
		case 3: %>
		09:30-10:00
		<%break;
		case 4: %>
		10:00-10:30
		<%break;
		case 5: %>
		10:30-11:00
		<%break;
		case 6: %>
		11:00-11:30
		<%break;
		case 7: %>
		11:30-12:00
		<%break;
		case 8: %>
		12:00-12:30
		<%break;
		case 9: %>
		12:30-13:00
		<%break;
		case 10: %>
		13:00-13:30
		<%break;
		case 11:%>
		13:30-14:00
		<%break;
		case 12:%>
		14:00-14:30
		<%break;
		case 13: %>
		14:30-15:00
		<%break;
		case 14: %>
		15:00-15:30
		<%break;
		case 15: %>
		15:30-16:00
		<%break;
		case 16: %>
		16:00-16:30
		<%break;
		case 17:%>
		16:30-17:00
		<%break;
		case 18:%>
		17:00-17:30
		<%break;
		case 19: %>
		17:30-18:00
		<%break;
		case 20:%>
		18:00-18:30
		<%break;
		case 21:%>
		18:30-19:00
		<%break;
		case 22:%>
		19:00-19:30
		<%break;
		case 23:%>
		19:30-20:00
		<%break;
		case 24:%>
		20:00-20:30
		<%break;
		case 25:%>
		20:30-21:00
		<%break;} %></b></td>
		
		<%for(int i=0; i<5;i++){%>
			<%if(days[i][count].equals("1")) {%>
				<td height="20" width="80px" bgcolor="#dbc5ec"></td>
			<%} 
			else{%>
				<td height="20" width="80px" bgcolor="white"></td>
			<%}%>
		<%} %>
		</tr>
		<%
		count++;
		}
		%>
	</table>
<br>
</div>
</body>
</html>