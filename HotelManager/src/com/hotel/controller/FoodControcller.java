package com.hotel.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
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
	   @Autowired
	private HttpSession session;

	    @Autowired
	private HttpServletRequest request;
	List<Food> list=new ArrayList<Food>();
	@RequestMapping("admin/showfoodList")
	public String admin_showList(Model model){
		list = foodService.showList();
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
	@RequestMapping("admin/foodupdate")
	public String foodupdate(int p,Food food)
	{
		String aa="redirect:showfoodList";
		if(p==1) {
			for (Food food2 : list) {
				if(food2.getId()==food.getId()) {
					request.setAttribute("foodup", food2);
					System.out.println(request.getAttribute("foodup")+"0000000000");
					System.out.println(food2);
				}}
			aa="admin/foodupdate";
			
		}else {
			foodService.updatefood(food);
		}
		return aa;
	}
	
	
	
}
