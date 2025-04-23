package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Yuyueguahao;

public interface YuyueguahaoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Yuyueguahao record);

    int insertSelective(Yuyueguahao record);

    Yuyueguahao selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Yuyueguahao record);
	
    int updateByPrimaryKey(Yuyueguahao record);
	public Yuyueguahao quchongYuyueguahao(Map<String, Object> yonghuming);
	public List<Yuyueguahao> getAll(Map<String, Object> map);
	public List<Yuyueguahao> getsyyuyueguahao1(Map<String, Object> map);
	public List<Yuyueguahao> getsyyuyueguahao3(Map<String, Object> map);
	public List<Yuyueguahao> getsyyuyueguahao2(Map<String, Object> map);
	public int getCount(Map<String, Object> po);
	public List<Yuyueguahao> getByPage(Map<String, Object> map);
	public List<Yuyueguahao> select(Map<String, Object> map);
//	所有List
}

