package com.hotel.controller;

import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hotel.entity.Food;
import com.hotel.entity.Room;
import com.hotel.service.FoodService;
import com.hotel.service.RoomService;

@Controller
public class FoodControcller {
	@Resource
	FoodService foodService;
	@RequestMapping("admin/showfoodList")
	public String admin_showList(Model model){
		List<Food> list = foodService.showList();
		model.addAttribute("foods", list);
		System.out.println(list+"+++++++++++++++++++++s");
		return "admin/foodList";
	}
	@RequestMapping("admin/fooddelete")
	public String delete(String idd){
		System.out.println("..................ss");
		// 分解id字符串
	List<String> idArray = Arrays.asList(idd.split(","));
	for (String id : idArray) {
		// 根据id删除员工
		foodService.removefood(Integer.parseInt(id));
	}
		System.out.println("删除成功----菜"+idd);
		return "redirect:showfoodList";
	}
	
	@RequestMapping("food")
	public String food(Model model){
		List<Food> food=foodService.showList();
		model.addAttribute("food", food);
		return "hotel-reservation";
		
	}
	
	
}
