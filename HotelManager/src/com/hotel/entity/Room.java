package com.hotel.entity;

public class Room {
	private Integer id;
	private Integer roomnum;
	private Double price;
	private Double bednumber;
	private String type;
	private String img_url;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getRoomnum() {
		return roomnum;
	}
	public void setRoomnum(Integer roomnum) {
		this.roomnum = roomnum;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Double getBednumber() {
		return bednumber;
	}
	public void setBednumber(Double bednumber) {
		this.bednumber = bednumber;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getImg_url() {
		return img_url;
	}
	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}
	
	
}
