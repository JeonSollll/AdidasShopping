<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
		<title>공지사항 상세조회</title>
		<link rel="stylesheet" href="../resources/css/checkPw.css">
	</head>
	<body>
		<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
		<h1>공지사항 작성</h1>
		<ul>
			<li>
				<label for="">글번호</label>
				<span>${requestScope.notice.noticeNo }</span>
			</li>
			<li>
				<label for="">작성일</label>
				<span>${requestScope.notice.noticeDate }</span>
			</li>
			<li>
				<label for="">글쓴이</label>
				<span>${notice.noticeWriter }</span>
			</li>
			<li>
				<label for="">제목</label>
				<span>${notice.noticeSubject }</span>
			</li>
			<li>
				<label for="">내용</label>
				<p>${notice.noticeContent }</p>
			</li>
		</ul>
		<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
	</body>
</html>