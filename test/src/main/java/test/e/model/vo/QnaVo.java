package test.e.model.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class QnaVo {
	 private int id;
	 private String category;
	 private String qnaTitle;
	 private String qnaContent;
}
