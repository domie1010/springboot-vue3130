package com.controller;

import java.io.File;
import java.io.IOException;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.entity.Yuyueguahao;
import com.server.YuyueguahaoServer;
import com.util.PageBean;
import net.sf.json.JSONObject;
import com.util.db;
import java.sql.SQLException;
import java.sql.*;
@Controller
public class YuyueguahaoController {
	@Resource
	private YuyueguahaoServer yuyueguahaoService;


   
	@RequestMapping("addYuyueguahao.do")
	public String addYuyueguahao(HttpServletRequest request,Yuyueguahao yuyueguahao,HttpSession session) throws SQLException{
		Timestamp time=new Timestamp(System.currentTimeMillis());
		
		yuyueguahao.setAddtime(time.toString().substring(0, 19));
		yuyueguahaoService.add(yuyueguahao);
		
		String sql2="";
			
			sql2="update paibanxinxi set shengyuyuyuerenshu=shengyuyuyuerenshu-1 where zhanghao='"+yuyueguahao.getZhanghao()+"'";
			
			db dbo = new db();
			dbo.hsgexecute(sql2);

		
		
		session.setAttribute("backxx", "添加成功");
		session.setAttribute("backurl", request.getHeader("Referer"));
		
		//session.setAttribute("backurl", "yuyueguahaoList.do");
		
		return "redirect:postback.jsp";
		//return "redirect:yuyueguahaoList.do";
		
		
		
	}
 
//	处理编辑
	@RequestMapping("doUpdateYuyueguahao.do")
	public String doUpdateYuyueguahao(int id,ModelMap map,Yuyueguahao yuyueguahao){
		yuyueguahao=yuyueguahaoService.getById(id);
		map.put("yuyueguahao", yuyueguahao);
		return "yuyueguahao_updt";
	}
	
	
	
	
	
//	后台详细
	@RequestMapping("yuyueguahaoDetail.do")
	public String yuyueguahaoDetail(int id,ModelMap map,Yuyueguahao yuyueguahao){
		yuyueguahao=yuyueguahaoService.getById(id);
		map.put("yuyueguahao", yuyueguahao);
		return "yuyueguahao_detail";
	}
//	前台详细
	@RequestMapping("yyghDetail.do")
	public String yyghDetail(int id,ModelMap map,Yuyueguahao yuyueguahao){
		yuyueguahao=yuyueguahaoService.getById(id);
		map.put("yuyueguahao", yuyueguahao);
		return "yuyueguahaodetail";
	}
//	
	@RequestMapping("updateYuyueguahao.do")
	public String updateYuyueguahao(int id,ModelMap map,Yuyueguahao yuyueguahao,HttpServletRequest request,HttpSession session){
		yuyueguahaoService.update(yuyueguahao);
		session.setAttribute("backxx", "修改成功");
		session.setAttribute("backurl", request.getHeader("Referer"));
		return "redirect:postback.jsp";
		//String url = request.getHeader("Referer");
		//return "redirect:"+url;
		//return "redirect:yuyueguahaoList.do";
	}

//	分页查询
	@RequestMapping("yuyueguahaoList.do")
	public String yuyueguahaoList(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Yuyueguahao yuyueguahao, String zuozhenriqi, String zuozhenkeshi, String keyuyuerenshu, String shengyuyuyuerenshu, String zhanghao, String yishengxingming, String zhicheng, String guahaoleixing, String guahaokeshi, String guahaofei, String yonghuming, String issh){
		if(page==null||page.equals("")){
			page="1";
		}
		PageBean pageBean=new PageBean(Integer.parseInt(page), 15);
		Map<String, Object> pmap=new HashMap<String,Object>();
		pmap.put("pageno", pageBean.getStart());
		pmap.put("pageSize", 15);
		
		
		if(zuozhenriqi==null||zuozhenriqi.equals("")){pmap.put("zuozhenriqi", null);}else{pmap.put("zuozhenriqi", zuozhenriqi);}
		if(zuozhenkeshi==null||zuozhenkeshi.equals("")){pmap.put("zuozhenkeshi", null);}else{pmap.put("zuozhenkeshi", zuozhenkeshi);}
		if(keyuyuerenshu==null||keyuyuerenshu.equals("")){pmap.put("keyuyuerenshu", null);}else{pmap.put("keyuyuerenshu", keyuyuerenshu);}
		if(shengyuyuyuerenshu==null||shengyuyuyuerenshu.equals("")){pmap.put("shengyuyuyuerenshu", null);}else{pmap.put("shengyuyuyuerenshu", shengyuyuyuerenshu);}
		if(zhanghao==null||zhanghao.equals("")){pmap.put("zhanghao", null);}else{pmap.put("zhanghao", zhanghao);}
		if(yishengxingming==null||yishengxingming.equals("")){pmap.put("yishengxingming", null);}else{pmap.put("yishengxingming", yishengxingming);}
		if(zhicheng==null||zhicheng.equals("")){pmap.put("zhicheng", null);}else{pmap.put("zhicheng", zhicheng);}
		if(guahaoleixing==null||guahaoleixing.equals("")){pmap.put("guahaoleixing", null);}else{pmap.put("guahaoleixing", guahaoleixing);}
		if(guahaokeshi==null||guahaokeshi.equals("")){pmap.put("guahaokeshi", null);}else{pmap.put("guahaokeshi", guahaokeshi);}
		if(guahaofei==null||guahaofei.equals("")){pmap.put("guahaofei", null);}else{pmap.put("guahaofei", guahaofei);}
		if(yonghuming==null||yonghuming.equals("")){pmap.put("yonghuming", null);}else{pmap.put("yonghuming", yonghuming);}
		
		int total=yuyueguahaoService.getCount(pmap);
		pageBean.setTotal(total);
		List<Yuyueguahao> list=yuyueguahaoService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "yuyueguahao_list";
	}
	
	@RequestMapping("yuyueguahaoList3.do")
	public String yuyueguahaoList3(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Yuyueguahao yuyueguahao, String zuozhenriqi, String zuozhenkeshi, String keyuyuerenshu, String shengyuyuyuerenshu, String zhanghao, String yishengxingming, String zhicheng, String guahaoleixing, String guahaokeshi, String guahaofei, String yonghuming, String issh,HttpServletRequest request){
		/*if(session.getAttribute("user")==null){
			return "login";
		}*/
		if(page==null||page.equals("")){
			page="1";
		}
		PageBean pageBean=new PageBean(Integer.parseInt(page), 15);
		Map<String, Object> pmap=new HashMap<String,Object>();
		pmap.put("pageno", pageBean.getStart());
		pmap.put("pageSize", 15);
		
		pmap.put("zhanghao", (String)request.getSession().getAttribute("username"));
		if(zuozhenriqi==null||zuozhenriqi.equals("")){pmap.put("zuozhenriqi", null);}else{pmap.put("zuozhenriqi", zuozhenriqi);}
		if(zuozhenkeshi==null||zuozhenkeshi.equals("")){pmap.put("zuozhenkeshi", null);}else{pmap.put("zuozhenkeshi", zuozhenkeshi);}
		if(keyuyuerenshu==null||keyuyuerenshu.equals("")){pmap.put("keyuyuerenshu", null);}else{pmap.put("keyuyuerenshu", keyuyuerenshu);}
		if(shengyuyuyuerenshu==null||shengyuyuyuerenshu.equals("")){pmap.put("shengyuyuyuerenshu", null);}else{pmap.put("shengyuyuyuerenshu", shengyuyuyuerenshu);}
		if(yishengxingming==null||yishengxingming.equals("")){pmap.put("yishengxingming", null);}else{pmap.put("yishengxingming", yishengxingming);}
		if(zhicheng==null||zhicheng.equals("")){pmap.put("zhicheng", null);}else{pmap.put("zhicheng", zhicheng);}
		if(guahaoleixing==null||guahaoleixing.equals("")){pmap.put("guahaoleixing", null);}else{pmap.put("guahaoleixing", guahaoleixing);}
		if(guahaokeshi==null||guahaokeshi.equals("")){pmap.put("guahaokeshi", null);}else{pmap.put("guahaokeshi", guahaokeshi);}
		if(guahaofei==null||guahaofei.equals("")){pmap.put("guahaofei", null);}else{pmap.put("guahaofei", guahaofei);}
		
		
		int total=yuyueguahaoService.getCount(pmap);
		pageBean.setTotal(total);
		List<Yuyueguahao> list=yuyueguahaoService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "yuyueguahao_list3";
	}
	@RequestMapping("yuyueguahaoList2.do")
	public String yuyueguahaoList2(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Yuyueguahao yuyueguahao, String zuozhenriqi, String zuozhenkeshi, String keyuyuerenshu, String shengyuyuyuerenshu, String zhanghao, String yishengxingming, String zhicheng, String guahaoleixing, String guahaokeshi, String guahaofei, String yonghuming, String issh,HttpServletRequest request){
		/*if(session.getAttribute("user")==null){
			return "login";
		}*/
		if(page==null||page.equals("")){
			page="1";
		}
		PageBean pageBean=new PageBean(Integer.parseInt(page), 15);
		Map<String, Object> pmap=new HashMap<String,Object>();
		pmap.put("pageno", pageBean.getStart());
		pmap.put("pageSize", 15);
		
		pmap.put("yonghuming", (String)request.getSession().getAttribute("username"));
		if(zuozhenriqi==null||zuozhenriqi.equals("")){pmap.put("zuozhenriqi", null);}else{pmap.put("zuozhenriqi", zuozhenriqi);}
		if(zuozhenkeshi==null||zuozhenkeshi.equals("")){pmap.put("zuozhenkeshi", null);}else{pmap.put("zuozhenkeshi", zuozhenkeshi);}
		if(keyuyuerenshu==null||keyuyuerenshu.equals("")){pmap.put("keyuyuerenshu", null);}else{pmap.put("keyuyuerenshu", keyuyuerenshu);}
		if(shengyuyuyuerenshu==null||shengyuyuyuerenshu.equals("")){pmap.put("shengyuyuyuerenshu", null);}else{pmap.put("shengyuyuyuerenshu", shengyuyuyuerenshu);}
		if(yishengxingming==null||yishengxingming.equals("")){pmap.put("yishengxingming", null);}else{pmap.put("yishengxingming", yishengxingming);}
		if(zhicheng==null||zhicheng.equals("")){pmap.put("zhicheng", null);}else{pmap.put("zhicheng", zhicheng);}
		if(guahaoleixing==null||guahaoleixing.equals("")){pmap.put("guahaoleixing", null);}else{pmap.put("guahaoleixing", guahaoleixing);}
		if(guahaokeshi==null||guahaokeshi.equals("")){pmap.put("guahaokeshi", null);}else{pmap.put("guahaokeshi", guahaokeshi);}
		if(guahaofei==null||guahaofei.equals("")){pmap.put("guahaofei", null);}else{pmap.put("guahaofei", guahaofei);}
		
		
		int total=yuyueguahaoService.getCount(pmap);
		pageBean.setTotal(total);
		List<Yuyueguahao> list=yuyueguahaoService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "yuyueguahao_list2";
	}
	
	
	@RequestMapping("yyghList.do")
	public String yyghList(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Yuyueguahao yuyueguahao, String zuozhenriqi, String zuozhenkeshi, String keyuyuerenshu, String shengyuyuyuerenshu, String zhanghao, String yishengxingming, String zhicheng, String guahaoleixing, String guahaokeshi, String guahaofei, String yonghuming, String issh){
		if(page==null||page.equals("")){
			page="1";
		}
		PageBean pageBean=new PageBean(Integer.parseInt(page), 15);
		Map<String, Object> pmap=new HashMap<String,Object>();
		pmap.put("pageno", pageBean.getStart());
		pmap.put("pageSize", 15);
		
		
		if(zuozhenriqi==null||zuozhenriqi.equals("")){pmap.put("zuozhenriqi", null);}else{pmap.put("zuozhenriqi", zuozhenriqi);}
		if(zuozhenkeshi==null||zuozhenkeshi.equals("")){pmap.put("zuozhenkeshi", null);}else{pmap.put("zuozhenkeshi", zuozhenkeshi);}
		if(keyuyuerenshu==null||keyuyuerenshu.equals("")){pmap.put("keyuyuerenshu", null);}else{pmap.put("keyuyuerenshu", keyuyuerenshu);}
		if(shengyuyuyuerenshu==null||shengyuyuyuerenshu.equals("")){pmap.put("shengyuyuyuerenshu", null);}else{pmap.put("shengyuyuyuerenshu", shengyuyuyuerenshu);}
		if(zhanghao==null||zhanghao.equals("")){pmap.put("zhanghao", null);}else{pmap.put("zhanghao", zhanghao);}
		if(yishengxingming==null||yishengxingming.equals("")){pmap.put("yishengxingming", null);}else{pmap.put("yishengxingming", yishengxingming);}
		if(zhicheng==null||zhicheng.equals("")){pmap.put("zhicheng", null);}else{pmap.put("zhicheng", zhicheng);}
		if(guahaoleixing==null||guahaoleixing.equals("")){pmap.put("guahaoleixing", null);}else{pmap.put("guahaoleixing", guahaoleixing);}
		if(guahaokeshi==null||guahaokeshi.equals("")){pmap.put("guahaokeshi", null);}else{pmap.put("guahaokeshi", guahaokeshi);}
		if(guahaofei==null||guahaofei.equals("")){pmap.put("guahaofei", null);}else{pmap.put("guahaofei", guahaofei);}
		if(yonghuming==null||yonghuming.equals("")){pmap.put("yonghuming", null);}else{pmap.put("yonghuming", yonghuming);}
		
		int total=yuyueguahaoService.getCount(pmap);
		pageBean.setTotal(total);
		List<Yuyueguahao> list=yuyueguahaoService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "yuyueguahaolist";
	}
	
	@RequestMapping("deleteYuyueguahao.do")
	public String deleteYuyueguahao(int id,HttpServletRequest request){
		yuyueguahaoService.delete(id);
		String url = request.getHeader("Referer");
		return "redirect:"+url;
		//return "redirect:yuyueguahaoList.do";
	}
	
	
}
