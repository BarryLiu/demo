<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>  
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		
<%@include file="/page/header.jsp"  %>

<script type="text/javascript" src="/Y2_HR/javascript/query_list.js"></script>

</head>
	
<!-- 中转的表单数据 -->
<input type="hidden" id="firstSelect" value="${param['humanFile.firstKindId']}">
<input type="hidden" id="secondSelect" value="${param['humanFile.secondKindId']}">
<input type="hidden" id="thirdSelect" value="${param['humanFile.thirdKindId']}">
<input type="hidden" id="majorKindSelect" value="${param['humanFile.humanMajorKindId']}">
<input type="hidden" id="majorSelect" value="${param['humanFile.humanMajorId']}">


	<body>
		<form action="" method="post">
			<table width="100%">
				<tr>
					<td>
						<font color="black">您正在做的业务是：人力资源--人力资源档案管理--人力资源档案查询 </font>
					</td>
				</tr>
				<tr>
					<td>
						符合条件的人力资源档案总数：14例
					</td>
				</tr>
			</table>
			<table id="tb" width="100%" border="1" cellpadding=5 cellspacing=1
				class="TABLE_STYLE1"></table>
	 
			
			
			<p style="text-align: center;">
					<a href="query_list.html" style="color:black;">首页</a>
					<a href="query_list.html" style="color:black;">上一页</a>
								<font color="red">1</font> 
								<a href="query_list.html" style="color:black;">2</a> 
     				<a href="query_list.html" style="color:black;">尾页</a> 
				
			</p>
		</form>
 
	</body>
</html>
