package com.server;

import java.util.List;

import java.util.Map;

import com.entity.Yuyueguahao;

public interface YuyueguahaoServer {

  public int add(Yuyueguahao po);

  public int update(Yuyueguahao po);
  
  
  
  public int delete(int id);

  public List<Yuyueguahao> getAll(Map<String,Object> map);
  public List<Yuyueguahao> getsyyuyueguahao1(Map<String,Object> map);
  public List<Yuyueguahao> getsyyuyueguahao2(Map<String,Object> map);
  public List<Yuyueguahao> getsyyuyueguahao3(Map<String,Object> map);
  public Yuyueguahao quchongYuyueguahao(Map<String, Object> acount);

  public Yuyueguahao getById( int id);

  public List<Yuyueguahao> getByPage(Map<String, Object> map);

  public int getCount(Map<String,Object> map);

  public List<Yuyueguahao> select(Map<String, Object> map);
}
//	所有List
