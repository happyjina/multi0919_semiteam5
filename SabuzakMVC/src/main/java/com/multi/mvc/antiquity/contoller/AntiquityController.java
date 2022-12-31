package com.multi.mvc.antiquity.contoller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.mvc.antiquity.model.service.AntiquityService;
import com.multi.mvc.antiquity.model.vo.Antiquity;
import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.museum.model.vo.Museum;

@Controller
public class AntiquityController {
	
	@Autowired
	AntiquityService service;
	
	
	@RequestMapping("/antiquitySearch")
	String museumSearch(Model model, @RequestParam Map<String, String> param) {
		
		int page = 1;
		try {
			page = Integer.parseInt(param.get("page"));
		} catch (Exception e) {	}
		
		int count = service.selectAntiquityCount(param);
		PageInfo pageInfo = new PageInfo(page, 4, count, 16);
		List<Antiquity> list = service.selectAntiquityList(pageInfo, param);
		
		System.out.println("lis!!t : " + list);
		model.addAttribute("list", list);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("param", param);

		return "/antiquitySearch";
	}
	
	
	@RequestMapping("/antiquityDetail")
	String museumDetails(Model model, int antNo) {
		
		Antiquity antiquity = service.selectAntiquityByNo(antNo);
		
		System.out.println("antiquity : " +antiquity);
		model.addAttribute("antiquity", antiquity);
		
		return "/antiquityDetail";
	}
	
	
}
