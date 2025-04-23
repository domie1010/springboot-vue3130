package com.server;

import java.util.List;

import java.util.Map;

import com.entity.Keshixinxi;

public interface KeshixinxiServer {

  public int add(Keshixinxi po);

  public int update(Keshixinxi po);
  
  
  
  public int delete(int id);

  public List<Keshixinxi> getAll(Map<String,Object> map);
  public List<Keshixinxi> getsykeshixinxi1(Map<String,Object> map);
  public List<Keshixinxi> getsykeshixinxi2(Map<String,Object> map);
  public List<Keshixinxi> getsykeshixinxi3(Map<String,Object> map);
  public Keshixinxi quchongKeshixinxi(Map<String, Object> acount);

  public Keshixinxi getById( int id);

  public List<Keshixinxi> getByPage(Map<String, Object> map);

  public int getCount(Map<String,Object> map);

  public List<Keshixinxi> select(Map<String, Object> map);
}
//	所有List
