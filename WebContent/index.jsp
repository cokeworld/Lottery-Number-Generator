<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.ArrayList"%>
<%@page import="lottery.Dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Dao dao = new Dao();
Set<Integer> setNum = Dao.makeNum();
Iterator<Integer> iteNum = setNum.iterator();

ArrayList<Integer> num = new ArrayList<>();

while(iteNum.hasNext()) {
	num.add(iteNum.next());
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css?version=1.1">
<title>Lotto번호 생성기</title>
</head>
<body>

	<div class="nums">
		<div class="num win">
			<h2>로또 행운 번호</h2>
			<p>
				<span class="ball ball1"><%=num.get(0) %></span> 
				<span class="ball ball1"><%=num.get(1) %></span> 
				<span class="ball ball2"><%=num.get(2) %></span> 
				<span class="ball ball3"><%=num.get(3) %></span> 
				<span class="ball ball4"><%=num.get(4) %></span>
				<span class="ball ball5"><%=num.get(5) %></span> 
			</p>
		</div>
		<input type="button" id="btn" value="다시뽑기!" onclick="reload()">
		<h4>
			<a href="https://dhlottery.co.kr/gameResult.do?method=byWin" target="_blank">당첨결과확인</a>
		</h4>
	</div>

<script>
	function reload() {
		location.reload();
		}
</script>
</body>
</html>