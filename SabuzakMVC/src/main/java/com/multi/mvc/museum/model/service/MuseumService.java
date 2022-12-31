package com.multi.mvc.museum.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.museum.model.mapper.MuseumMapper;
import com.multi.mvc.museum.model.vo.Museum;

@Service
public class MuseumService {

	@Autowired
	MuseumMapper mapper;

	public int selectMuseumCount(Map<String, String> param) {
		return mapper.selectMuseumCount(param);
	}
	public List<Museum> selectMuseumList(PageInfo pageInfo, Map<String, String> param){
		param.put("limit", "" + pageInfo.getListLimit());
		param.put("offset", "" + (pageInfo.getStartList() - 1));
		return mapper.selectMuseumList(param);
	}
	public Museum selectMuseumByNo(int museNo) {
		return mapper.selectMuseumByNo(museNo);
	}

}
