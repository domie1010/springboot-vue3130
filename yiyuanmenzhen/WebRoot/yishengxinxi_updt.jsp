<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>


<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
<script type="text/javascript" src="js/popup.js"></script>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<TITLE>修改医生信息</TITLE>
	    
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style>
       
	</head>
<%
  String id="";
 
   %>
<script language="javascript">

function gows()
{
	document.location.href="yishengxinxi_add.jsp?id=<%=id%>";
}
function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
	}
}
</script>
	<body>
			<form action="updateYishengxinxi.do" name="form1" method="post">
				      <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1"  style="border-collapse:collapse" bgcolor="#F2FDFF">
						<tr bgcolor="#E7E7E7">
							<td height="20" colspan="2" background="images/table_header.gif">修改医生信息<input type="hidden" name="id" value="${yishengxinxi.id}" /></td>
						</tr>
						<tr ><td width="200">账号：</td><td><input name='zhanghao' type='text' id='zhanghao' value='' onblur='hsgcheck()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelzhanghao' /></td></tr>		<tr ><td width="200">密码：</td><td><input name='mima' type='text' id='mima' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelmima' /></td></tr>		<tr ><td width="200">医生姓名：</td><td><input name='yishengxingming' type='text' id='yishengxingming' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr ><td width="200">性别：</td><td><select name='xingbie' id='xingbie'><option value="男">男</option><option value="女">女</option></select></td></tr>		<tr ><td width="200">手机：</td><td><input name='shouji' type='text' id='shouji' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr ><td width="200">职称：</td><td><input name='zhicheng' type='text' id='zhicheng' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr ><td width="200">医龄：</td><td><input name='yiling' type='text' id='yiling' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr ><td width="200">科室：</td><td><select name='keshi' id='keshi' style=' height:19px; border:solid 1px #000000; color:#666666'><%=connDbBean.hsggetoption("keshixinxi","keshi")%></select></td></tr>		<tr ><td width="200">照片：</td><td><input name='zhaopian' type='text' id='zhaopian' size='50' value='' onblur='' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='上传' onClick="up('zhaopian')" style='border:solid 1px #000000; color:#666666'/></td></tr>		
		
						<tr align='center'   height="22">
						    <td width="25%"  align="right">&nbsp;
						        
						    </td>
						    <td width="75%"  align="left">
						       <input type="submit" name="querenzhuce" id="querenzhuce" value="提交" onClick="return checkform();"/>
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
						<script language="javascript">document.form1.zhanghao.value='${yishengxinxi.zhanghao}';</script>	<script language="javascript">document.form1.mima.value='${yishengxinxi.mima}';</script>	<script language="javascript">document.form1.yishengxingming.value='${yishengxinxi.yishengxingming}';</script>	<script language="javascript">document.form1.xingbie.value='${yishengxinxi.xingbie}';</script>	<script language="javascript">document.form1.shouji.value='${yishengxinxi.shouji}';</script>	<script language="javascript">document.form1.zhicheng.value='${yishengxinxi.zhicheng}';</script>	<script language="javascript">document.form1.yiling.value='${yishengxinxi.yiling}';</script>	<script language="javascript">document.form1.keshi.value='${yishengxinxi.keshi}';</script>	<script language="javascript">document.form1.zhaopian.value='${yishengxinxi.zhaopian}';</script>	
					 </table>
			</form>
   </body>
</html>






<script language=javascript >  
 
 function checkform(){  
 
	var zhanghaoobj = document.getElementById("zhanghao"); if(zhanghaoobj.value==""){document.getElementById("clabelzhanghao").innerHTML="&nbsp;&nbsp;<font color=red>请输入账号</font>";return false;}else{document.getElementById("clabelzhanghao").innerHTML="  "; } 	var mimaobj = document.getElementById("mima"); if(mimaobj.value==""){document.getElementById("clabelmima").innerHTML="&nbsp;&nbsp;<font color=red>请输入密码</font>";return false;}else{document.getElementById("clabelmima").innerHTML="  "; } 	


return true;   
}   
popheight=450;
</script>  
