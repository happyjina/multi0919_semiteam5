package com.multi.mvc.museum.model.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Museum {

	private int museNo; // 박물관 번호
	private String museName; // 박물관명
	private String museType; // 박물관 미술관 구분
	private String museRdnmadr; // 도로명 주소
	private String museLnmadr; // 번지 주소
	private String museLatitude; // 위도
	private String museLongitude; // 경도
	private String musePhone; // 운영기관 전화번호
	private String museInsName; // 운영기관명
	private String museUrl; // 홈페이지 
	private String fcltyInfo; // 편의시설정보
	private String museWeekOpen; // 평일 관람시작시간
	private String museWeekClose; // 평일 관람종료시간
	private String museHolidayOpen; // 공휴일 관람시작시간
	private String museHolidayClose;  // 공휴일 관람종료시간
	private String rstdeInfo; // 휴관정보
	private String museCharge; // 관람료
	private String museIntro; // 박물관 미술관 소개
	private String museTransport; // 교통 안내정보
	private List<MuseReply> replies;

}
