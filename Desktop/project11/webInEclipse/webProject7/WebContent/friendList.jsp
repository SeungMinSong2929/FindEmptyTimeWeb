<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<!-- db에 등록된 친구 목록 뜨는 곳 -->
<!-- 2018112042 송승민 작성 -->
<head>
<title>친구 목록</title>
<link rel="stylesheet" href="./style.css" />
<style>
	table {
		background-color: gainsboro;
		border: 1px solid #000000;
		text-align: center;
		width: 603;
		margin: 0 auto;
		padding-left: 10;
	}
	input[type=checkbox] {
		width: 20px;
		height: 20px;
	}
	h2 {
		text-align: center;
	}
	a.h:hover:not(.active) {background-color:Gold;}
	a{text-decoration: none;}
	a.slink:link{color: black;}
	a.slink:visited{color: black;}
	a.slink:active{color: yellow;}
	a.slink:hover{color: blue;}
	
	body { 
		background-color: #512DA8;
	}
	
	#back {
		width: 800px;
		background-color: white;
		text-align: center;
		margin: 0 auto;
	}
	
	#close { 
		float:right; 
		display: inline-block; 
		padding: 2px 5px; 
		font-weight: 700; 
		text-shadow: 0 1px 0 #fff; 
		font-size: 1.3rem;
		font-face: 굴림; 
		margin-right: 3px;
	} 
	
	#close:hover { 
		border: 0; 
		cursor: pointer; 
		opacity: .5; 
	}
	
	.findingButton {
		color: #512DA8;
		text-align: center;
		border-radius: 5px;
		background-color: gold;
		box-shadow: none;
		border: 0px solid;
		padding: 8px 8px 8px 8px;
	}
	
	.findingButton:hover {
		opacity: .8;
		cursor: pointer;
	}
</style>
</head>
<body>
<%@ include file="/top.jsp"%>
<div id="back"><font size=1><br></font>
<h2>등록된 친구들</h2>
	<form action="findEmptyTime.jsp" method="POST" name="subEmpty">
		<table>
		<%
			int rownum = 0;
			String name, mon, tue, wed, thu, fri;
		
			Connection conn = null; 
			Statement stmt = null; 
			String sql = null; 
			ResultSet rs = null;
			
			try {
				Class.forName("com.mysql.jdbc.Driver"); 
				String url = "jdbc:mysql://18.188.115.127:3306/friend_db?useUnicode=true&characterEncoding=UTF-8"; 
				conn = DriverManager.getConnection(url, "root", "webproject"); 
				stmt = conn.createStatement(); 
				sql = "select * from friend_tbl"; 
				rs = stmt.executeQuery(sql);
			} 
			catch(Exception e) { 
				out.println("DB 연동 오류입니다.3: " + e.getMessage()); 
			}
			rs.last(); 
			rownum = rs.getRow(); 
			rs.beforeFirst();
			
			while(rs.next()) { 
				name = rs.getString("name");
				mon = rs.getString("mon");
				tue = rs.getString("tue");
				wed = rs.getString("wed");
				thu = rs.getString("thu");
				fri = rs.getString("fri");
		%>
			<tr>
				<td>
			</tr>
			<tr>
			<% String nameparam = java.net.URLEncoder.encode(rs.getString("name"), "UTF-8"); %>
				<td><input type="checkbox" name="friends" value="<%= rs.getString("name") %>">
				<td align="left">
					<a class="slink" href="friendTable-read.jsp?name=<%=nameparam%>
					&mon=<%=rs.getString("mon")%>&tue=<%=rs.getString("tue")%>
					&wed=<%=rs.getString("wed")%>&thu=<%=rs.getString("thu")%>
					&fri=<%=rs.getString("fri")%>">
					<%=rs.getString("name")%></a>
				</td> 
				<td><span id='close'><a href="deleteDB.jsp?name=<%= nameparam %>">&times;</a></span></td>
			</tr>
		<%
				rownum--;
			} 
			
			rs.close();
			stmt.close();
			conn.close();
		%> 
		</table> 
		<br><input type="button" value="선택한 친구들의 공강 찾기" class="findingButton" onclick="emdfhr()"><br><br>
	</form>
	<script>
	function emdfhr(){
		var chk_frd=document.getElementsByName("friends");
		var frd_length=chk_frd.length;
		for(i=0; i<frd_length; i++){
			if(chk_frd[i].checked==true){
				document.subEmpty.submit();
			}
		}
	}
	</script>
</div>
</body>
</html>