package com.hotel.entity;

public class Room {
	private Integer id;
	private Integer roomnum;
	private Double price;
	private int bednumber;
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
	public int getBednumber() {
		return bednumber;
	}
	public void setBednumber(int bednumber) {
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
	@Override
	public String toString() {
		return "Room [id=" + id + ", roomnum=" + roomnum + ", price=" + price + ", bednumber=" + bednumber + ", type="
				+ type + ", img_url=" + img_url + "]";
	}
	public Room(Integer id, Integer roomnum, Double price, int bednumber, String type, String img_url) {
		super();
		this.id = id;
		this.roomnum = roomnum;
		this.price = price;
		this.bednumber = bednumber;
		this.type = type;
		this.img_url = img_url;
	}
	public Room() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Room other = (Room) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

	
	
}
