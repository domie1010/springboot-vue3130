package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Keshixinxi;

public interface KeshixinxiMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Keshixinxi record);

    int insertSelective(Keshixinxi record);

    Keshixinxi selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Keshixinxi record);
	
    int updateByPrimaryKey(Keshixinxi record);
	public Keshixinxi quchongKeshixinxi(Map<String, Object> keshi);
	public List<Keshixinxi> getAll(Map<String, Object> map);
	public List<Keshixinxi> getsykeshixinxi1(Map<String, Object> map);
	public List<Keshixinxi> getsykeshixinxi3(Map<String, Object> map);
	public List<Keshixinxi> getsykeshixinxi2(Map<String, Object> map);
	public int getCount(Map<String, Object> po);
	public List<Keshixinxi> getByPage(Map<String, Object> map);
	public List<Keshixinxi> select(Map<String, Object> map);
//	所有List
}

