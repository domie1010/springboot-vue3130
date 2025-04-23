<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<html>
  <head>
    <title>排班信息详细</title>
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style>

  </head>

  <body >

  排班信息详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#CBD8AC" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>坐诊日期：</td><td width='39%'>${paibanxinxi.zuozhenriqi}</td>     <td width='11%'>坐诊科室：</td><td width='39%'>${paibanxinxi.zuozhenkeshi}</td></tr><tr>     <td width='11%'>可预约人数：</td><td width='39%'>${paibanxinxi.keyuyuerenshu}</td>     <td width='11%'>剩余预约人数：</td><td width='39%'>${paibanxinxi.shengyuyuyuerenshu}</td></tr><tr>     <td width='11%'>账号：</td><td width='39%'>${paibanxinxi.zhanghao}</td>     <td width='11%'>医生姓名：</td><td width='39%'>${paibanxinxi.yishengxingming}</td></tr><tr>     <td width='11%'>职称：</td><td width='39%'>${paibanxinxi.zhicheng}</td>     <td width='11%'>医龄：</td><td width='39%'>${paibanxinxi.yiling}</td></tr><tr>     <td width='11%'>科室：</td><td width='39%'>${paibanxinxi.keshi}</td>     <td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>

