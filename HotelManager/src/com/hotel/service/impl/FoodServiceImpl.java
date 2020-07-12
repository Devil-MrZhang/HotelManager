package com.hotel.service.impl;

import java.util.List;

import javax.annotation.Resource;




import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.hotel.dao.FoodMapper;
import com.hotel.dao.RoomMapper;
import com.hotel.dao.UserMapper;
import com.hotel.entity.Food;
import com.hotel.entity.Room;
import com.hotel.entity.RoomOrder;
import com.hotel.entity.User;
import com.hotel.service.FoodService;
import com.hotel.service.RoomService;
import com.hotel.service.UserService;

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("foodService")
public class FoodServiceImpl implements FoodService {

	@Resource
	private FoodMapper foodMapper;
	@Transactional(readOnly=true)
	@Override
	public List<Food> showList() {
	
		return foodMapper.selectAll();
	}
	@Override
	public void removefood(Integer id) {
		// TODO Auto-generated method stub
		 foodMapper.delete(id);
	}
	@Override
	public void updatefood(Food food) {
		foodMapper.update(food);
		
	}
	@Override
	public Food selectFoodById(Integer id) {
		
		return foodMapper.selectFoodById(id);
	}
	@Override
	public List<Food> selectOrderById(Integer orderid) {
		// TODO Auto-generated method stub
		return foodMapper.selectOrderById(orderid);
	}
	@Override
	public void addfood(Food food) {
			foodMapper.add(food);		
	}



}