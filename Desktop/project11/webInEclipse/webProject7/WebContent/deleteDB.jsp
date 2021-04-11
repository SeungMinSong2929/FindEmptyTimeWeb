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
	
	Connection conn=null;
	Statement stmt=null;
	String sql=null;
	// ResultSet rs=null;
	int ret = 0;
	
	try	{
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://18.188.115.127:3306/friend_db?useUnicode=true&characterEncoding=UTF-8";
		conn = DriverManager.getConnection(url, "root", "webproject"); 
		stmt = conn.createStatement(); 
		sql = "delete from friend_tbl where name='" + name + "'";
		ret = stmt.executeUpdate(sql);
		
		if (ret != 0) {
%>
			<script>
					alert("시간표가 정상적으로 삭제되었습니다.");
					location.href="friendList.jsp";
			</script>
<%
		}
	} catch (Exception e) {
		out.println("DB 연동 오류입니다.: " + e.getMessage())	;
	}
	
	stmt.close();
	conn.close();
%>
</body>
</html>