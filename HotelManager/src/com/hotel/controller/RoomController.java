package com.hotel.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.jws.WebParam.Mode;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

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
	@RequestMapping("admin/delete")
	public String delete(Integer id){
		roomService.removeRoom(id);
		return "redirect:showRoomList";
	}
	@RequestMapping("admin/addRoom")
	public String addRoom(MultipartFile file, HttpServletRequest req, Room room){
		
		String path = req.getServletContext().getRealPath("upload");
		String fileName = UUID.randomUUID().toString();
		File filePath = new File(path, fileName);
		if (!filePath.getParentFile().exists()) {
			filePath.getParentFile().mkdirs();
			System.out.println("创建目录" + filePath);
		}
		// 写入文件
		try {
			file.transferTo(filePath);
			System.out.println(room);
			room.setImg_url("upload"+"/"+fileName);
			
			roomService.addRoom(room);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "redirect:showRoomList";
	}
	@RequestMapping("admin/update")	
	public String update(Integer id,Room room,MultipartFile file,Model model,HttpServletRequest req){
		
		if (file==null) {
			System.out.println(id);
			room=roomService.findRoomById(id);
			model.addAttribute("room", room);
			System.out.println(room);
			return "admin/edit";
		}else{
			
			String path = req.getServletContext().getRealPath("upload");
		
			String fileName = UUID.randomUUID().toString();
		
			File filePath = new File(path, fileName);
		
			if (!filePath.getParentFile().exists()) {
				filePath.getParentFile().mkdirs();
				System.out.println("创建目录" + filePath);
			}
			try {
				file.transferTo(filePath);
				System.out.println(room);
				room.setImg_url("upload"+"/"+fileName);
			
				roomService.updateRoom(room);
			
			}catch (Exception e) {
				e.printStackTrace();
			}
			return "redirect:showRoomList";
		}
		
	}
	@RequestMapping("admin/delAll")
	public String delAll(String[] ids) {
		for (int i = 0; i < ids.length; i++) {
			
			roomService.removeRoom(Integer.parseInt(ids[i]));
		}
		
		return "redirect:showRoomList";
	}
	@RequestMapping("admin/selectRoom")
	public String selectRoom(Integer roomnum,Model model) {
		List<Room> list = roomService.selectRoom(roomnum);
		model.addAttribute("rooms", list);
		System.out.println("*****************"+list);
		
		return "admin/roomList";
	}
	

	
	
}
