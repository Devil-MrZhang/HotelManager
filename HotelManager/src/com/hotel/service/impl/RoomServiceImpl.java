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



}
