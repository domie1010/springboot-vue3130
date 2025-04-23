<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="yuyueguahaohsgb" scope="page" class="com.bean.YuyueguahaoBean" /> 

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=yuyueguahao.xls");
%>
<html>
  <head>
    <title>预约挂号</title>
  </head>

  <body >
 <%
			String sql="select * from yuyueguahao  order by id desc";

			
			%>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td align='center'>坐诊日期</td>    <td align='center'>坐诊科室</td>    <td align='center'>可预约人数</td>    <td align='center'>剩余预约人数</td>    <td align='center'>账号</td>    <td align='center'>医生姓名</td>    <td align='center'>职称</td>    <td align='center'>挂号类型</td>    <td align='center'>挂号科室</td>    <td align='center'>挂号费</td>    <td align='center'>用户名</td>    <td  width='80' align='center'>是否审核</td>
	
    <td width="120" align="center" bgcolor="CCFFFF">添加时间</td>
    
  </tr>
   <%		
				List pagelist3=yuyueguahaohsgb.getAllYuyueguahao(14);
			if(!pagelist3.isEmpty()){
				for(int i=0;i<pagelist3.size();i++){
					List pagelist2 =(ArrayList)pagelist3.get(i);
			%>
  <tr>
    <td  align="center"><%=i+1 %></td>
    <td>${u.zuozhenriqi}</td>    <td>${u.zuozhenkeshi}</td>    <td>${u.keyuyuerenshu}</td>    <td>${u.shengyuyuyuerenshu}</td>    <td>${u.zhanghao}</td>    <td>${u.yishengxingming}</td>    <td>${u.zhicheng}</td>    <td>${u.guahaoleixing}</td>    <td>${u.guahaokeshi}</td>    <td>${u.guahaofei}</td>    <td>${u.yonghuming}</td>    <td align='center'>${u.issh} <input type="button" value="审核" onclick="javascript:location.href='sh.jsp?id=${u.id}&yuan=${u.issh}&tablename=yuyueguahao'"/></td>
	
	
   
  </tr>
  	<%
  }}
   %>
   
</table>
<br>
  </body>
</html>

