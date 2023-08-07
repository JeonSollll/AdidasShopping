<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
		<title>공지사항 작성</title>
	</head>
	<body>
		<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
		<h1>공지사항 작성</h1>
		<form action="/notice/insert.do" method="post">
			<fieldset>
				<legend>공지사항 작성</legend>
				<ul>
					<li>
						<label for="">제목</label>
						<input type="text" id="" name="noticeSubject">
					</li>
					<li>
						<label for="">내용</label>
						<textarea name="noticeContent" id="" cols="30" rows="10"></textarea>
					</li>
				</ul>
			</fieldset>
			<div>
				<input type="submit" value="작성">
				<input type="reset" value="초기화">
			</div>
		</form>
		<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
	</body>
</html>