package com.hotel.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
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
import com.hotel.entity.RoomOrder;
import com.hotel.service.RoomService;
@Controller
public class RoomController {
	private List<Room> room = new ArrayList<>();
	
	@Resource
	RoomService roomService;
	@RequestMapping("admin/showRoomList")
	public String admin_showList(Model model){
		List<Room> list = roomService.showList();
		model.addAttribute("rooms", list);
		return "admin/roomList";
	}
	
	/**
	 * 显示酒店列表
	 * @param model
	 * @return
	 */
	@RequestMapping("room")
	public String room(Model model){
		
		room=roomService.showList();
		
		model.addAttribute("room", room);
		return "hotel-reservation";
	}
	/**
	 * 根据类型显示酒店详情
	 * @param roomType
	 * @param model
	 * @return
	 */
	@RequestMapping("roomCart")
	public String roomCart(String roomType,Model model){
		Room r = roomService.selectRoomByType(roomType);
		
		
		model.addAttribute("room",r);
		return "hotel-reservation-detali";
	}
	/**
	 * 进入结算页面
	 * @return
	 */
	@RequestMapping("roomOrder")
	public String roomOrder(String roomType,Model model){
		System.out.println(roomType);
	Room r=	roomService.selectRoomByType(roomType);
		System.out.println(r);
		model.addAttribute("room", r);
		return "hotel-reservation-detali01";
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
		
		return "admin/roomList";
	}
	@RequestMapping("admin/showRoomOrders")
	public String selectRoomOrders(Model model) {
		List<RoomOrder> list = roomService.selectRoomOrders();
		model.addAttribute("roomOrders", list);
		System.out.println("*****************"+list);
		
		return "admin/roomOrderList";
	}
	
	@RequestMapping("admin/deleteRoomOrder")
	public String deleteRoomOrder(Integer id) {
		roomService.removeRoomOrder(id);
		
		return "redirect:showRoomOrders";
		
	}
	
	@RequestMapping("admin/delAllOrders")
	public String delAllOrders(String[] ids) {
		for (int i = 0; i < ids.length; i++) {
			
			roomService.removeRoomOrder(Integer.parseInt(ids[i]));
		}
		
		return "redirect:showRoomOrders";
	}
	
	@RequestMapping("admin/selectRoomOrder")
	public String selectRoomOrder(Integer orderid,Model model) {
		List<RoomOrder> list = roomService.selectOrderById(orderid);
		System.out.println(list);
		System.out.println("*************"+orderid);
		model.addAttribute("roomOrders", list);
		
		return "admin/roomOrderList";
	}
	public List<Room> getRoom() {
		return room;
	}
	public void setRoom(List<Room> room) {
		this.room = room;
	}
	public RoomService getRoomService() {
		return roomService;
	}
	public void setRoomService(RoomService roomService) {
		this.roomService = roomService;
	}
	
	
	
}
