package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Paibanxinxi;

public interface PaibanxinxiMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Paibanxinxi record);

    int insertSelective(Paibanxinxi record);

    Paibanxinxi selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Paibanxinxi record);
	
    int updateByPrimaryKey(Paibanxinxi record);
	public Paibanxinxi quchongPaibanxinxi(Map<String, Object> zhanghao);
	public List<Paibanxinxi> getAll(Map<String, Object> map);
	public List<Paibanxinxi> getsypaibanxinxi1(Map<String, Object> map);
	public List<Paibanxinxi> getsypaibanxinxi3(Map<String, Object> map);
	public List<Paibanxinxi> getsypaibanxinxi2(Map<String, Object> map);
	public int getCount(Map<String, Object> po);
	public List<Paibanxinxi> getByPage(Map<String, Object> map);
	public List<Paibanxinxi> select(Map<String, Object> map);
//	所有List
}

