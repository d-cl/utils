<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

									<!-- 分页 -->
	<c:choose>
		<c:when test="${page.totalPage<=5 }">
			<c:set var="begin" value="1"/>
			<c:set var="end" value="${page.totalPage }"/>
		</c:when>
		<c:when test="${page.pageNo<=3 }">
			<c:set var="begin" value="1"/>
			<c:set var="end" value="5"/>
		</c:when>
		<c:otherwise>
			<c:set var="begin" value="${page.pageNo-2 }"/>
			<c:set var="end" value="${page.pageNo+2 }"/>
			<c:if test="${end>page.totalPage }">
				<c:set var="begin" value="${page.totalPage-4 }"/>
				<c:set var="end" value="${page.totalPage }"/>
			</c:if>
		</c:otherwise>
	</c:choose>
	<div id="page_nav" align="center">
		<a href="?pageNo=1${StringB }">首页</a>
		<a href="?pageNo=${page.pageNo -1}${StringB }">上一页</a>
		<c:forEach begin="${begin }" end="${end }" var="index">
			<c:if test="${page.pageNo ==index }">
				[${index }]
			</c:if>
			<c:if test="${page.pageNo !=index }">
				<a href="?pageNo="+index${StringB }>${index }</a>
			</c:if>
		</c:forEach>
		<a href="?pageNo=${page.pageNo +1}${StringB }">下一页</a>
		<a href="?pageNo=${page.totalPage}${StringB }">末页</a>
		共${page.totalPage }页，${page.totalRecord }条记录 到第<input value="${page.pageNo }" name="pn" id="pn_input" size="1" />页
		<input id="btn" type="button" value="确定">
	</div>
	<script type="text/javascript">
		$(function(){
			$('#btn').click(function(){
				var pageNo=$('#pn_input').val();
				window.location="?pageNo="+pageNo+${StringB };
			});
		});
	</script>
