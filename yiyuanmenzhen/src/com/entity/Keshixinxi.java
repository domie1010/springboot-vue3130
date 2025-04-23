package com.entity;

public class Keshixinxi {
    private Integer id;
	private String keshi;	
    private String addtime;

    

    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
	
	public String getKeshi() {
        return keshi;
    }
    public void setKeshi(String keshi) {
        this.keshi = keshi == null ? null : keshi.trim();
    }	
	
	
    public String getAddtime() {
        return addtime;
    }
    public void setAddtime(String addtime) {
        this.addtime = addtime == null ? null : addtime.trim();
    }
}
//   设置字段信息
