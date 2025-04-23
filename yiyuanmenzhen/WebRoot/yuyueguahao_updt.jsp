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
		<TITLE>修改预约挂号</TITLE>
	    
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
	document.location.href="yuyueguahao_add.jsp?id=<%=id%>";
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
			<form action="updateYuyueguahao.do" name="form1" method="post">
				      <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1"  style="border-collapse:collapse" bgcolor="#F2FDFF">
						<tr bgcolor="#E7E7E7">
							<td height="20" colspan="2" background="images/table_header.gif">修改预约挂号<input type="hidden" name="id" value="${yuyueguahao.id}" /></td>
						</tr>
						<tr ><td width="200">坐诊日期：</td><td><input name='zuozhenriqi' type='text' id='zuozhenriqi' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr>		<tr ><td width="200">坐诊科室：</td><td><input name='zuozhenkeshi' type='text' id='zuozhenkeshi' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr>		<tr ><td width="200">可预约人数：</td><td><input name='keyuyuerenshu' type='text' id='keyuyuerenshu' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr>		<tr ><td width="200">剩余预约人数：</td><td><input name='shengyuyuyuerenshu' type='text' id='shengyuyuyuerenshu' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr>		<tr ><td width="200">账号：</td><td><input name='zhanghao' type='text' id='zhanghao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr>		<tr ><td width="200">医生姓名：</td><td><input name='yishengxingming' type='text' id='yishengxingming' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr>		<tr ><td width="200">职称：</td><td><input name='zhicheng' type='text' id='zhicheng' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr>		<tr ><td width="200">挂号类型：</td><td><input name='guahaoleixing' type='text' id='guahaoleixing' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr ><td width="200">挂号科室：</td><td><input name='guahaokeshi' type='text' id='guahaokeshi' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr 0><td width="200">挂号费：</td><td><input name='guahaofei' type='text' id='guahaofei' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr 1><td width="200">用户名：</td><td><input name='yonghuming' type='text' id='yonghuming' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=(String)request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>		
		
						<tr align='center'   height="22">
						    <td width="25%"  align="right">&nbsp;
						        
						    </td>
						    <td width="75%"  align="left">
						       <input type="submit" name="querenzhuce" id="querenzhuce" value="提交" onClick="return checkform();"/>
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
						<script language="javascript">document.form1.zuozhenriqi.value='${yuyueguahao.zuozhenriqi}';</script>	<script language="javascript">document.form1.zuozhenkeshi.value='${yuyueguahao.zuozhenkeshi}';</script>	<script language="javascript">document.form1.keyuyuerenshu.value='${yuyueguahao.keyuyuerenshu}';</script>	<script language="javascript">document.form1.shengyuyuyuerenshu.value='${yuyueguahao.shengyuyuyuerenshu}';</script>	<script language="javascript">document.form1.zhanghao.value='${yuyueguahao.zhanghao}';</script>	<script language="javascript">document.form1.yishengxingming.value='${yuyueguahao.yishengxingming}';</script>	<script language="javascript">document.form1.zhicheng.value='${yuyueguahao.zhicheng}';</script>	<script language="javascript">document.form1.guahaoleixing.value='${yuyueguahao.guahaoleixing}';</script>	<script language="javascript">document.form1.guahaokeshi.value='${yuyueguahao.guahaokeshi}';</script>	<script language="javascript">document.form1.guahaofei.value='${yuyueguahao.guahaofei}';</script>	<script language="javascript">document.form1.yonghuming.value='${yuyueguahao.yonghuming}';</script>	
					 </table>
			</form>
   </body>
</html>






