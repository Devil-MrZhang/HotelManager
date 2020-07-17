package com.hotel.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.hotel.entity.Room;
import com.hotel.entity.RoomOrder;
@Mapper
public interface RoomMapper {
	@Select("select * from t_room")
	public List<Room> selectAll();
	@Insert("insert into t_room(roomnum,price,bednumber,type,img_url) values(#{room.roomnum},#{room.price},#{room.bednumber},#{room.type},#{room.img_url})")
	public void add(@Param("room")Room room);
	@Update("update t_room set roomnum=#{room.roomnum},price=#{room.price},bednumber=#{room.bednumber},type=#{room.type},img_url=#{room.img_url} where id=#{room.id}")
	public void update(@Param("room")Room room);
	@Select("select * from t_room where id=#{id}")
	public Room selectRoomById(Integer id);
	@Select("select * from t_room where type=#{type}")
	public Room selectRoomByType(String type);
	@Delete("delete from t_room where id=#{id}")
	public void delete(@Param("id")Integer id);
	@Select("select * from t_room where roomnum=#{roomnum}")
	public List<Room> selectByRoomNum(@Param("roomnum")Integer roomnum);
	@Select("select * from t_roomorder")
	public List<RoomOrder> selectAllOrders();
	@Delete("delete from t_roomorder where id=#{id}")
	public void deleteRoomOrder(@Param("id")Integer id);
	@Select("select * from t_roomorder where id=#{id}")
	public List<RoomOrder> selectOrderById(@Param("id")Integer orderid);
}
