package com.hotel.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.hotel.entity.Room;
@Mapper
public interface RoomMapper {
	@Select("select * from t_room")
	public List<Room> selectAll();
}
