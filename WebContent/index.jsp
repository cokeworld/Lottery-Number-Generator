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
	<div class="win_result">
					<div class="nums">
						<div class="num win">
							<strong>로또 행운의 번호</strong>
							<p>
								<span class="ball_645 lrg ball1"><%=num.get(0) %></span>
								<span class="ball_645 lrg ball1"><%=num.get(1) %></span>
								<span class="ball_645 lrg ball2"><%=num.get(2) %></span>
								<span class="ball_645 lrg ball3"><%=num.get(3) %></span>
								<span class="ball_645 lrg ball3"><%=num.get(4) %></span>
								<span class="ball_645 lrg ball4"><%=num.get(5) %></span>
							</p>
						</div>
<!-- 						<div class="num bonus"> -->
<!-- 							<strong>보너스</strong> -->
<%-- 							<p><span class="ball_645 lrg ball3"><%=num.get(6)%></span></p> --%>
<!-- 						</div> -->

					<h4><a href="https://dhlottery.co.kr/gameResult.do?method=byWin">당첨결과확인</a></h4>
					</div>
				</div>
</body>
</html>