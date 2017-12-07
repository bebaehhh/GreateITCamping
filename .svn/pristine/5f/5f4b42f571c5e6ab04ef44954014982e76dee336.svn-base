package com.ktds.camp.campDetail.web;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ktds.camp.campDetail.service.CampDetailService;

@Controller
public class CampDetailController {
	
	private CampDetailService campDetailService;
	
	public void setCampDetailService(CampDetailService campDetailService) {
		this.campDetailService = campDetailService;
	}

	@RequestMapping("/campDetailMain")
	public String CampDetailMainPage() {
		return "camp/campDetail/campDetailMain";
	}
	
	@RequestMapping("/map")
	public ModelAndView MapPage() {
		
		ModelAndView view = new ModelAndView("camp/map/map");
		view.addObject("camp", campDetailService.readOneCampMap(3));
		
		return view;
	}
	
	@RequestMapping("/camp/traf")
	@ResponseBody
	public List<Map<String, Object>> trafficList(int regionId) {
		List<Map<String, Object>> list = campDetailService.readAllCampMap(regionId);

		return list;
	}

}
