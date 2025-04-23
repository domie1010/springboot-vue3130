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
		<TITLE>修改排班信息</TITLE>
	    
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
	document.location.href="paibanxinxi_add.jsp?id=<%=id%>";
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
			<form action="updatePaibanxinxi.do" name="form1" method="post">
				      <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1"  style="border-collapse:collapse" bgcolor="#F2FDFF">
						<tr bgcolor="#E7E7E7">
							<td height="20" colspan="2" background="images/table_header.gif">修改排班信息<input type="hidden" name="id" value="${paibanxinxi.id}" /></td>
						</tr>
						<tr ><td width="200">坐诊日期：</td><td><input name='zuozhenriqi' type='text' id='zuozhenriqi' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelzuozhenriqi' /></td></tr>		<tr ><td width="200">坐诊科室：</td><td><input name='zuozhenkeshi' type='text' id='zuozhenkeshi' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;*<label id='clabelzuozhenkeshi' /></td></tr>		<tr ><td width="200">可预约人数：</td><td><input name='keyuyuerenshu' type='text' id='keyuyuerenshu' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelkeyuyuerenshu' />必需数字型</td></tr>		<tr ><td width="200">剩余预约人数：</td><td><input name='shengyuyuyuerenshu' type='text' id='shengyuyuyuerenshu' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelshengyuyuyuerenshu' />必需数字型</td></tr>		<tr ><td width="200">账号：</td><td><input name='zhanghao' type='text' id='zhanghao' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=(String)request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>		<tr ><td width="200">医生姓名：</td><td><input name='yishengxingming' type='text' id='yishengxingming' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr><script language="javascript">document.form1.yishengxingming.value='<%=connDbBean.readzd("yishengxinxi","yishengxingming","zhanghao",(String)request.getSession().getAttribute("username"))%>';document.form1.yishengxingming.setAttribute("readOnly",'true');</script>		<tr ><td width="200">职称：</td><td><input name='zhicheng' type='text' id='zhicheng' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr><script language="javascript">document.form1.zhicheng.value='<%=connDbBean.readzd("yishengxinxi","zhicheng","zhanghao",(String)request.getSession().getAttribute("username"))%>';document.form1.zhicheng.setAttribute("readOnly",'true');</script>		<tr ><td width="200">医龄：</td><td><input name='yiling' type='text' id='yiling' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr><script language="javascript">document.form1.yiling.value='<%=connDbBean.readzd("yishengxinxi","yiling","zhanghao",(String)request.getSession().getAttribute("username"))%>';document.form1.yiling.setAttribute("readOnly",'true');</script>		<tr ><td width="200">科室：</td><td><input name='keshi' type='text' id='keshi' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr><script language="javascript">document.form1.keshi.value='<%=connDbBean.readzd("yishengxinxi","keshi","zhanghao",(String)request.getSession().getAttribute("username"))%>';document.form1.keshi.setAttribute("readOnly",'true');</script>		
		
						<tr align='center'   height="22">
						    <td width="25%"  align="right">&nbsp;
						        
						    </td>
						    <td width="75%"  align="left">
						       <input type="submit" name="querenzhuce" id="querenzhuce" value="提交" onClick="return checkform();"/>
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
						<script language="javascript">document.form1.zuozhenriqi.value='${paibanxinxi.zuozhenriqi}';</script>	<script language="javascript">document.form1.zuozhenkeshi.value='${paibanxinxi.zuozhenkeshi}';</script>	<script language="javascript">document.form1.keyuyuerenshu.value='${paibanxinxi.keyuyuerenshu}';</script>	<script language="javascript">document.form1.shengyuyuyuerenshu.value='${paibanxinxi.shengyuyuyuerenshu}';</script>	<script language="javascript">document.form1.zhanghao.value='${paibanxinxi.zhanghao}';</script>	<script language="javascript">document.form1.yishengxingming.value='${paibanxinxi.yishengxingming}';</script>	<script language="javascript">document.form1.zhicheng.value='${paibanxinxi.zhicheng}';</script>	<script language="javascript">document.form1.yiling.value='${paibanxinxi.yiling}';</script>	<script language="javascript">document.form1.keshi.value='${paibanxinxi.keshi}';</script>	
					 </table>
			</form>
   </body>
</html>






<script language=javascript >  
 
 function checkform(){  
 
	var zuozhenriqiobj = document.getElementById("zuozhenriqi"); if(zuozhenriqiobj.value==""){document.getElementById("clabelzuozhenriqi").innerHTML="&nbsp;&nbsp;<font color=red>请输入坐诊日期</font>";return false;}else{document.getElementById("clabelzuozhenriqi").innerHTML="  "; } 	var zuozhenkeshiobj = document.getElementById("zuozhenkeshi"); if(zuozhenkeshiobj.value==""){document.getElementById("clabelzuozhenkeshi").innerHTML="&nbsp;&nbsp;<font color=red>请输入坐诊科室</font>";return false;}else{document.getElementById("clabelzuozhenkeshi").innerHTML="  "; } 	        


return true;   
}   
popheight=450;
</script>  
