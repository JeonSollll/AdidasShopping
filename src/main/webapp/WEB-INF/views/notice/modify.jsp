<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
		<title>공지사항 수정</title>
	</head>
	<body>
		<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
		<h1>공지사항 수정</h1>
		<form action="/notice/modify.do" method="post">
			<input type = "hidden" name="noticeNo" value="${notice.noticeNo }">
			<fieldset>
				<legend>공지사항 수정</legend>
				<ul>
					<li>
						<label for="">제목</label>
						<input type="text" id="" name="noticeSubject" value="${notice.noticeSubject }">
					</li>
					<li>
						<label for="">내용</label>
						<textarea name="noticeContent" id="" cols="30" rows="10">${notice.noticeContent }</textarea>
					</li>
				</ul>
			</fieldset>
			<div>
				<input type="submit" value="수정">
				<input type="reset" value="초기화">
			</div>
		</form>
		<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
	</body>
</html>