package com.ktds.camp.region.web;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ktds.camp.region.service.RegionService;
import com.ktds.camp.region.vo.RegionVO;

@Controller
public class RegionController {
	
	private RegionService regionService;
	
	public void setRegionService(RegionService regionService) {
		this.regionService = regionService;
	}

	@RequestMapping("/region/map")
	public ModelAndView viewMapTab() {
		ModelAndView result = new ModelAndView();
		List<Map> regionMapList = regionService.readMapInfo();
		int total = 0;
		for(Map map : regionMapList) {
			total += ((RegionVO)map.get("regionVO")).getCount();
			
		}
		result.addObject("regionInfoList", regionMapList);
		result.addObject("regionTotalCount", total);
		result.setViewName("region/map");
		return result;
	}
}
