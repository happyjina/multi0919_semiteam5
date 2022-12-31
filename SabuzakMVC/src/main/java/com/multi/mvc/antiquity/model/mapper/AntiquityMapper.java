package com.multi.mvc.antiquity.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.antiquity.model.vo.Antiquity;
import com.multi.mvc.museum.model.vo.Museum;


@Mapper
public interface AntiquityMapper {
	int selectAntiquityCount(Map<String, String> map);
	List<Antiquity> selectAntiquityList(Map<String, String> map);
	Antiquity selectAntiquityByNo(int antiNo);

}
