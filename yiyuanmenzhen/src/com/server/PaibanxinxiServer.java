package com.server;

import java.util.List;

import java.util.Map;

import com.entity.Paibanxinxi;

public interface PaibanxinxiServer {

  public int add(Paibanxinxi po);

  public int update(Paibanxinxi po);
  
  
  
  public int delete(int id);

  public List<Paibanxinxi> getAll(Map<String,Object> map);
  public List<Paibanxinxi> getsypaibanxinxi1(Map<String,Object> map);
  public List<Paibanxinxi> getsypaibanxinxi2(Map<String,Object> map);
  public List<Paibanxinxi> getsypaibanxinxi3(Map<String,Object> map);
  public Paibanxinxi quchongPaibanxinxi(Map<String, Object> acount);

  public Paibanxinxi getById( int id);

  public List<Paibanxinxi> getByPage(Map<String, Object> map);

  public int getCount(Map<String,Object> map);

  public List<Paibanxinxi> select(Map<String, Object> map);
}
//	所有List
