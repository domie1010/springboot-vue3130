<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="com.util.db"/>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html class="no-js">
<head>
<meta />
<title>医生信息</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="qtimages/css/reset.css" rel="stylesheet" />
<link href="qtimages/css/main.css" rel="stylesheet"/>
<link href="qtimages/css/sub.css" rel="stylesheet"/>
<script src="qtimages/jquery.js"></script> 
<script src="js/jquery.SuperSlide.2.1.1.js"></script>

<script type="text/javascript" src="qtimages/inc.js"></script>
<link rel="stylesheet" href="qtimages/hsgbanner.css">
</head>
<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>

<%

%>

<body>
<jsp:include page="qttop.jsp"></jsp:include>

<div class="content">
	<div class="wrap">
		<div class="pad0">
			<div class="s_title">
				<div class="name">医生信息</div>
				<div class="menu">
					
				</div>
			</div>
			<div class="det_con"> 
					
					
<form action="ysxxList.do" name="myform" method="post" style="width:100%">
									查询   账号：<input name="zhanghao" type="text" id="zhanghao" style='border:solid 1px #000000; color:#666666' size="12" />  医生姓名：<input name="yishengxingming" type="text" id="yishengxingming" style='border:solid 1px #000000; color:#666666' size="12" /> 性别：<select name='xingbie' id='xingbie' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><option value="男">男</option><option value="女">女</option></select>  手机：<input name="shouji" type="text" id="shouji" style='border:solid 1px #000000; color:#666666' size="12" />  职称：<input name="zhicheng" type="text" id="zhicheng" style='border:solid 1px #000000; color:#666666' size="12" /> 科室：<select name='keshi' id='keshi' style='border:solid 1px #000000; color:#666666;'><option value="">所有</option><%=connDbBean.hsggetoption("keshixinxi","keshi")%></select>
									<input type="submit" value="查询" /> <input type="button" name="Submit2" value="切换视图"  onClick="javascript:location.href='ysxxListtp.do';" />
								</form>	

	
<br />
<table width="100%" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#ebf0f7">
                          <tr>
                            <td align="center" bgcolor="#ebf0f7" width="30px">序号</td>
                            <td bgcolor='#ebf0f7'>账号</td>    <td bgcolor='#ebf0f7'>密码</td>    <td bgcolor='#ebf0f7'>医生姓名</td>    <td bgcolor='#ebf0f7' width='40' align='center'>性别</td>    <td bgcolor='#ebf0f7'>手机</td>    <td bgcolor='#ebf0f7'>职称</td>    <td bgcolor='#ebf0f7'>医龄</td>    <td bgcolor='#ebf0f7'>科室</td>    <td bgcolor='#ebf0f7' width='90' align='center'>照片</td>    
                            <td align="center" bgcolor="#ebf0f7" width="150px"> 添加时间 </td>
                            <td align="center" bgcolor="#ebf0f7" width="50px"> 操作 </td>
                          </tr>
                          <%
					int i=0;
				%>
                          <c:forEach items="${list}" var="u">
                            <%
					i++;
				%>
                            <tr align="center" bgcolor="#FFFFFF">
                              <td align="center"><%=i%></td>
                             <td>${u.zhanghao}</td>    <td>${u.mima}</td>    <td>${u.yishengxingming}</td>    <td align='center'>${u.xingbie}</td>    <td>${u.shouji}</td>    <td>${u.zhicheng}</td>    <td>${u.yiling}</td>    <td>${u.keshi}</td>    <td width='90'><a href='${u.zhaopian}' target='_blank'><img src='${u.zhaopian}' width=88 height=99 border=0 /></a></td>    
                              <td align="center"> ${u.addtime} </td>
                              <td align="center"><a href="ysxxDetail.do?id=${u.id}">详细</a></td>
                            </tr>
                          </c:forEach>
                        </table>
<br>

<p align="center"> <c:if test="${sessionScope.p==1 }">
		 <c:if test="${page.page>1}">
              <a href="ysxxList.do?page=1" >首页</a>
             <a href="ysxxList.do?page=${page.page-1 }"> 上一页</a>             </c:if>
    	     <c:if test="${page.page<page.totalPage}">
			<a href="ysxxList.do?page=${page.page+1 }">下一页</a>
			<a href="ysxxList.do?page=${page.totalPage }">末页</a>		    </c:if>		
	</c:if>
	</p>




					
			</div>	
		</div>
	</div>		
</div>
<jsp:include page="qtdown.jsp"></jsp:include>


</body>
</html>

