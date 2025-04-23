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

import com.entity.Paibanxinxi;
import com.server.PaibanxinxiServer;
import com.util.PageBean;
import net.sf.json.JSONObject;
import com.util.db;
import java.sql.SQLException;
import java.sql.*;
@Controller
public class PaibanxinxiController {
	@Resource
	private PaibanxinxiServer paibanxinxiService;


   
	@RequestMapping("addPaibanxinxi.do")
	public String addPaibanxinxi(HttpServletRequest request,Paibanxinxi paibanxinxi,HttpSession session) throws SQLException{
		Timestamp time=new Timestamp(System.currentTimeMillis());
		
		paibanxinxi.setAddtime(time.toString().substring(0, 19));
		paibanxinxiService.add(paibanxinxi);
		session.setAttribute("backxx", "添加成功");
		session.setAttribute("backurl", request.getHeader("Referer"));
		
		//session.setAttribute("backurl", "paibanxinxiList.do");
		
		return "redirect:postback.jsp";
		//return "redirect:paibanxinxiList.do";
		
		
		
	}
 
//	处理编辑
	@RequestMapping("doUpdatePaibanxinxi.do")
	public String doUpdatePaibanxinxi(int id,ModelMap map,Paibanxinxi paibanxinxi){
		paibanxinxi=paibanxinxiService.getById(id);
		map.put("paibanxinxi", paibanxinxi);
		return "paibanxinxi_updt";
	}
	
	
	
	
	
//	后台详细
	@RequestMapping("paibanxinxiDetail.do")
	public String paibanxinxiDetail(int id,ModelMap map,Paibanxinxi paibanxinxi){
		paibanxinxi=paibanxinxiService.getById(id);
		map.put("paibanxinxi", paibanxinxi);
		return "paibanxinxi_detail";
	}
//	前台详细
	@RequestMapping("pbxxDetail.do")
	public String pbxxDetail(int id,ModelMap map,Paibanxinxi paibanxinxi){
		paibanxinxi=paibanxinxiService.getById(id);
		map.put("paibanxinxi", paibanxinxi);
		return "paibanxinxidetail";
	}
//	
	@RequestMapping("updatePaibanxinxi.do")
	public String updatePaibanxinxi(int id,ModelMap map,Paibanxinxi paibanxinxi,HttpServletRequest request,HttpSession session){
		paibanxinxiService.update(paibanxinxi);
		session.setAttribute("backxx", "修改成功");
		session.setAttribute("backurl", request.getHeader("Referer"));
		return "redirect:postback.jsp";
		//String url = request.getHeader("Referer");
		//return "redirect:"+url;
		//return "redirect:paibanxinxiList.do";
	}

//	分页查询
	@RequestMapping("paibanxinxiList.do")
	public String paibanxinxiList(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Paibanxinxi paibanxinxi, String zuozhenriqi, String zuozhenkeshi, String keyuyuerenshu1,String keyuyuerenshu2, String shengyuyuyuerenshu1,String shengyuyuyuerenshu2, String zhanghao, String yishengxingming, String zhicheng, String yiling, String keshi){
		if(page==null||page.equals("")){
			page="1";
		}
		PageBean pageBean=new PageBean(Integer.parseInt(page), 15);
		Map<String, Object> pmap=new HashMap<String,Object>();
		pmap.put("pageno", pageBean.getStart());
		pmap.put("pageSize", 15);
		
		
		if(zuozhenriqi==null||zuozhenriqi.equals("")){pmap.put("zuozhenriqi", null);}else{pmap.put("zuozhenriqi", zuozhenriqi);}		if(zuozhenkeshi==null||zuozhenkeshi.equals("")){pmap.put("zuozhenkeshi", null);}else{pmap.put("zuozhenkeshi", zuozhenkeshi);}		if(keyuyuerenshu1==null||keyuyuerenshu1.equals("")){pmap.put("keyuyuerenshu1", null);}else{pmap.put("keyuyuerenshu1", keyuyuerenshu1);}		if(keyuyuerenshu2==null||keyuyuerenshu2.equals("")){pmap.put("keyuyuerenshu2", null);}else{pmap.put("keyuyuerenshu2", keyuyuerenshu2);}		if(shengyuyuyuerenshu1==null||shengyuyuyuerenshu1.equals("")){pmap.put("shengyuyuyuerenshu1", null);}else{pmap.put("shengyuyuyuerenshu1", shengyuyuyuerenshu1);}		if(shengyuyuyuerenshu2==null||shengyuyuyuerenshu2.equals("")){pmap.put("shengyuyuyuerenshu2", null);}else{pmap.put("shengyuyuyuerenshu2", shengyuyuyuerenshu2);}		if(zhanghao==null||zhanghao.equals("")){pmap.put("zhanghao", null);}else{pmap.put("zhanghao", zhanghao);}		if(yishengxingming==null||yishengxingming.equals("")){pmap.put("yishengxingming", null);}else{pmap.put("yishengxingming", yishengxingming);}		if(zhicheng==null||zhicheng.equals("")){pmap.put("zhicheng", null);}else{pmap.put("zhicheng", zhicheng);}		if(yiling==null||yiling.equals("")){pmap.put("yiling", null);}else{pmap.put("yiling", yiling);}		if(keshi==null||keshi.equals("")){pmap.put("keshi", null);}else{pmap.put("keshi", keshi);}		
		int total=paibanxinxiService.getCount(pmap);
		pageBean.setTotal(total);
		List<Paibanxinxi> list=paibanxinxiService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "paibanxinxi_list";
	}
	
	@RequestMapping("paibanxinxiList2.do")
	public String paibanxinxiList2(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Paibanxinxi paibanxinxi, String zuozhenriqi, String zuozhenkeshi, String keyuyuerenshu1,String keyuyuerenshu2, String shengyuyuyuerenshu1,String shengyuyuyuerenshu2, String zhanghao, String yishengxingming, String zhicheng, String yiling, String keshi,HttpServletRequest request){
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
		if(zuozhenriqi==null||zuozhenriqi.equals("")){pmap.put("zuozhenriqi", null);}else{pmap.put("zuozhenriqi", zuozhenriqi);}		if(zuozhenkeshi==null||zuozhenkeshi.equals("")){pmap.put("zuozhenkeshi", null);}else{pmap.put("zuozhenkeshi", zuozhenkeshi);}		if(keyuyuerenshu1==null||keyuyuerenshu1.equals("")){pmap.put("keyuyuerenshu1", null);}else{pmap.put("keyuyuerenshu1", keyuyuerenshu1);}		if(keyuyuerenshu2==null||keyuyuerenshu2.equals("")){pmap.put("keyuyuerenshu2", null);}else{pmap.put("keyuyuerenshu2", keyuyuerenshu2);}		if(shengyuyuyuerenshu1==null||shengyuyuyuerenshu1.equals("")){pmap.put("shengyuyuyuerenshu1", null);}else{pmap.put("shengyuyuyuerenshu1", shengyuyuyuerenshu1);}		if(shengyuyuyuerenshu2==null||shengyuyuyuerenshu2.equals("")){pmap.put("shengyuyuyuerenshu2", null);}else{pmap.put("shengyuyuyuerenshu2", shengyuyuyuerenshu2);}		if(yishengxingming==null||yishengxingming.equals("")){pmap.put("yishengxingming", null);}else{pmap.put("yishengxingming", yishengxingming);}		if(zhicheng==null||zhicheng.equals("")){pmap.put("zhicheng", null);}else{pmap.put("zhicheng", zhicheng);}		if(yiling==null||yiling.equals("")){pmap.put("yiling", null);}else{pmap.put("yiling", yiling);}		if(keshi==null||keshi.equals("")){pmap.put("keshi", null);}else{pmap.put("keshi", keshi);}		
		
		int total=paibanxinxiService.getCount(pmap);
		pageBean.setTotal(total);
		List<Paibanxinxi> list=paibanxinxiService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "paibanxinxi_list2";
	}	
	
	@RequestMapping("pbxxList.do")
	public String pbxxList(@RequestParam(value="page",required=false)String page,
			ModelMap map,HttpSession session,Paibanxinxi paibanxinxi, String zuozhenriqi, String zuozhenkeshi, String keyuyuerenshu1,String keyuyuerenshu2, String shengyuyuyuerenshu1,String shengyuyuyuerenshu2, String zhanghao, String yishengxingming, String zhicheng, String yiling, String keshi){
		if(page==null||page.equals("")){
			page="1";
		}
		PageBean pageBean=new PageBean(Integer.parseInt(page), 15);
		Map<String, Object> pmap=new HashMap<String,Object>();
		pmap.put("pageno", pageBean.getStart());
		pmap.put("pageSize", 15);
		
		
		if(zuozhenriqi==null||zuozhenriqi.equals("")){pmap.put("zuozhenriqi", null);}else{pmap.put("zuozhenriqi", zuozhenriqi);}		if(zuozhenkeshi==null||zuozhenkeshi.equals("")){pmap.put("zuozhenkeshi", null);}else{pmap.put("zuozhenkeshi", zuozhenkeshi);}		if(keyuyuerenshu1==null||keyuyuerenshu1.equals("")){pmap.put("keyuyuerenshu1", null);}else{pmap.put("keyuyuerenshu1", keyuyuerenshu1);}		if(keyuyuerenshu2==null||keyuyuerenshu2.equals("")){pmap.put("keyuyuerenshu2", null);}else{pmap.put("keyuyuerenshu2", keyuyuerenshu2);}		if(shengyuyuyuerenshu1==null||shengyuyuyuerenshu1.equals("")){pmap.put("shengyuyuyuerenshu1", null);}else{pmap.put("shengyuyuyuerenshu1", shengyuyuyuerenshu1);}		if(shengyuyuyuerenshu2==null||shengyuyuyuerenshu2.equals("")){pmap.put("shengyuyuyuerenshu2", null);}else{pmap.put("shengyuyuyuerenshu2", shengyuyuyuerenshu2);}		if(zhanghao==null||zhanghao.equals("")){pmap.put("zhanghao", null);}else{pmap.put("zhanghao", zhanghao);}		if(yishengxingming==null||yishengxingming.equals("")){pmap.put("yishengxingming", null);}else{pmap.put("yishengxingming", yishengxingming);}		if(zhicheng==null||zhicheng.equals("")){pmap.put("zhicheng", null);}else{pmap.put("zhicheng", zhicheng);}		if(yiling==null||yiling.equals("")){pmap.put("yiling", null);}else{pmap.put("yiling", yiling);}		if(keshi==null||keshi.equals("")){pmap.put("keshi", null);}else{pmap.put("keshi", keshi);}		
		int total=paibanxinxiService.getCount(pmap);
		pageBean.setTotal(total);
		List<Paibanxinxi> list=paibanxinxiService.getByPage(pmap);
		map.put("page", pageBean);
		map.put("list", list);
		session.setAttribute("p", 1);
		return "paibanxinxilist";
	}
	
	@RequestMapping("deletePaibanxinxi.do")
	public String deletePaibanxinxi(int id,HttpServletRequest request){
		paibanxinxiService.delete(id);
		String url = request.getHeader("Referer");
		return "redirect:"+url;
		//return "redirect:paibanxinxiList.do";
	}
	
	
}
