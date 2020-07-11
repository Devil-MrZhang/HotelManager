
package com.hotel.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.support.ServletContextResource;

import com.hotel.entity.Food;
import com.hotel.entity.Room;
import com.hotel.service.FoodService;
import com.hotel.service.RoomService;

@Controller
public class FoodControcller{
	private int id;
	private List<Food> foodList = new ArrayList<>();
	private Map<Food,Integer> foodCart= new HashMap<>();
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
	
	@SuppressWarnings("unchecked")
	@RequestMapping("foodCart")
	public String foodCart(int id,HttpServletRequest req){
		
		Food f=null;
		f=foodService.selectFoodById(id);
		
		int num=1;
		HttpSession session = req.getSession();
		foodCart = (Map<Food, Integer>) session.getAttribute("foodCart");
		
		if(foodCart==null){
			foodCart=new HashMap<Food,Integer>();
		}
		if(foodCart.containsKey(f)){
			num=foodCart.get(f)+1;
		}
		
		foodCart.put(f, num);
		session.setAttribute("foodCart", foodCart);
	
		return "shopping-cart";
	}
	
	@RequestMapping("deleteFood")
	public String deleteFood(Integer id){
		
	
		for(Food f : foodCart.keySet()){
			if(id==f.getId()){
				foodCart.remove(f);
			}
			break;
		}
		
		
		return "shopping-cart";
	}
	@RequestMapping("changeNum")
	public String changeNum(Integer id,Integer num,HttpServletRequest req){
		
		Food f= new Food(); 
		f.setId(id);
		
		if("0".equals(num)){
			foodCart.remove(f);
		}

		if(foodCart.containsKey(f)){
			foodCart.put(f,num);
		}
		
		return "shopping-cart";
		
	}
	@RequestMapping("foodOrder")
	public String foodOrder(){
		
		
		
		return "shopping-cart_two";
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public FoodService getFoodService() {
		return foodService;
	}
	public void setFoodService(FoodService foodService) {
		this.foodService = foodService;
	}
	public List<Food> getFoodList() {
		return foodList;
	}
	public void setFoodList(List<Food> foodList) {
		this.foodList = foodList;
	}
	public Map<Food, Integer> getFoodCart() {
		return foodCart;
	}
	public void setFoodCart(Map<Food, Integer> foodCart) {
		this.foodCart = foodCart;
	}
	
	
}
