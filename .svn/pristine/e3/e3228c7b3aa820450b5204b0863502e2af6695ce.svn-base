package com.ktds.camp.subRegion.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ktds.camp.subRegion.service.SubRegionService;
import com.ktds.camp.subRegion.vo.SubRegionVO;

@Controller
public class SubRegionController {
	
	private SubRegionService subRegionService;
	

	public void setSubRegionService(SubRegionService subRegionService) {
		this.subRegionService = subRegionService;
	}


	@RequestMapping("/subregion/list")
	@ResponseBody
	public List<SubRegionVO> viewSubRegionList() {
		return subRegionService.readAlLSubRegion();
	}
}
