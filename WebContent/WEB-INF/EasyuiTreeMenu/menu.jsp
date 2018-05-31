<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@include file="/commons/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Tree Actions - jQuery EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="${ctx}/static/css/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="${ctx}/static/css/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="${ctx}/static/css/demo.css">
	<script type="text/javascript" src="${ctx}/static/jquery/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="${ctx}/static/jquery/jquery.easyui.min.js"></script>
</head>
<body>
	
	<ul id="tt" class="easyui-tree" data-options="url:'${ctx}/user/menu'"></ul>
	<script type="text/javascript">
		$(function(){
			$('#tt').tree({
				onClick: function(node){
					if(node.url){
						window.parent.parent.document.getElementById("welcome").src="${ctx}"+node.url;
					}
				}
			});
		})
	</script>
	<!-- <script type="text/javascript">
		function collapseAll(){
			$('#tt').tree('collapseAll');
		}
		function expandAll(){
			$('#tt').tree('expandAll');
		}
		function expandTo(){
			var node = $('#tt').tree('find',113);
			$('#tt').tree('expandTo', node.target).tree('select', node.target);
		}
		function getSelected(){
			var node = $('#tt').tree('getSelected');
			if (node){
				var s = node.text;
				if (node.attributes){
					s += ","+node.attributes.p1+","+node.attributes.p2;
				}
				alert(s);
			}
		}
	</script> -->
</body>
</html>