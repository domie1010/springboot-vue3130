<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<div class="vernav2 iconmenu">
    	<ul>
        	<li class="current"><a href="#formsub" class="editor">系统用户管理</a>
            	<span class="arrow"></span>
            	<ul id="formsub">
               		<li><a href="allusers_add.jsp" target="main">管理员帐号添加</a></li>
					<li><a href="allusersList.do" target="main">管理员帐号查询</a></li>
                   
                    <li><a href="mod.jsp" target="main">修改密码</a></li>
                </ul>
            </li>
			
			<li><a href="#formsub2" class="elements">用户信息管理</a>
            	<span class="arrow"></span>
            	<ul id="formsub2">
				      <li><a href="yonghuzhuceList.do" target="main">注册用户管理</a></li>
               		<li><a href="yishengxinxi_add.jsp" target="main">医生信息添加</a></li>
                    <li><a href="yishengxinxiList.do" target="main">医生信息查询</a></li>
                </ul>
            </li>
			
			<li><a href="#formsub3" class="gallery">挂号须知管理</a>
            	<span class="arrow"></span>
            	<ul id="formsub3">
               		<li><a href="xinwentongzhi_add.jsp?lb=挂号须知" target="main">挂号须知添加</a></li>
                    <li><a href="xinwentongzhiList.do?lb=挂号须知" target="main">挂号须知查询</a></li>
					<li><a href="xinwentongzhi_add.jsp?lb=变幻图" target="main">变幻图添加</a></li>
                    <li><a href="xinwentongzhiList.do?lb=变幻图" target="main">变幻图查询</a></li>
                </ul>
            </li>
			
			<li><a href="#formsub4" class="elements">医生排班管理</a>
            	<span class="arrow"></span>
            	<ul id="formsub4">
               		
                    <li><a href="paibanxinxiList.do" target="main">医生排班信息查询</a></li>
                </ul>
            </li>
			
			<li><a href="#formsub5" class="widgets">预约信息管理</a>
            	<span class="arrow"></span>
            	<ul id="formsub5">
               		
                    <li><a href="yuyueguahaoList.do" target="main">预约记录查询</a></li>
                </ul>
            </li>
			
			<li><a href="#formsub6" class="calendar">科室信息管理</a>
            	<span class="arrow"></span>
            	<ul id="formsub6">
               		<li><a href="keshixinxi_add.jsp" target="main">科室信息添加</a></li>
                    <li><a href="keshixinxiList.do" target="main">科室信息查询</a></li>
                </ul>
            </li>
			

           
            <li class="current"><a href="#addons" class="addons">系统管理</a>
            	<span class="arrow"></span>
            	<ul id="addons">
               		<li><a href="youqinglianjie_add.jsp" target="main">友情连接添加</a></li>
                    <li><a href="youqinglianjieList.do" target="main">友情连接查询</a></li>
                   
                    <li><a href="dx.jsp?lb=系统简介" target="main">系统简介</a></li>
					<li><a href="dx.jsp?lb=系统公告" target="main">系统公告</a></li>
                </ul>
            </li>
        </ul>
        <a class="togglemenu"></a>
        <br /><br />
    </div>