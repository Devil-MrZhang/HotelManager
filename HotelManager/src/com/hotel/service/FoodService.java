package com.hotel.service;

import java.util.List;

import com.hotel.entity.Food;
import com.hotel.entity.Room;
import com.hotel.entity.RoomOrder;
import com.hotel.entity.User;

public interface FoodService {
	
	List<Food> showList();
	void removefood(Integer id);


}
