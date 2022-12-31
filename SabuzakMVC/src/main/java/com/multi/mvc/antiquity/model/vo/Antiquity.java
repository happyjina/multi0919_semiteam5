package com.multi.mvc.antiquity.model.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Antiquity {
	private int antNo;
	private String antId;
	private String antName;
	private String antNameKr;
	private String antNameCn;
	private String antAuthor;
	private String antIndexWord;
	private String antMuseumName1;
	private String antMuseumName2;
	private String antMuseumName3;
	private String antImgUri;
	private String antImgThumUriS;
	private String antImgThumUriM;
	private String antImgThumUriL;
	private String antNationalityName1;
	private String antNationalityName2;
	private String antMaterialName1;
	private String antMaterialName2;
	private String antPurposeName1;
	private String antPurposeName2;
	private String antPurposeName3;
	private String antPurposeName4;
	private String antSizeRangeName;
	private String antPlaceLandName1;
	private String antPlaceLandName2;
	private String antDesignationName1;
	private String antDesignationCode1;
	private String antSizeInfo;
	private String antDesc;
	private List<AntiReply> a_replies;
	private boolean bookmarkAnt;
}
