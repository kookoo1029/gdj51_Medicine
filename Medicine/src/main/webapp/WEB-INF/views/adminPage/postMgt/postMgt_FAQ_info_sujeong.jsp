<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정 페이지</title>
<link rel="stylesheet" type="text/css" href="resources/css/common/admin_common.css" />
<link rel="stylesheet" type="text/css" href="resources/css/admin/postMgt_FAQ_info.sujeong.css" />
<link rel="stylesheet" type="text/css" href="resources/css/common/cmn.css" />
<script type="text/javascript"src="resources/script/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="resources/js/admin/postMgt_FAQ_info.sujeong.js"></script>
<script type="text/javascript" src="resources/js/common/admin_common.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#listBtn").on("click",function(){
		$("#backForm").submit();
      });
});
</script>
</head>
<body>
<c:import url="/AdminImport"></c:import>
<form action="AFAQInfo" id="backForm" method="post">
	<input type="hidden" name="no" id="no" value="${data.FAQ_NUM}">
	<!-- 전 화면에서 넘어온 페이지 정보 -->
	<input type ="hidden" name="page" value="${param.page}" />
	<!-- 전 화면에서 넘어온 검색 정보 -->
	<input type ="hidden" name="searchGbn" value="${param.searchGbn}" />
	<input type ="hidden" name="searchTxt" value="${param.searchTxt}" />
</form>
	<div class="right_wrap">
		<div class="poPup">
			<div class="data">취소하시겠습니까?</div>
			<pre class="br"></pre>
			<div class="clickBtn">
				<div><input type="button" class="No" value="아니요"></div>
				<div><input type="button" class="Yes" id="listBtn" value="네"></div>
			</div>
		</div>
		<div class="poPup2">
			<div class="data">수정하시겠습니까?</div>
			<pre class="br"></pre>
			<div class="clickBtn">
				<div><input type="button" class="No" value="아니요"></div>
				<div><input type="button" class="Yes" id="insertBtn" value="네"></div>
			</div>
		</div>
		<div class="top_header">
			<div class="header">
				<div class="menu"></div>
				<div class="homepage_name">Good Medicine</div>
			</div>
		</div>
		<div id="bottom">
			<div class="nav">
				<p><b>관리자 홈 > 게시물 관리 > 고객센터 FAQ > 수정</b><p>
			</div>
			<form action="#" id="actionForm" method="post">
			
			<input type="hidden" name="MemNo" id="MemNo" value="${sMemNum}">
			<input type="hidden" name="no" id="no" value="${data.FAQ_NUM}">
			<input type="hidden" name="rara" id="rara" value="${param.gbnno}">
			
			<table class="t">
				<tr>
					<th colspan="2" style="height: 20px">
						<input type="text" value="${data.TITLE}" id="title" name="title" style="width: calc(100% - 9%); height: 100%;"/>
					<select name="gbnNo" id="select">
							<c:forEach var="data" items="${gbn}">
								<option value="${data.GBN_NUM}" >${data.GBN_NM}</option>
							</c:forEach>
					</select>
						</th>
				</tr>
					<tr>
						<td>
							<textarea name="con" id="con">${data.CON}</textarea>
						</td>
					</tr>
			</table>


			<div>
					<input type="button" class="del btn" value="취소">
						<div class="btn_one"></div>
					<input type="button" class="reg btn" value="등록">
						<div class="btn_one"></div>
			</div>
			</form>
		</div>
	</div>
</body>
</html>