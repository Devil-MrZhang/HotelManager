package com.hotel.entity;

public class Food {
private int id;
private String name;
private String type;
private Double price;
private String describe;
private String img_url;
public Food() {
	super();
	// TODO Auto-generated constructor stub
}
@Override
public String toString() {
	return "Food [id=" + id + ", name=" + name + ", type=" + type + ", price=" + price + ", describe=" + describe
			+ ", img_url=" + img_url + "]";
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
public Double getPrice() {
	return price;
}
public void setPrice(Double price) {
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
public Food(int id, String name, String type, Double price, String describe, String img_url) {
	super();
	this.id = id;
	this.name = name;
	this.type = type;
	this.price = price;
	this.describe = describe;
	this.img_url = img_url;
}
@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + id;
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
	Food other = (Food) obj;
	if (id != other.id)
		return false;
	return true;
}



}
