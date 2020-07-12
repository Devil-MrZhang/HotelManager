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
	@Insert("insert into t_food(name,type,price,describ,img_url) values(#{food.name},#{food.type},#{food.price},#{food.describ},#{food.img_url})")
	public void add(@Param("food")Food food);
	@Update("update t_food set name=#{food.name},price=#{food.price},describ=#{food.describ},type=#{food.type},img_url=#{food.img_url} where id=#{food.id}")
	public void update(@Param("food")Food food);
	@Select("select * from t_food where id=#{id}")
	public Food selectFoodById(Integer id);
	@Delete("delete from t_food where id=#{id}")
	public void delete(@Param("id")Integer id);
//	@Select("select * from t_Food where roomnum=#{roomnum}")
//	public List<Food> selectByvNum(@Param("roomnum")Integer roomnum);
//	@Select("select * from t_roomorder")
//	public List<RoomOrder> selectAllOrders();
//	@Delete("delete from t_roomorder where id=#{id}")
//	public void deleteRoomOrder(@Param("id")Integer id);
	@Select("select * from t_food where id=#{id}")
	public List<Food> selectOrderById(@Param("id")Integer orderid);
}
