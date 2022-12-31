package com.multi.mvc.member.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Member {
	private int memberno;
	private String id;
	private String password;
	private String role;
	private String name;
	private String email;
	private String address;
	private String kakaoToken;
	private String originalImageName;
	private String renamedImageName ;
	private Date enrollDate;
	private Date modifyDate;
}
