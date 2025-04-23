<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="yishengxinxihsgb" scope="page" class="com.bean.YishengxinxiBean" /> 

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=yishengxinxi.xls");
%>
<html>
  <head>
    <title>医生信息</title>
  </head>

  <body >
 <%
			String sql="select * from yishengxinxi  order by id desc";

			
			%>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td align='center'>账号</td>    <td align='center'>密码</td>    <td align='center'>医生姓名</td>    <td  width='40' align='center'>性别</td>    <td align='center'>手机</td>    <td align='center'>职称</td>    <td align='center'>医龄</td>    <td align='center'>科室</td>    <td  width='90' align='center'>照片</td>    
	
    <td width="120" align="center" bgcolor="CCFFFF">添加时间</td>
    
  </tr>
   <%		
				List pagelist3=yishengxinxihsgb.getAllYishengxinxi(11);
			if(!pagelist3.isEmpty()){
				for(int i=0;i<pagelist3.size();i++){
					List pagelist2 =(ArrayList)pagelist3.get(i);
			%>
  <tr>
    <td  align="center"><%=i+1 %></td>
    <td>${u.zhanghao}</td>    <td>${u.mima}</td>    <td>${u.yishengxingming}</td>    <td align='center'>${u.xingbie}</td>    <td>${u.shouji}</td>    <td>${u.zhicheng}</td>    <td>${u.yiling}</td>    <td>${u.keshi}</td>    <td width='90' align='center'><a href='${u.zhaopian}' target='_blank'><img src='${u.zhaopian}' width=88 height=99 border=0 /></a></td>    
	
	
   
  </tr>
  	<%
  }}
   %>
   
</table>
<br>
  </body>
</html>

