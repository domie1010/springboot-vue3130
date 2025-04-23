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
	<TITLE>预约挂号查询</TITLE>
	<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
-->
</style>
	</head>
	<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr valign="top">
				<td>
					<table width="100%" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#aec3de">
						<tr align="left" bgcolor="#F2FDFF">
							<td colspan="17" background="images/table_header.gif">预约挂号列表</td>
						</tr>
					</table>
				</td>
			</tr>
			
			<tr valign="top">
			  <td bgcolor="#FFFFFF">
			  <table width="100%" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#aec3de">
						
					<tr align="right" bgcolor="#ebf0f7">
					  <td colspan="21">
					  <table width="100%" border="0" align="center" cellpadding="4" cellspacing="1" >
						<tr align="left" >
							<td colspan="17">
								<form action="yuyueguahaoList.do" name="myform" method="post">
									查询   坐诊日期：<input name="zuozhenriqi" type="text" id="zuozhenriqi" style='border:solid 1px #000000; color:#666666' size="12" />  坐诊科室：<input name="zuozhenkeshi" type="text" id="zuozhenkeshi" style='border:solid 1px #000000; color:#666666' size="12" />  账号：<input name="zhanghao" type="text" id="zhanghao" style='border:solid 1px #000000; color:#666666' size="12" />  医生姓名：<input name="yishengxingming" type="text" id="yishengxingming" style='border:solid 1px #000000; color:#666666' size="12" />  职称：<input name="zhicheng" type="text" id="zhicheng" style='border:solid 1px #000000; color:#666666' size="12" />  挂号类型：<input name="guahaoleixing" type="text" id="guahaoleixing" style='border:solid 1px #000000; color:#666666' size="12" />  挂号科室：<input name="guahaokeshi" type="text" id="guahaokeshi" style='border:solid 1px #000000; color:#666666' size="12" />  用户名：<input name="yonghuming" type="text" id="yonghuming" style='border:solid 1px #000000; color:#666666' size="12" />
									<input type="submit" value="查询" />
								</form>								</td>
						</tr></table>
					  </td>
			    </tr>
					
						<tr align="center">
						<td style="padding-left:0px; padding-right:0px;"><table width="100%" border="0" align="center" cellpadding="4" cellspacing="1" bgcolor="#ebf0f7">
                          <tr>
                            <td align="center" bgcolor="#ebf0f7" width="30px">序号</td>
                            <td align='center'>坐诊日期</td>    <td align='center'>坐诊科室</td>    <td align='center'>可预约人数</td>    <td align='center'>剩余预约人数</td>    <td align='center'>账号</td>    <td align='center'>医生姓名</td>    <td align='center'>职称</td>    <td align='center'>挂号类型</td>    <td align='center'>挂号科室</td>    <td align='center'>挂号费</td>    <td align='center'>用户名</td>    <td  width='80' align='center'>是否审核</td>
                            <td align="center" bgcolor="#ebf0f7" width="150px"> 添加时间 </td>
                            <td align="center" bgcolor="#ebf0f7" width="150px"> 操作 </td>
                          </tr>
                          <%
					int i=0;
				%>
                          <c:forEach items="${list }" var="u">
                            <%
					i++;
				%>
                            <tr align="center" bgcolor="#FFFFFF">
                              <td align="center"><%=i%></td>
                             <td>${u.zuozhenriqi}</td>    <td>${u.zuozhenkeshi}</td>    <td>${u.keyuyuerenshu}</td>    <td>${u.shengyuyuyuerenshu}</td>    <td>${u.zhanghao}</td>    <td>${u.yishengxingming}</td>    <td>${u.zhicheng}</td>    <td>${u.guahaoleixing}</td>    <td>${u.guahaokeshi}</td>    <td>${u.guahaofei}</td>    <td>${u.yonghuming}</td>    <td align='center'>${u.issh} <input type="button" value="审核" onclick="javascript:location.href='sh.jsp?id=${u.id}&yuan=${u.issh}&tablename=yuyueguahao'"/></td>
                              <td align="center"> ${u.addtime } </td>
                              <td align="center"><a href="doUpdateYuyueguahao.do?id=${u.id }">编辑</a>  <a href="deleteYuyueguahao.do?id=${u.id }"
										onclick="{if(confirm('确定要删除吗?')){return true;}return false;}">删除</a> <a href="yuyueguahaoDetail.do?id=${u.id}">详细</a></td>
                            </tr>
                          </c:forEach>
                        </table></td>
						</tr>
					</table>
					
					
			  </td>
	  </tr>
		</table>
		
		
		
			<p align="center"> <c:if test="${sessionScope.p==1 }">
		 <c:if test="${page.page>1}">
              <a href="yuyueguahaoList.do?page=1" >首页</a>
             <a href="yuyueguahaoList.do?page=${page.page-1 }"> 上一页</a>             </c:if>
    	     <c:if test="${page.page<page.totalPage}">
			<a href="yuyueguahaoList.do?page=${page.page+1 }">下一页</a>
			<a href="yuyueguahaoList.do?page=${page.totalPage }">末页</a>		    </c:if>		
	</c:if>
	</p>
			
			
			
			
			
	</body>
</html>
