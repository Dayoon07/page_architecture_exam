package com.e.d.model.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class MainTestVo {
	private long id;
	private String category;
	private String qnaTitle;
	private String qnaContent;
	private long views;
}
