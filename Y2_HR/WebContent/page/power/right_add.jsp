<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>添加角色</title>
	 
		
	<%@include file="/page/header.jsp" %>
		<script type="text/javascript" src="/Y2_HR/javascript/right_add.js"></script>
	
	</head>
	<body>
		<form method="post" action="/Y2_HR/urr/powerAction!roleAdd">
			<table width="100%">
				<tr>
					<td>
						<font color="black">您正在做的业务是：人力资源--权限管理--添加角色</font>
					</td>
				</tr>
				<tr>
					<td align="right">
						<input type="submit" value="保存" class="BUTTON_STYLE1"/>
						<input type="button" value="返回" class="BUTTON_STYLE1"
							onclick="history.back()">
					</td>
				</tr>
			</table>
			<table width="100%" border="1" cellpadding=3 cellspacing=1
				bordercolorlight=#848284 bordercolordark=#eeeeee
				class="TABLE_STYLE1">
				<tr>
					<td class="TD_STYLE1">角色名称</td>
					<td class="TD_STYLE2">
						<input type="text" id="roleName" name="sysRole.roleName"/>
					</td>
					<td class="TD_STYLE1">角色说明</td>
					<td class="TD_STYLE2">
						<input type="text" name="sysRole.roleDesc"/>
					</td>
				</tr>
				<tr>
					<td class="TD_STYLE1">角色是否可用</td>
					<td colspan="3" class="TD_STYLE2">
						<select name="sysRole.roleFlag">
							<option value="1">是</option>
							<option value="0">否</option>
						</select>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
