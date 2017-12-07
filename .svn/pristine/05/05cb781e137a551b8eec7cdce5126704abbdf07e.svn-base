package com.ktds.camp.campingPlace.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ktds.camp.campDetail.vo.CampDetailVO;
import com.ktds.camp.campingPlace.dao.CampingPlaceDao;
import com.ktds.camp.campingPlace.service.CampingPlaceService;
import com.ktds.camp.campingPlace.vo.CampingPlaceVO;

import io.github.seccoding.excel.option.WriteOption;
import io.github.seccoding.excel.write.ExcelWrite;


@Controller
public class CampingPlaceController {
	
	private CampingPlaceService campingPlaceService;
	
	public void setCampingPlaceService(CampingPlaceService campingPlaceService) {
		this.campingPlaceService = campingPlaceService;
	}

	@RequestMapping("/campingPlace/facilities")
	public ModelAndView viewFacilitiesPage() {
		ModelAndView view = new ModelAndView();
		CampingPlaceVO campingPlaceVO = campingPlaceService.readOneCampingPlace(1); //추후에 pathVariable로 campingPlaceId값을 받아오도록 코딩할 예정.
		
		view.addObject("CampingPlaceVO", campingPlaceVO);
		view.setViewName("campingPlace/campingPlace");
		
		return view;
	}

	@RequestMapping("/campingPlace/download") 
	public void download(HttpServletRequest request, HttpServletResponse response) {
		List<String[]> contents = new ArrayList();
		
		List<CampingPlaceVO> campingList = campingPlaceService.readAllCampingPlace();

		contents.add(new String[]{"이름", "새 주소", "구 주소", "전화번호", "홈페이지"
				, "면적(m^2)", "최대 수용 인원", "이용 시간", "요금", "화장실"
				, "개수대", "샤워실", "무선인터넷", "매점", "바베큐장"
				, "전기시설", "카라반", "글램핑", "텐트", "애완동물 수용 가능 여부"});
		
		for(CampingPlaceVO campVO : campingList) {
			contents.add(new String[]{campVO.getCmpPlcNm()
									, campVO.getNewFullAddress()
									, campVO.getOldFullAddress()
									, campVO.getTelNo()
									, campVO.getHmpgAddress()
									, String.valueOf(campVO.getArea())
									, String.valueOf(campVO.getMaximumCapacity())
									, campVO.getUseHours()
									, campVO.getCharge()
									, campVO.getFacToilet()
									, campVO.getFacSink()
									, campVO.getFacShowerroom()
									, campVO.getFacWifi()
									, campVO.getFacStore()
									, campVO.getFacBbq()
									, campVO.getFacElectric()
									, campVO.getFacCaravan()
									, campVO.getFacGlamping()
									, campVO.getFacTent()
									, campVO.getFacPet()});
		}
		
		WriteOption wo = new WriteOption();
		wo.setFileName("campingplacelist.xlsx");
		wo.setSheetName("전국캠핑업체");
		wo.setTitles("전국 캠핑 업체 리스트");
		wo.setContents(contents);
		
		ExcelWrite.write(wo, response);
	}
}
