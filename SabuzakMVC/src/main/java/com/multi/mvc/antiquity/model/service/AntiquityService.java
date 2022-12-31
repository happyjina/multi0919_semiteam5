package com.multi.mvc.antiquity.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.antiquity.model.mapper.AntiquityMapper;
import com.multi.mvc.antiquity.model.vo.Antiquity;
import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.museum.model.vo.Museum;

@Service
public class AntiquityService {

	@Autowired
	AntiquityMapper mapper;

	public int selectAntiquityCount(Map<String, String> param) {
		return mapper.selectAntiquityCount(param);
	}
	public List<Antiquity> selectAntiquityList(PageInfo pageInfo, Map<String, String> param){
		param.put("limit", "" + pageInfo.getListLimit());
		param.put("offset", "" + (pageInfo.getStartList() - 1));
		return mapper.selectAntiquityList(param);
	}
	public Antiquity selectAntiquityByNo(int antiNo) {
		return mapper.selectAntiquityByNo(antiNo);
	}

}
