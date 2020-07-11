
package com.hotel.service;

import java.util.List;

import com.hotel.dao.FoodMapper;
import com.hotel.entity.Food;
import com.hotel.entity.Room;
import com.hotel.entity.RoomOrder;
import com.hotel.entity.User;

public interface FoodService {
	Food selectFoodById(Integer id);
	List<Food> showList();
	void removefood(Integer id);
	void updatefood(Food food);
	List<Food> selectOrderById(Integer orderid);
	void addfood(Food food);
	
}
