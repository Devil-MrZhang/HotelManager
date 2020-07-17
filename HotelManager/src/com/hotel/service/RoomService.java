package com.hotel.service;

import java.util.List;

import com.hotel.entity.Room;
import com.hotel.entity.RoomOrder;
import com.hotel.entity.User;

public interface RoomService {
	
	List<Room> showList();

	void addRoom(Room room);

	void updateRoom(Room room);
	Room selectRoomByType(String type);
	
	Room findRoomById(Integer id);

	void removeRoom(Integer id);
	void removeRoomOrder(Integer id);

	List<Room> selectRoom(Integer roomnum);

	List<RoomOrder> selectRoomOrders();

	List<RoomOrder> selectOrderById(Integer orderid);
}
