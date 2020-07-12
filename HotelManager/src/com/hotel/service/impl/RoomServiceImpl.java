package com.hotel.service.impl;

import java.util.List;

import javax.annotation.Resource;




import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.hotel.dao.RoomMapper;
import com.hotel.dao.UserMapper;
import com.hotel.entity.Room;
import com.hotel.entity.RoomOrder;
import com.hotel.entity.User;
import com.hotel.service.RoomService;
import com.hotel.service.UserService;

@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("roomService")
public class RoomServiceImpl implements RoomService {

	@Resource
	private RoomMapper roomMapper;
	@Transactional(readOnly=true)
	@Override
	public List<Room> showList() {
	
		return roomMapper.selectAll();
	}
	@Override
	public void addRoom(Room room) {
		roomMapper.add(room);
		
	}
	@Override
	public void updateRoom(Room room) {
		roomMapper.update(room);
		
	}
	@Override
	public Room findRoomById(Integer id) {
	
		return roomMapper.selectRoomById(id);
	}
	@Override
	public void removeRoom(Integer id) {
		roomMapper.delete(id);
		
	}
	@Override
	public List<Room> selectRoom(Integer roomnum) {
		return roomMapper.selectByRoomNum(roomnum);
		
	}
	@Override
	public List<RoomOrder> selectRoomOrders() {
		
		return roomMapper.selectAllOrders();
	}
	@Override
	public void removeRoomOrder(Integer id) {
		roomMapper.deleteRoomOrder(id);
		
	}
	@Override
	public List<RoomOrder> selectOrderById(Integer orderid) {
		// TODO Auto-generated method stub
		return roomMapper.selectOrderById(orderid);
	}
	@Override
	public Room selectRoomByType(String type) {
		// TODO Auto-generated method stub
		return roomMapper.selectRoomByType(type);
	}



}
