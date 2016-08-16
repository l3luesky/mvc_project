<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html lang="ko">

<head>
<c:import url="/WEB-INF/views/main/inc/head.jsp"></c:import>

<script type="text/javascript">

function goWrite(){
	var url = "/com/blue/write";
	var pMapId = "${map.mapId}";
	$.get(url, {mapId : pMapId}, function(data){
		$("#rightBlock").html(data);
	});
}

</script>

</head>

<body id="[##_body_id_##]">

	<input type="hidden" name="mapId" value="${map.mapId}">
<%-- <form id="frmSearch" name="frmSearch" class="search_area" onsubmit="return false;">
	<input type="hidden" name="page" id="page" value="${search.page}">
	<dl>
		<dd>
			<select name="searchType" id="searchType" style="height: 30px;">
				<option value="">:: 선택 ::</option>
				<option value="T">제목</option>
				<option value="C">내용</option>
				<option value="TC">제목+내용</option>
				<option value="R">작성자</option>
			</select>
		</dd>
		<dd>
			<input type="text" name="searchText" value="${search.searchText}" style="width:200px; height: 30px;">
		</dd>
		<dd>
			<button id="btnSearch" style="width:50px; height:30px;">검색</button>
		</dd>
	</dl>
	
</form> --%>

<a href="/com/blue/write" class="disPB btnBase">등록</a>
</body>
</html>
