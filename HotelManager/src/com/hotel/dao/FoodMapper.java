package com.hotel.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.hotel.entity.Food;
import com.hotel.entity.Room;
import com.hotel.entity.RoomOrder;
@Mapper
public interface FoodMapper {
	@Select("select * from t_food")
	public List<Food> selectAll();
//	@Insert("insert into t_room(roomnum,price,bednumber,type,img_url) values(#{room.roomnum},#{room.price},#{room.bednumber},#{room.type},#{room.img_url})")
//	public void add(@Param("Food")Food Food);
//	@Update("update t_room set roomnum=#{room.roomnum},price=#{room.price},bednumber=#{room.bednumber},type=#{room.type},img_url=#{room.img_url} where id=#{room.id}")
//	public void update(@Param("Food")Food Food);
//	@Select("select * from t_Food where id=#{id}")
//	public Food selectFoodById(Integer id);
	@Delete("delete from t_food where id=#{id}")
	public void delete(@Param("id")Integer id);
//	@Select("select * from t_Food where roomnum=#{roomnum}")
//	public List<Food> selectByvNum(@Param("roomnum")Integer roomnum);
//	@Select("select * from t_roomorder")
//	public List<RoomOrder> selectAllOrders();
//	@Delete("delete from t_roomorder where id=#{id}")
//	public void deleteRoomOrder(@Param("id")Integer id);
//	@Select("select * from t_roomorder where id=#{id}")
//	public List<RoomOrder> selectOrderById(@Param("id")Integer orderid);
}
