<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>
<html>
  <head>
    <title>医生信息详细</title>
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style>

  </head>

  <body >

  医生信息详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#CBD8AC" style="border-collapse:collapse">  
   <tr>
     <td width='11%' height=44>账号：</td><td width='39%'>${yishengxinxi.zhanghao}</td><td  rowspan=8 align=center><a href=${yishengxinxi.zhaopian} target=_blank><img src=${yishengxinxi.zhaopian} width=228 height=215 border=0></a></td></tr><tr><td width='11%' height=44>密码：</td><td width='39%'>${yishengxinxi.mima}</td></tr><tr><td width='11%' height=44>医生姓名：</td><td width='39%'>${yishengxinxi.yishengxingming}</td></tr><tr><td width='11%' height=44>性别：</td><td width='39%'>${yishengxinxi.xingbie}</td></tr><tr><td width='11%' height=44>手机：</td><td width='39%'>${yishengxinxi.shouji}</td></tr><tr><td width='11%' height=44>职称：</td><td width='39%'>${yishengxinxi.zhicheng}</td></tr><tr><td width='11%' height=44>医龄：</td><td width='39%'>${yishengxinxi.yiling}</td></tr><tr><td width='11%' height=44>科室：</td><td width='39%'>${yishengxinxi.keshi}</td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>

