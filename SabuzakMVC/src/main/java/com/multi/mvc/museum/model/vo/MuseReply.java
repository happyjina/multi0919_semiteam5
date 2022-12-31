package com.multi.mvc.museum.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MuseReply {
	private int mReplyNo; // 댓글번호
	private int museNo; // 박물관 번호
	private int memberNo; // 멤버 번호
	private String content; // 내용
	private int good; // 좋아요 수
	private int bad; // 싫어요 수
	private String status; // 상태, "Y" : 정상 상태 "N": 삭제
	private Date createDate; // 생성일시
	private Date modifyDate; // 수정일시
	private int star; // 별점
	
}
