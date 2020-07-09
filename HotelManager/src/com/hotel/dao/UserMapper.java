package com.hotel.dao;

import org.apache.ibatis.annotations.Mapper;

import com.hotel.entity.User;
@Mapper
public interface UserMapper {
	User findWithLoginnameAndPassword(User user);
}
