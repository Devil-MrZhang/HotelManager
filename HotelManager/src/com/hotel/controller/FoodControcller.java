
package com.hotel.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.support.ServletContextResource;
import org.springframework.web.multipart.MultipartFile;

import com.hotel.entity.Food;
import com.hotel.entity.Room;
import com.hotel.service.FoodService;
import com.hotel.service.RoomService;

@Controller
public class FoodControcller{
	private int id;
	private List<Food> foodList = new ArrayList<>();
	private Map<Food,Integer> foodCart= new HashMap<>();
	private List<Food> list=new ArrayList<Food>();
	
	@Resource
	FoodService foodService;
	@Autowired
    private HttpSession session;
    @Autowired
    private HttpServletRequest request;
	
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
	@RequestMapping("admin/foodupup")
	public String upup(Food food,String i) {
//		if(i==null) {
//			i="5";
//		}
		System.out.println(i);
		if(i==null) {
			for (Food food2 : list) {
				if(food2.getId()==food.getId()) {
					System.out.println(food2.getId()+"----"+food.getId());
					request.setAttribute("foodup", food2);
					
				}
			}
			
			return "admin/foodupdate";
		}
		else {
			System.out.println("-----------upup");

		foodService.updatefood(food);
		
		return "redirect:/admin/showfoodList";}
	}
	@RequestMapping("admin/selectfood")
	public String sele(Food food) {
		Food selectFoodById = foodService.selectFoodById(food.getId());
		List ll=new ArrayList();
		ll.add(selectFoodById);
		request.setAttribute("foods", ll);
		return "admin/foodList";

	}
	
	
	@RequestMapping("admin/foodadd")
	public String foodadd(Food food,@Param("file")MultipartFile file) {
	
			System.out.println(food);
			String path = request.getServletContext().getRealPath("upload");
		System.out.println(path);
			String fileName = UUID.randomUUID().toString().substring(0, 7);
			
			File filePath = new File(path, fileName+".jpg");
		
			if (!filePath.getParentFile().exists()) {
				filePath.getParentFile().mkdirs();
				System.out.println("创建目录" + filePath);	
			}
			try {
				file.transferTo(filePath);
				food.setImg_url("upload"+"/"+fileName+".jpg");
				food.setImg_url(fileName);
				foodService.addfood(food);
			
			}catch (Exception e) {
				e.printStackTrace();
			}
		
		
		
		
		return "redirect:/admin/showfoodList";}
	
	
	
	@RequestMapping("food")
	public String food(Model model){
		List<Food> food=foodService.showList();
		model.addAttribute("food", food);
		return "foodOrder";
		
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
