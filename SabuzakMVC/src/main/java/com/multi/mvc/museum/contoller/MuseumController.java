package com.multi.mvc.museum.contoller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.museum.model.service.MuseumService;
import com.multi.mvc.museum.model.vo.Museum;

@Controller
public class MuseumController {
	
	@Autowired
	MuseumService service;
	
	
	@RequestMapping("/museumSearch")
	String museumSearch(Model model, @RequestParam Map<String, String> param) {
		
		int page = 1;
		try {
			page = Integer.parseInt(param.get("page"));
		} catch (Exception e) {	}
		
		int count = service.selectMuseumCount(param);
		PageInfo pageInfo = new PageInfo(page, 10, count, 10);
		List<Museum> list = service.selectMuseumList(pageInfo, param);
		
		System.out.println("list : " + list);
		model.addAttribute("list", list);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("param", param);

		return "/museumSearch";
	}
	
	
	@RequestMapping("/museumDetails")
	String museumDetails(Model model, int museNo) {
		
		Museum museum = service.selectMuseumByNo(museNo);
		
		System.out.println("museum : " + museum);
		model.addAttribute("museum", museum);
		
		return "/museumDetails";
	}
	
	
}
