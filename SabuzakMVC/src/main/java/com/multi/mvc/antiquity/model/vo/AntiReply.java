package com.multi.mvc.antiquity.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AntiReply {
	private int aReplyNo;
	private int antNo;
	private int memberNo;
	private String id;
	private String content;
	private int good;
	private int bad;
	private String status;
	private Date createDate;
	private Date modifyDate;
}
