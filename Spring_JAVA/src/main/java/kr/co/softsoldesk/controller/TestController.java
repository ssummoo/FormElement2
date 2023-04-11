package kr.co.softsoldesk.controller;


import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.softsoldesk.beans.DataBean;
import kr.co.softsoldesk.beans.KeyValueBean;



@Controller
public class TestController {


	@GetMapping("/test1")
	public String test1(@ModelAttribute("testBean") DataBean bean, Model model) {
		bean.setA1("data2");
		bean.setA2("data2");
		bean.setA3("data2");
		bean.setA4("data2");
		
		
		
		
		//=============String 배열=====================
		String[] data_list1= {"data1","data2","data3"};
		//data_list1
		model.addAttribute("data_list1",data_list1);
		//========ArrayList배열
		ArrayList<String> data_list2=new ArrayList<>();
		data_list2.add("data1");
		data_list2.add("data2");
		data_list2.add("data3");
		model.addAttribute("data_list2",data_list2);
		//======KeyValueBean 배열
		KeyValueBean key_bean1=new KeyValueBean(); 
		KeyValueBean key_bean2=new KeyValueBean(); 
		KeyValueBean key_bean3=new KeyValueBean(); 
		//변수방에 key항목 저장, 변수방 value에 data를 저장
		key_bean1.setKey("항목1");
		key_bean1.setValue("data1");
		key_bean2.setKey("항목2");
		key_bean2.setValue("data2");
		key_bean3.setKey("항목3");
		key_bean3.setValue("data3");
		
		//설정된 data를 Arraylist에 추가
		ArrayList<KeyValueBean> data_list3=new ArrayList<>();
		data_list3.add(key_bean1);
		data_list3.add(key_bean2);
		data_list3.add(key_bean3);
		model.addAttribute("data_list3", data_list3);
		
		//data1, data3
		String[] check_list= {"data1", "data3"};
		//각각의 변수방에 check_list주입
		bean.setA5(check_list);
		bean.setA6(check_list);
		bean.setA7(check_list);
		bean.setA8(check_list);
		
		//============ option Button================================
		bean.setA9("data2");
		bean.setA10("data2");
		bean.setA11("data2");
		bean.setA12("data2");
		
		
		
		
		return "test1";
		
	}
	
	
	
	
	@PostMapping("/result")
	public String result() {
		
		return "result";
	}

}
