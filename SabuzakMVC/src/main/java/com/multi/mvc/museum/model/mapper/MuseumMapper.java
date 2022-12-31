package com.multi.mvc.museum.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.museum.model.vo.Museum;


@Mapper
public interface MuseumMapper {
	int selectMuseumCount(Map<String, String> map);
	List<Museum> selectMuseumList(Map<String, String> map);
	Museum selectMuseumByNo(int museNo);

}
