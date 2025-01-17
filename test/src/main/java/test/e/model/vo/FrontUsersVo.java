package test.e.model.vo;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class FrontUsersVo {
	private int id;
	private String userid1;
	private String userid2;
	private String userid3;
	private String password;
}
