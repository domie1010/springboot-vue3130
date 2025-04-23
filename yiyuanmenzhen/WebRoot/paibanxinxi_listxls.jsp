<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="paibanxinxihsgb" scope="page" class="com.bean.PaibanxinxiBean" /> 

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=paibanxinxi.xls");
%>
<html>
  <head>
    <title>排班信息</title>
  </head>

  <body >
 <%
			String sql="select * from paibanxinxi  order by id desc";

			
			%>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td align='center'>坐诊日期</td>    <td align='center'>坐诊科室</td>    <td align='center'>可预约人数</td>    <td align='center'>剩余预约人数</td>    <td align='center'>账号</td>    <td align='center'>医生姓名</td>    <td align='center'>职称</td>    <td align='center'>医龄</td>    <td align='center'>科室</td>    
	
    <td width="120" align="center" bgcolor="CCFFFF">添加时间</td>
    
  </tr>
   <%		
				List pagelist3=paibanxinxihsgb.getAllPaibanxinxi(11);
			if(!pagelist3.isEmpty()){
				for(int i=0;i<pagelist3.size();i++){
					List pagelist2 =(ArrayList)pagelist3.get(i);
			%>
  <tr>
    <td  align="center"><%=i+1 %></td>
    <td>${u.zuozhenriqi}</td>    <td>${u.zuozhenkeshi}</td>    <td>${u.keyuyuerenshu}</td>    <td>${u.shengyuyuyuerenshu}</td>    <td>${u.zhanghao}</td>    <td>${u.yishengxingming}</td>    <td>${u.zhicheng}</td>    <td>${u.yiling}</td>    <td>${u.keshi}</td>    
	
	
   
  </tr>
  	<%
  }}
   %>
   
</table>
<br>
  </body>
</html>

