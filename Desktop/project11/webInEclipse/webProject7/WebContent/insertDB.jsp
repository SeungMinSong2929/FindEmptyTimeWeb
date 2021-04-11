<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.lang.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록 완료</title>
</head>
<body>
<%
	String name = request.getParameter("name"); // 이름 받아 옴
	
	String[] mon = request.getParameterValues("mon"); // post로 넘겨받은 체크 정보
	int[] mo = new int[27]; // 숫자형 배열
	String monday = "";
	
	String[] tue = request.getParameterValues("tue");
	int[] tu = new int[27];
	String tueday = "";
	
	String[] wed = request.getParameterValues("wed");
	int[] we = new int[27];
	String wedday = "";
	
	String[] thu = request.getParameterValues("thu");
	int[] th = new int[27];
	String thuday = "";
	
	String[] fri = request.getParameterValues("fri");
	int[] fr = new int[27];
	String friday = "";
	
	int k;
	
	if(mon != null)
	for (int i = 0; i < mon.length; i++) { // 체크된 값을 index로 집어넣음
		k = Integer.parseInt(mon[i]); // 스트링 값을 int형으로 바꾸기 위함
		mo[k] = 1; // 그 값의 index는 공강 아니라는 1
	}
	// 스트링 하나로 합치는 거
	for (int i = 0; i < mo.length; i++) {
		monday += mo[i];
	}
	
	for (int i = 0; i < tue.length; i++) { // 체크된 값을 index로 집어넣음
		k = Integer.parseInt(tue[i]); // 스트링 값을 int형으로 바꾸기 위함
		tu[k] = 1; // 그 값의 index는 공강 아니라는 1
	}
	// 스트링 하나로 합치는 거
	for (int i = 0; i < tu.length; i++) {
		tueday += tu[i];
	}
	
	for (int i = 0; i < wed.length; i++) { // 체크된 값을 index로 집어넣음
		k = Integer.parseInt(wed[i]); // 스트링 값을 int형으로 바꾸기 위함
		we[k] = 1; // 그 값의 index는 공강 아니라는 1
	}
	// 스트링 하나로 합치는 거
	for (int i = 0; i < we.length; i++) {
		wedday += we[i];
	}
	
	for (int i = 0; i < thu.length; i++) { // 체크된 값을 index로 집어넣음
		k = Integer.parseInt(thu[i]); // 스트링 값을 int형으로 바꾸기 위함
		th[k] = 1; // 그 값의 index는 공강 아니라는 1
	}
	// 스트링 하나로 합치는 거
	for (int i = 0; i < th.length; i++) {
		thuday += th[i];
	}

	for (int i = 0; i < fri.length; i++) {
		k = Integer.parseInt(fri[i]);
		fr[k] = 1;
	}

	for (int i = 0; i < fr.length; i++) {
		friday += fr[i];
	}
	
	
	Connection conn=null;
	Statement stmt=null;
	String sql=null;
	ResultSet rs=null;
	
	try	{
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://18.188.115.127:3306/friend_db?useUnicode=true&characterEncoding=UTF-8"; // ?serverTimezone=UTC
		conn = DriverManager.getConnection(url, "root", "webproject"); 
		stmt = conn.createStatement(); 
		sql = "select * from friend_tbl"; 
		rs = stmt.executeQuery(sql);
	} catch (Exception e) {
		out.println("DB 연동 오류입니다.1: " + e.getMessage());
	}
	
	String sql1 = "insert into friend_tbl values('" + name + "', '" + monday + "', '" + tueday + "', '" + wedday + "', '" + thuday + "', '" + friday + "')";
	try {
		stmt.executeUpdate(sql1);
%>
<script>
		alert("시간표가 정상적으로 추가되었습니다.");
		location.href="friendList.jsp";
</script>
<%
	} catch (Exception e) {
		out.println("DB 연동 오류입니다.2: " + e.getMessage())	;
	}
	
	rs.close();
	stmt.close();
	conn.close();
%>
</body>
</html>