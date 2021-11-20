<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, model.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
@SuppressWarnings("unchecked")
List<Post> postList = (List<Post>) request.getAttribute("postList");
%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- <script type="text/javascript" src="/js/bootstrap.js"></script> -->
<meta http-equiv="Content-Type" content="text/html; charset="utf-8">
<title>Acts On</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!-- <link rel="stylesheet" href="./css/bootstrap.css">
        <script src="js/jquery-3.6.0.js"></script> -->


<style>
body {
	margin-left: 50px;
	margin-right: 50px;
}

#headLine {
	background-color: #b5cda3;
	display: grid;
	grid-template-columns: 7fr 1fr;
	margin: 100px, 30px, 500px, 30px;
	height: 50px;
	width: auto;
}

#small {
	height: 40px;
}

#headLineText {
	padding-left: 20px;
	padding-top: 5px;
	color: white;
	font-size: 30px;
	font-weight: bold;
}

#big {
	height: 70px;
}

#all {
	display: grid;
	grid-template-columns: 3fr 1fr;
}

#title {
	padding-left: 50px;
	font-size: 70px;
	font-weight: bold;
	width: 600px;
}

#text {
	font-weight: bold;
	padding-left: 50px;
	width: 600px;
}

.row {
	padding-left: 50px;
	padding-right: 50px;
	padding-top: 30px;
}

a {
	text-decoration: none;
	color: black;
}
</style>
</head>
<body>
	<!-- <script type="text/javascript" src="js/bootstrap.js">
        </script> -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<div id="headLine" align="center">
		<div id="headLineText" align="left">
			Acts <img src="<c:url value='/images/sprout2.png' />" border="0"
				width="45" height="30" />
		</div>

		<div>
			<c:if test="${accountId eq null}">
				<a href="<c:url value='/user/login/form' />" class="btn btn-light"
					role="button">로그인</a>
			</c:if>
			<c:if test="${accountId ne null}">
				<a href="<c:url value='/user/logout' />" class="btn btn-light"
					role="button">로그아웃</a>
			</c:if>
			<a href="<c:url value='/comm/search' />"><i class="fa fa-search"
				aria-hidden="true"></i></a> <a href="<c:url value='/comm/search' />"><img
				src="<c:url value='/images/searchIcon.GIF' />" /></a>
			<!--  즐겨찾기 page 구현 필요  -->
			<!-- <img src="./image/즐겨찾기.GIF">  -->
			<a href="<c:url value='/user/myPage' />"><img
				src="<c:url value='/images/mypageIcon.GIF' />" /></a>
			<!-- 로그인 되어있다면 MyPage로 안되어 있는 경우 NotLogin페이지로 가서 Login Page로 유도(이거도 foward 필요) -->
		</div>

	</div>

	<br><br><br>
	<table style="background-color: YellowGreen">
		<tr>
			<td width="190" align="center" bgcolor="E6ECDE" height="22">제목</td>
			<td width="200" align="center" bgcolor="E6ECDE">가격</td>
			<td width="200" align="center" bgcolor="E6ECDE">구매자/판매자</td>
			<td width="200" align="center" bgcolor="E6ECDE">작성자</td>
		</tr>

		<%
		if (postList != null) {
			Iterator<Post> postIter = postList.iterator();

			//사용자 리스트를 클라이언트에게 보여주기 위하여 출력.
			while (postIter.hasNext()) {
				Post post = (Post) postIter.next();
		%>

		<c:forEach var="post" items="${postList}">
			<tr>
				<td width="190" align="center" bgcolor="ffffff" height="20">
					${post.title}</td>

				<td width="200" align="center" bgcolor="ffffff" height="20">
					${post.price}</td>

				<td width="200" align="center" bgcolor="ffffff" height="20">
					${post.postType}</td>
				<td width="200" align="center" bgcolor="ffffff" height="20">
					${post.writerId}</td>
			</tr>
		</c:forEach>

		<%
			}
		}
		%>
	</table>

</body>
</html>
