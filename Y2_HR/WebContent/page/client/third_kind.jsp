<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-trasitional.dtd">
<html>
<head>
<%@include file="/page/header.jsp"%>
<script type="text/javascript">
	function deleteThirdKind(id) {
		$.ajax({

			url : "/HR_Fist/customiz/customizAction!doDeleteThirdKind",
			data : "cftk.ftkId=" + id,
			dataType : "text",
			success : function() {
				alert("删除成功！");
				location.reload();
			},
			type : "post"
		});
	}
</script>
</head>
<script type="text/javascript">
	function submission() {
		document.forms[0].submit();
	}

	function page(currentPage) {
		document.getElementById("pid").value = currentPage;
		document.forms[0].submit();
	}
</script>

<body>
	<form action="../customiz/customizAction!findThirdKind" method="post">
		<table width="100%">
			<tr>
				<td><font color="black">您正在做的业务是：人力资源--客户化设置--人力资源档案管理设置--III级机构设置
				</font></td>
			</tr>
			<tr>
				<td align="right"><input type="button" value="添加"
					class="BUTTON_STYLE1"
					onclick="window.location.href='/Y2_HR/client/clientAction!findFirsts3'" /></td>
			</tr>
		</table>
		<table width="100%" border="1" cellpadding=0 cellspacing=1
			bordercolorlight=#848284 bordercolordark=#eeeeee class="TABLE_STYLE1">
			<tr>
				<td width="14%" class="TD_STYLE1">I级机构名称</td>
				<td width="14%" class="TD_STYLE1">II级机构名称</td>
				<td width="14%" class="TD_STYLE1">II级机构编号</td>
				<td width="14%" class="TD_STYLE1">III级机构名称</td>
				<td width="17%" class="TD_STYLE1">销售责任人编号</td>
				<td width="17%" class="TD_STYLE1">是否为零售店</td>
				<td width="5%" class="TD_STYLE1">变更</td>
				<td width="5%" class="TD_STYLE1">删除</td>
			</tr>
			<c:forEach items="${thirds }" var="third">
			<tr>
				<td class="TD_STYLE2">${third.firstKindName }</td>
				<td class="TD_STYLE2">${third.secondKindName }</td>
				<td class="TD_STYLE2">${third.secondKindId }</td>
				<td class="TD_STYLE2">${third.thirdKindName }</td>
				<td class="TD_STYLE2">${third.thirdKindSaleId}</td>
				<c:choose>
				<c:when test="${third.thirdKindIsRetail eq 1}">
				<td class="TD_STYLE2">是</td>
				</c:when>
				<c:otherwise>
				<td class="TD_STYLE2">否</td>
				</c:otherwise>
				</c:choose>
				<td class="TD_STYLE2"><a href="/Y2_HR/client/clientAction!findThirdById?id=${third.id}">变更</a></td>
				<td class="TD_STYLE2"><a href="/Y2_HR/client/clientAction!deleteThird?id=${third.id}">删除</a>
				</td>
			</tr>
			</c:forEach>
		</table>
		<br> <br>
				<th colspan="7" class="pager"></th>
				<p>
	</form>
</body>
</html>

