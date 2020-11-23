<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function popclose(form) {
		form.target = opener.name;
		form.submit();
		
		if(opener != null) {
			opener.insert = null;
			self.close();
		}
	}
</script>
</head>
<body>
	<h3>리뷰 수정</h3>
	<hr>
	<div>
		<h3>매칭 상대 정보</h3>
		<div>
			<table>
				<tr>
					<td>아이디</td>
					<td>${r_mat_m_id}</td>
				</tr>
			</table>
		</div>
	</div>
	<div>
		<form method="post" name="updateform" target="memreview" action="/review/updatemok">
			<input type="hidden" name="r_num" value="${r_num}">
			
			<table>
				<tr>
					<td>추천/비추천</td>
					<td>
					<input type="radio" name="r_good" value="G" checked="checked">추천
					<input type="radio" name="r_good" value="B">비추천
					</td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea cols="30" rows="5" name="r_contents">${r_contents}</textarea></td>
				</tr>
			</table>
			<input type="submit" value="수정" onClick="window.close()">
			<input type="button" value="닫기" onClick="window.close()">
		</form>
	</div>
</body>
</html>