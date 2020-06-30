package com.hotel.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hotel.entity.Room;
import com.hotel.service.RoomService;
@Controller
public class RoomController {
	@Resource
	RoomService roomService;
	@RequestMapping("admin/showRoomList")
	public String admin_showList(Model model){
		List<Room> list = roomService.showList();
		model.addAttribute("rooms", list);
		return "admin/roomList";
	}
	
	
}
