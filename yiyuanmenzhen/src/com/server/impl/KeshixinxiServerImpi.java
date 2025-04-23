package com.server.impl;

import java.util.List;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.KeshixinxiMapper;
import com.entity.Keshixinxi;
import com.server.KeshixinxiServer;
@Service
public class KeshixinxiServerImpi implements KeshixinxiServer {
   @Resource
   private KeshixinxiMapper gdao;
	@Override
	public int add(Keshixinxi po) {
		return gdao.insert(po);
	}

	@Override
	public int update(Keshixinxi po) {
		return gdao.updateByPrimaryKeySelective(po);
	}

	
	
	@Override
	public int delete(int id) {
		return gdao.deleteByPrimaryKey(id);
	}

	@Override
	public List<Keshixinxi> getAll(Map<String, Object> map) {
		return gdao.getAll(map);
	}
	
	public List<Keshixinxi> getsykeshixinxi1(Map<String, Object> map) {
		return gdao.getsykeshixinxi1(map);
	}
	public List<Keshixinxi> getsykeshixinxi2(Map<String, Object> map) {
		return gdao.getsykeshixinxi2(map);
	}
	public List<Keshixinxi> getsykeshixinxi3(Map<String, Object> map) {
		return gdao.getsykeshixinxi3(map);
	}
	
	@Override
	public Keshixinxi quchongKeshixinxi(Map<String, Object> account) {
		return gdao.quchongKeshixinxi(account);
	}

	@Override
	public List<Keshixinxi> getByPage(Map<String, Object> map) {
		return gdao.getByPage(map);
	}

	@Override
	public int getCount(Map<String, Object> map) {
		return gdao.getCount(map);
	}

	@Override
	public List<Keshixinxi> select(Map<String, Object> map) {
		return gdao.select(map);
	}

	@Override
	public Keshixinxi getById(int id) {
		return gdao.selectByPrimaryKey(id);
	}

}

