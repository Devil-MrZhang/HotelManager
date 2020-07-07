
<%@ page language="java" pageEncoding="UTF-8"%>

<HTML>
<HEAD>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="${pageContext.request.contextPath}/admin/css/Style.css"
	type="text/css" rel="stylesheet">


</HEAD>

<style type="text/css">

</style>
<body>
	

	<form id="userAction_save_do" name="Form1"
		action="${pageContext.request.contextPath}/admin/update" method="post" enctype="multipart/form-data">
	
		<input type="hidden" name="id" value="${room.id}"/>
		<table cellSpacing="1" cellPadding="5" width="100%" align="center"
			bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
			<tr>
				<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
					height="26"><strong><STRONG>编辑房间</STRONG> </strong></td>
			</tr>


			<tr>
				<td align="center" bgColor="#f5fafe" class="ta_01">房间名称：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="text"
					name="roomnum" class="bg" value="${room.roomnum}" /></td>
				<td align="center" bgColor="#f5fafe" class="ta_01">房间价格：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="text"
					name="price" class="bg"   value="${room.price}"/></td>
			</tr>
			<tr>
				<td align="center" bgColor="#f5fafe" class="ta_01">床数量：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="text"
					name=bednumber class="bg"  value="${room.bednumber}" /></td>
				<td align="center" bgColor="#f5fafe" class="ta_01">房间类别：</td>
				<td class="ta_01" bgColor="#ffffff">				
						<select name="type"
								id="category">
									<option value="" selected="selected">--选择商品类加--</option>
									<option value="1">商务大床</option>
									<option value="2">标准间</option>
									<option value="3">家庭床</option>									
							</select>
				
				</td>
			</tr>


			<tr>
				<td align="center" bgColor="#f5fafe" class="ta_01">房间图片：</td>
				<td class="ta_01" bgColor="#ffffff" colSpan="3">
				<input
					type="file"  size="30" name="file" /></td>
			</tr>
			
			<TR>
				<td align="center" colSpan="4" class="sep1"><img
					src="${pageContext.request.contextPath}/admin/images/shim.gif">
				</td>
			</TR>


			<tr>
				<td class="ta_01" style="WIDTH: 100%" align="center"
					bgColor="#f5fafe" colSpan="4"><input type="submit"
					class="button_ok" value="确定"> <FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>



					<input type="reset" value="重置" class="button_cancel"> <FONT
					face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> <INPUT
					class="button_ok" type="button" onclick="history.go(-1)" value="返回" />
					<span id="Label1"> </span></td>
			</tr>
		</table>
		
	</form>




</body>
</HTML>