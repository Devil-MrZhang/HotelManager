package com.hotel.entity;

public class Food {
private int id;
private String name;
private String type;
private String price;
private String describe;
private String img_url;
@Override
public String toString() {
	return "Food [id=" + id + ", name=" + name + ", type=" + type + ", price=" + price + ", describe=" + describe
			+ ", img_url=" + img_url + "]";
}
public Food(int id, String name, String type, String price, String describe, String img_url) {
	super();
	this.id = id;
	this.name = name;
	this.type = type;
	this.price = price;
	this.describe = describe;
	this.img_url = img_url;
}
public Food() {
	super();
	// TODO Auto-generated constructor stub
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public String getPrice() {
	return price;
}
public void setPrice(String price) {
	this.price = price;
}
public String getDescribe() {
	return describe;
}
public void setDescribe(String describe) {
	this.describe = describe;
}
public String getImg_url() {
	return img_url;
}
public void setImg_url(String img_url) {
	this.img_url = img_url;
}


}
