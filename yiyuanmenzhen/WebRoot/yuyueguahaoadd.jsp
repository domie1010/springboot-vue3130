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
<title>预约挂号</title>

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
<%
if(request.getSession().getAttribute("username")==null)
{
	out.print("<script>alert('对不起,请您先登陆!');location.href='index.do';</script>");
	return;
}
  String id="";


 



   %>


	
	<script language="javascript">
function checkform()
{


	if(parseInt(document.form1.shengyuyuyuerenshu.value)<1){alert("对不起，人数已满");return false;}
	
	
}
function gow()
{
	document.location.href="yuyueguahaoadd.jsp?id=<%=id%>";
}
</script>


<body>
<jsp:include page="qttop.jsp"></jsp:include>

<div class="content">
	<div class="wrap">
		<div class="pad0">
			<div class="s_title">
				<div class="name">预约挂号</div>
				<div class="menu">
					
				</div>
			</div>
			<div class="det_con"> 
					
					<% 




%>

  
<form action="addYuyueguahao.do" name="form1" method="post">
				      <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#CCCCCC" style="border-collapse:collapse" class="newsline">
						
						<tr ><td width="200">坐诊日期：</td><td><input name='zuozhenriqi' type='text' id='zuozhenriqi' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.zuozhenriqi.value='<%=connDbBean.readzd("paibanxinxi","zuozhenriqi","id",request.getParameter("id"))%>';document.form1.zuozhenriqi.setAttribute("readOnly",'true');</script>
		<tr ><td width="200">坐诊科室：</td><td><input name='zuozhenkeshi' type='text' id='zuozhenkeshi' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.zuozhenkeshi.value='<%=connDbBean.readzd("paibanxinxi","zuozhenkeshi","id",request.getParameter("id"))%>';document.form1.zuozhenkeshi.setAttribute("readOnly",'true');</script>
		<tr ><td width="200">可预约人数：</td><td><input name='keyuyuerenshu' type='text' id='keyuyuerenshu' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.keyuyuerenshu.value='<%=connDbBean.readzd("paibanxinxi","keyuyuerenshu","id",request.getParameter("id"))%>';document.form1.keyuyuerenshu.setAttribute("readOnly",'true');</script>
		<tr ><td width="200">剩余预约人数：</td><td><input name='shengyuyuyuerenshu' type='text' id='shengyuyuyuerenshu' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.shengyuyuyuerenshu.value='<%=connDbBean.readzd("paibanxinxi","shengyuyuyuerenshu","id",request.getParameter("id"))%>';document.form1.shengyuyuyuerenshu.setAttribute("readOnly",'true');</script>
		<tr ><td width="200">账号：</td><td><input name='zhanghao' type='text' id='zhanghao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.zhanghao.value='<%=connDbBean.readzd("paibanxinxi","zhanghao","id",request.getParameter("id"))%>';document.form1.zhanghao.setAttribute("readOnly",'true');</script>
		<tr ><td width="200">医生姓名：</td><td><input name='yishengxingming' type='text' id='yishengxingming' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.yishengxingming.value='<%=connDbBean.readzd("paibanxinxi","yishengxingming","id",request.getParameter("id"))%>';document.form1.yishengxingming.setAttribute("readOnly",'true');</script>
		<tr ><td width="200">职称：</td><td><input name='zhicheng' type='text' id='zhicheng' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.zhicheng.value='<%=connDbBean.readzd("paibanxinxi","zhicheng","id",request.getParameter("id"))%>';document.form1.zhicheng.setAttribute("readOnly",'true');</script>
		<tr ><td width="200">挂号类型：</td><td><input name='guahaoleixing' type='text' id='guahaoleixing' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr ><td width="200">挂号科室：</td><td><input name='guahaokeshi' type='text' id='guahaokeshi' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr 0><td width="200">挂号费：</td><td><input name='guahaofei' type='text' id='guahaofei' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr 1><td width="200">用户名：</td><td><input name='yonghuming' type='text' id='yonghuming' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=(String)request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>
		
		
						<tr align='center'   height="22">
						    <td width="25%"  align="right">&nbsp;
						        
						    </td>
						    <td width="75%"  align="left">
						      <input type="submit" name="querenzhuce" id="querenzhuce" value="提交" onClick="return checkform();"/>
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
			<script language="javascript">popheight = 450;</script>
					
			</div>	
		</div>
	</div>		
</div>
<jsp:include page="qtdown.jsp"></jsp:include>


</body>
</html>

