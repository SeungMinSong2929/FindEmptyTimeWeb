<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시간표 추가</title>
<link rel="stylesheet" href="./style.css" />
<style>
	#table1 {
		text-align: center;
		background-color: white;
		border: 1px solid #000000;
		text-align: center;
		width: 700;
		margin: 0 auto;
	}
	
	th, td {
	    border: 1px solid #444444;
	}
	
	input[type=checkbox] {
		width: 20px;
		height: 20px;
	}
	
	input[type=checkbox].time {
		width: 30px;
		height:30px;
	}
	
	input[type=text] {
		width: 250px;
		height: 30px;
		padding-left: 5px;
	}
	
	input[type=submit] {
		left: 1100px;
		width: 80px; height: 40px;
		font-size: 16px;
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
	
	#explain {
		font-size: 14px;
		font-weight: bold;
	}
</style>
</head>
<body>
<%@ include file="/top.jsp" %>
<div id="back">
<br><p id="explain">* 이름 작성 필수  *<p>
<form action="insertDB.jsp" method="POST">
	<table id="table1">
		<tr><th colspan=2 height="30px">이름</th>
			<td colspan=5><input type="text" name="name"></td>
		</tr>
		<tr></tr>
		<tr>
			<th width="120px" height="20px" colspan=2>공강 여부</th>
			<th>월<input type="checkbox" name="mon" value="26" checked="checked" disabled="disabled"></th>
			<th>화<input type="checkbox" name="tue" value="26" checked="checked" disabled="disabled"></th>
			<th>수<input type="checkbox" name="wed" value="26" checked="checked" disabled="disabled"></th>
			<th>목<input type="checkbox" name="thu" value="26" checked="checked" disabled="disabled"></th>
			<th>금<input type="checkbox" name="fri" value="26" checked="checked" disabled="disabled"></th>
		</tr>
		<tr>
			<th colspan=2 height="20px" bgcolor="gold">08:00-08:30</th>
			<td><input type="checkbox" name="mon" value="0" class="time"></td>
			<td><input type="checkbox" name="tue" value="0" class="time"></td>
			<td><input type="checkbox" name="wed" value="0" class="time"></td>
			<td><input type="checkbox" name="thu" value="0" class="time"></td>
			<td><input type="checkbox" name="fri" value="0" class="time"></td>
		</tr>
		<tr>
			<th colspan=2 height="20px" bgcolor="gold">08:30-09:00</th>
			<td><input type="checkbox" name="mon" value="1" class="time"></td>
			<td><input type="checkbox" name="tue" value="1" class="time"></td>
			<td><input type="checkbox" name="wed" value="1" class="time"></td>
			<td><input type="checkbox" name="thu" value="1" class="time"></td>
			<td><input type="checkbox" name="fri" value="1" class="time"></td>
		</tr>
		<tr>
			<th colspan=2 height="30px" bgcolor="gold">09:00-09:30</th>
			<td><input type="checkbox" name="mon" value="2" class="time"></td>
			<td><input type="checkbox" name="tue" value="2" class="time"></td>
			<td><input type="checkbox" name="wed" value="2" class="time"></td>
			<td><input type="checkbox" name="thu" value="2" class="time"></td>
			<td><input type="checkbox" name="fri" value="2" class="time"></td>
		</tr>
		<tr>
			<th colspan=2 height="30px" bgcolor="gold">09:30-10:00</th>
			<td><input type="checkbox" name="mon" value="3" class="time"></td>
			<td><input type="checkbox" name="tue" value="3" class="time"></td>
			<td><input type="checkbox" name="wed" value="3" class="time"></td>
			<td><input type="checkbox" name="thu" value="3" class="time"></td>
			<td><input type="checkbox" name="fri" value="3" class="time"></td>
		</tr>
		<tr>
			<th colspan=2 height="30px" bgcolor="gold">10:00-10:30</th>
			<td><input type="checkbox" name="mon" value="4" class="time"></td>
			<td><input type="checkbox" name="tue" value="4" class="time"></td>
			<td><input type="checkbox" name="wed" value="4" class="time"></td>
			<td><input type="checkbox" name="thu" value="4" class="time"></td>
			<td><input type="checkbox" name="fri" value="4" class="time"></td>
		</tr>
		<tr>
			<th colspan=2 height="30px" bgcolor="gold">10:30-11:00</th>
			<td><input type="checkbox" name="mon" value="5" class="time"></td>
			<td><input type="checkbox" name="tue" value="5" class="time"></td>
			<td><input type="checkbox" name="wed" value="5" class="time"></td>
			<td><input type="checkbox" name="thu" value="5" class="time"></td>
			<td><input type="checkbox" name="fri" value="5" class="time"></td>
		</tr>
		<tr>
			<th colspan=2 height="30px" bgcolor="gold">11:00-11:30</th>
			<td><input type="checkbox" name="mon" value="6" class="time"></td>
			<td><input type="checkbox" name="tue" value="6" class="time"></td>
			<td><input type="checkbox" name="wed" value="6" class="time"></td>
			<td><input type="checkbox" name="thu" value="6" class="time"></td>
			<td><input type="checkbox" name="fri" value="6" class="time"></td>
		</tr>
		<tr>
			<th colspan=2 height="30px" bgcolor="gold">11:30-12:00</th>
			<td><input type="checkbox" name="mon" value="7" class="time"></td>
			<td><input type="checkbox" name="tue" value="7" class="time"></td>
			<td><input type="checkbox" name="wed" value="7" class="time"></td>
			<td><input type="checkbox" name="thu" value="7" class="time"></td>
			<td><input type="checkbox" name="fri" value="7" class="time"></td>
		</tr>
		<tr>
			<th colspan=2 height="30px" bgcolor="gold">12:00-12:30</th>
			<td><input type="checkbox" name="mon" value="8" class="time"></td>
			<td><input type="checkbox" name="tue" value="8" class="time"></td>
			<td><input type="checkbox" name="wed" value="8" class="time"></td>
			<td><input type="checkbox" name="thu" value="8" class="time"></td>
			<td><input type="checkbox" name="fri" value="8" class="time"></td>
		</tr>
		<tr>
			<th colspan=2 height="30px" bgcolor="gold">12:30-13:00</th>
			<td><input type="checkbox" name="mon" value="9" class="time"></td>
			<td><input type="checkbox" name="tue" value="9" class="time"></td>
			<td><input type="checkbox" name="wed" value="9" class="time"></td>
			<td><input type="checkbox" name="thu" value="9" class="time"></td>
			<td><input type="checkbox" name="fri" value="9" class="time"></td>
		</tr>
		<tr>
			<th colspan=2 height="30px" bgcolor="gold">13:00-13:30</th>
			<td><input type="checkbox" name="mon" value="10" class="time"></td>
			<td><input type="checkbox" name="tue" value="10" class="time"></td>
			<td><input type="checkbox" name="wed" value="10" class="time"></td>
			<td><input type="checkbox" name="thu" value="10" class="time"></td>
			<td><input type="checkbox" name="fri" value="10" class="time"></td>
		</tr>
		<tr>
			<th colspan=2 height="30px" bgcolor="gold">13:30-14:00</th>
			<td><input type="checkbox" name="mon" value="11" class="time"></td>
			<td><input type="checkbox" name="tue" value="11" class="time"></td>
			<td><input type="checkbox" name="wed" value="11" class="time"></td>
			<td><input type="checkbox" name="thu" value="11" class="time"></td>
			<td><input type="checkbox" name="fri" value="11" class="time"></td>
		<tr>
			<th colspan=2 height="30px" bgcolor="gold">14:00-14:30</th>
			<td><input type="checkbox" name="mon" value="12" class="time"></td>
			<td><input type="checkbox" name="tue" value="12" class="time"></td>
			<td><input type="checkbox" name="wed" value="12" class="time"></td>
			<td><input type="checkbox" name="thu" value="12" class="time"></td>
			<td><input type="checkbox" name="fri" value="12" class="time"></td>
		</tr>
		<tr>
			<th colspan=2 height="30px" bgcolor="gold">14:30-15:00</th>
			<td><input type="checkbox" name="mon" value="13" class="time"></td>
			<td><input type="checkbox" name="tue" value="13" class="time"></td>
			<td><input type="checkbox" name="wed" value="13" class="time"></td>
			<td><input type="checkbox" name="thu" value="13" class="time"></td>
			<td><input type="checkbox" name="fri" value="13" class="time"></td>
		<tr>
			<th colspan=2 height="30px" bgcolor="gold">15:00-15:30</th>
			<td><input type="checkbox" name="mon" value="14" class="time"></td>
			<td><input type="checkbox" name="tue" value="14" class="time"></td>
			<td><input type="checkbox" name="wed" value="14" class="time"></td>
			<td><input type="checkbox" name="thu" value="14" class="time"></td>
			<td><input type="checkbox" name="fri" value="14" class="time"></td>
		</tr>
		<tr>
			<th colspan=2 height="30px" bgcolor="gold">15:30-16:00</th>
			<td><input type="checkbox" name="mon" value="15" class="time"></td>
			<td><input type="checkbox" name="tue" value="15" class="time"></td>
			<td><input type="checkbox" name="wed" value="15" class="time"></td>
			<td><input type="checkbox" name="thu" value="15" class="time"></td>
			<td><input type="checkbox" name="fri" value="15" class="time"></td>
		<tr>
			<th colspan=2 height="30px" bgcolor="gold">16:00-16:30</th>
			<td><input type="checkbox" name="mon" value="16" class="time"></td>
			<td><input type="checkbox" name="tue" value="16" class="time"></td>
			<td><input type="checkbox" name="wed" value="16" class="time"></td>
			<td><input type="checkbox" name="thu" value="16" class="time"></td>
			<td><input type="checkbox" name="fri" value="16" class="time"></td>
		</tr>
		<tr>
			<th colspan=2 height="30px" bgcolor="gold">16:30-17:00</th>
			<td><input type="checkbox" name="mon" value="17" class="time"></td>
			<td><input type="checkbox" name="tue" value="17" class="time"></td>
			<td><input type="checkbox" name="wed" value="17" class="time"></td>
			<td><input type="checkbox" name="thu" value="17" class="time"></td>
			<td><input type="checkbox" name="fri" value="17" class="time"></td>
		<tr>
			<th colspan=2 height="30px" bgcolor="gold">17:00-17:30</th>
			<td><input type="checkbox" name="mon" value="18" class="time"></td>
			<td><input type="checkbox" name="tue" value="18" class="time"></td>
			<td><input type="checkbox" name="wed" value="18" class="time"></td>
			<td><input type="checkbox" name="thu" value="18" class="time"></td>
			<td><input type="checkbox" name="fri" value="18" class="time"></td>
		</tr>
		<tr>
			<th colspan=2 height="30px" bgcolor="gold">17:30-18:00</th>
			<td><input type="checkbox" name="mon" value="19" class="time"></td>
			<td><input type="checkbox" name="tue" value="19" class="time"></td>
			<td><input type="checkbox" name="wed" value="19" class="time"></td>
			<td><input type="checkbox" name="thu" value="19" class="time"></td>
			<td><input type="checkbox" name="fri" value="19" class="time"></td>
		<tr>
			<th colspan=2 height="30px" bgcolor="gold">18:00-18:30</th>
			<td><input type="checkbox" name="mon" value="20" class="time"></td>
			<td><input type="checkbox" name="tue" value="20" class="time"></td>
			<td><input type="checkbox" name="wed" value="20" class="time"></td>
			<td><input type="checkbox" name="thu" value="20" class="time"></td>
			<td><input type="checkbox" name="fri" value="20" class="time"></td>
		</tr>
		<tr>
			<th colspan=2 height="30px" bgcolor="gold">18:30-19:00</th>
			<td><input type="checkbox" name="mon" value="21" class="time"></td>
			<td><input type="checkbox" name="tue" value="21" class="time"></td>
			<td><input type="checkbox" name="wed" value="21" class="time"></td>
			<td><input type="checkbox" name="thu" value="21" class="time"></td>
			<td><input type="checkbox" name="fri" value="21" class="time"></td>
		<tr>
			<th colspan=2 height="30px" bgcolor="gold">19:00-19:30</th>
			<td><input type="checkbox" name="mon" value="22" class="time"></td>
			<td><input type="checkbox" name="tue" value="22" class="time"></td>
			<td><input type="checkbox" name="wed" value="22" class="time"></td>
			<td><input type="checkbox" name="thu" value="22" class="time"></td>
			<td><input type="checkbox" name="fri" value="22" class="time"></td>
		</tr>
		<tr>
			<th colspan=2 height="30px" bgcolor="gold">19:30-20:00</th>
			<td><input type="checkbox" name="mon" value="23" class="time"></td>
			<td><input type="checkbox" name="tue" value="23" class="time"></td>
			<td><input type="checkbox" name="wed" value="23" class="time"></td>
			<td><input type="checkbox" name="thu" value="23" class="time"></td>
			<td><input type="checkbox" name="fri" value="23" class="time"></td>
		<tr>
			<th colspan=2 height="30px" bgcolor="gold">20:00-20:30</th>
			<td><input type="checkbox" name="mon" value="24" class="time"></td>
			<td><input type="checkbox" name="tue" value="24" class="time"></td>
			<td><input type="checkbox" name="wed" value="24" class="time"></td>
			<td><input type="checkbox" name="thu" value="24" class="time"></td>
			<td><input type="checkbox" name="fri" value="24" class="time"></td>
		</tr>
		<tr>
			<th colspan=2 height="30px" bgcolor="gold">20:30-21:00</th>
			<td><input type="checkbox" name="mon" value="25" class="time"></td>
			<td><input type="checkbox" name="tue" value="25" class="time"></td>
			<td><input type="checkbox" name="wed" value="25" class="time"></td>
			<td><input type="checkbox" name="thu" value="25" class="time"></td>
			<td><input type="checkbox" name="fri" value="25" class="time"></td>
		</tr>
	</table>
	<br>
	<input type="submit" value="추가" class="findingButton" onclick="isEmpty()"><br><br>
</form>
</div><br>
</body>
</html>