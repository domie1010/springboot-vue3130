package com.server.impl;

import java.util.List;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.PaibanxinxiMapper;
import com.entity.Paibanxinxi;
import com.server.PaibanxinxiServer;
@Service
public class PaibanxinxiServerImpi implements PaibanxinxiServer {
   @Resource
   private PaibanxinxiMapper gdao;
	@Override
	public int add(Paibanxinxi po) {
		return gdao.insert(po);
	}

	@Override
	public int update(Paibanxinxi po) {
		return gdao.updateByPrimaryKeySelective(po);
	}

	
	
	@Override
	public int delete(int id) {
		return gdao.deleteByPrimaryKey(id);
	}

	@Override
	public List<Paibanxinxi> getAll(Map<String, Object> map) {
		return gdao.getAll(map);
	}
	
	public List<Paibanxinxi> getsypaibanxinxi1(Map<String, Object> map) {
		return gdao.getsypaibanxinxi1(map);
	}
	public List<Paibanxinxi> getsypaibanxinxi2(Map<String, Object> map) {
		return gdao.getsypaibanxinxi2(map);
	}
	public List<Paibanxinxi> getsypaibanxinxi3(Map<String, Object> map) {
		return gdao.getsypaibanxinxi3(map);
	}
	
	@Override
	public Paibanxinxi quchongPaibanxinxi(Map<String, Object> account) {
		return gdao.quchongPaibanxinxi(account);
	}

	@Override
	public List<Paibanxinxi> getByPage(Map<String, Object> map) {
		return gdao.getByPage(map);
	}

	@Override
	public int getCount(Map<String, Object> map) {
		return gdao.getCount(map);
	}

	@Override
	public List<Paibanxinxi> select(Map<String, Object> map) {
		return gdao.select(map);
	}

	@Override
	public Paibanxinxi getById(int id) {
		return gdao.selectByPrimaryKey(id);
	}

}

