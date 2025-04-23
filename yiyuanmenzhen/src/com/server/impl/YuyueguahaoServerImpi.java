package com.server.impl;

import java.util.List;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.YuyueguahaoMapper;
import com.entity.Yuyueguahao;
import com.server.YuyueguahaoServer;
@Service
public class YuyueguahaoServerImpi implements YuyueguahaoServer {
   @Resource
   private YuyueguahaoMapper gdao;
	@Override
	public int add(Yuyueguahao po) {
		return gdao.insert(po);
	}

	@Override
	public int update(Yuyueguahao po) {
		return gdao.updateByPrimaryKeySelective(po);
	}

	
	
	@Override
	public int delete(int id) {
		return gdao.deleteByPrimaryKey(id);
	}

	@Override
	public List<Yuyueguahao> getAll(Map<String, Object> map) {
		return gdao.getAll(map);
	}
	
	public List<Yuyueguahao> getsyyuyueguahao1(Map<String, Object> map) {
		return gdao.getsyyuyueguahao1(map);
	}
	public List<Yuyueguahao> getsyyuyueguahao2(Map<String, Object> map) {
		return gdao.getsyyuyueguahao2(map);
	}
	public List<Yuyueguahao> getsyyuyueguahao3(Map<String, Object> map) {
		return gdao.getsyyuyueguahao3(map);
	}
	
	@Override
	public Yuyueguahao quchongYuyueguahao(Map<String, Object> account) {
		return gdao.quchongYuyueguahao(account);
	}

	@Override
	public List<Yuyueguahao> getByPage(Map<String, Object> map) {
		return gdao.getByPage(map);
	}

	@Override
	public int getCount(Map<String, Object> map) {
		return gdao.getCount(map);
	}

	@Override
	public List<Yuyueguahao> select(Map<String, Object> map) {
		return gdao.select(map);
	}

	@Override
	public Yuyueguahao getById(int id) {
		return gdao.selectByPrimaryKey(id);
	}

}

