<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="paibanxinxihsgb" scope="page" class="com.bean.PaibanxinxiBean" /> 

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=paibanxinxi.xls");
%>
<html>
  <head>
    <title>�Ű���Ϣ</title>
  </head>

  <body >
 <%
			String sql="select * from paibanxinxi  order by id desc";

			
			%>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td align='center'>��������</td>    <td align='center'>�������</td>    <td align='center'>��ԤԼ����</td>    <td align='center'>ʣ��ԤԼ����</td>    <td align='center'>�˺�</td>    <td align='center'>ҽ������</td>    <td align='center'>ְ��</td>    <td align='center'>ҽ��</td>    <td align='center'>����</td>    
	
    <td width="120" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
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

