<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
		<title>공지사항 목록 조회</title>
		<style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            padding: 0;
        }

        h1 {
            color: #0080ff;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #ccc;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #e0e0e0;
        }

        a {
            color: #0080ff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
		</style>
	</head>
	<body>
		<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
		<table>
			<colgroup>
				<col width="10%">
				<col width="35%">
				<col width="10%">
				<col width="25%">
				<col width="10%">
			</colgroup>
			<thead>
				<tr>
					<th>글번호</th>
					<th>글제목</th>
					<th>글쓴이</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="notice" items="${requestScope.nList}">
					<tr>
						<td>${notice.noticeNo }</td>
						<td><a href="/notice/detail.do?noticeNo=${notice.noticeNo }">${notice.noticeSubject }</a></td>
						<td>${notice.noticeWriter }</td>
						<td>${notice.noticeDate }</td>
						<td>${notice.viewCount }</td>
					</tr>
				</c:forEach>
	            <tr>
	            	<td colspan="5" align="center">
	           		${pageNavi }
            	</td>
            </tr>
			</tbody>
		</table>
		<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
	</body>
</html>