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

import com.entity.Keshixinxi;
import com.server.KeshixinxiServer;
import com.util.PageBean;
import net.sf.json.JSONObject;
import com.util.db;
import java.sql.SQLException;
import java.sql.*;
@Controller
public class KeshixinxiController {
	@Resource
	private KeshixinxiServer keshixinxiService;


   
	@RequestMapping("addKeshixinxi.do")
	public String addKeshixinxi(HttpServletRequest request,Keshixinxi keshixinxi,HttpSession session) throws SQLException{
		Timestamp time=new Timestamp(System.currentTimeMillis());
		
		keshixinxi.setAddtime(time.toString().substring(0, 19));
		keshixinxiService.add(keshixinxi);
		session.setAttribute("backxx", "添加成功");
		session.setAttribute("backurl", request.getHeader("Referer"));
		
		//session.setAttribute("backurl", "keshixinxiList.do");
		
		return "redirect:postback.jsp";
		//return "redirect:keshixinxiList.do";
		
		
		
	}
 
//	处理编辑
	@RequestMapping("doUpdateKeshixinxi.do")
	public String doUpdateKeshixinxi(int id,ModelMap map,Keshixinxi keshixinxi){
		keshixinxi=keshixinxiService.getById(id);
		map.put("keshixinxi", keshixinxi);
		return "keshixinxi_updt";
	}
	
	
	
	
	
//	后台详细
	@RequestMapping("keshixinxiDetail.do")
	public String keshixinxiDetail(int id,ModelMap map,Keshixinxi keshixinxi){
		keshixinxi=keshixinxiService.getById(id);
		map.put("keshixinxi", keshixinxi);
		return "keshixinxi_detail";
	}
//	前台详细
	@RequestMapping("ksxxDetail.do")
	public String ksxxDetail(int id,ModelMap map,Keshixinxi keshixinxi){
		keshixinxi=keshixinxiService.getById(id);
		map.put("keshixinxi", keshixinxi);
		return "keshixinxidetail";
	}
//	
	@RequestMapping("updateKeshixinxi.do")
	public String updateKeshixinxi(int id,ModelMap map,Keshixinxi keshixinxi,HttpServletRequest request,HttpSession session){
		keshixinxiService.update(keshixinxi);
		session.setAttribute("backxx", "修改成功");
		session.setAttribute("backurl", request.getHeader("Referer"));
		return "redirect:postback.jsp";
		//String url = request.getHeader("Referer");
		//return "redirect:"+url;
		//return "redirect:keshixinxiList.do";
	}

//	分页查询
	@RequestMapping("keshixinxiList.do")
	public String keshixinxiList(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Keshixinxi keshixinxi, String keshi){
		if(page==null||page.equals("")){
			page="1";
		}
		PageBean pageBean=new PageBean(Integer.parseInt(page), 15);
		Map<String, Object> pmap=new HashMap<String,Object>();
		pmap.put("pageno", pageBean.getStart());
		pmap.put("pageSize", 15);
		
		
		if(keshi==null||keshi.equals("")){pmap.put("keshi", null);}else{pmap.put("keshi", keshi);}		
		int total=keshixinxiService.getCount(pmap);
		pageBean.setTotal(total);
		List<Keshixinxi> list=keshixinxiService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "keshixinxi_list";
	}
	
	
	
	@RequestMapping("ksxxList.do")
	public String ksxxList(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Keshixinxi keshixinxi, String keshi){
		if(page==null||page.equals("")){
			page="1";
		}
		PageBean pageBean=new PageBean(Integer.parseInt(page), 15);
		Map<String, Object> pmap=new HashMap<String,Object>();
		pmap.put("pageno", pageBean.getStart());
		pmap.put("pageSize", 15);
		
		
		if(keshi==null||keshi.equals("")){pmap.put("keshi", null);}else{pmap.put("keshi", keshi);}		
		int total=keshixinxiService.getCount(pmap);
		pageBean.setTotal(total);
		List<Keshixinxi> list=keshixinxiService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "keshixinxilist";
	}
	
	@RequestMapping("deleteKeshixinxi.do")
	public String deleteKeshixinxi(int id,HttpServletRequest request){
		keshixinxiService.delete(id);
		String url = request.getHeader("Referer");
		return "redirect:"+url;
		//return "redirect:keshixinxiList.do";
	}
	
	
}
