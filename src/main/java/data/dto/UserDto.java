package data.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.ibatis.type.Alias;
import java.math.BigDecimal;
import java.sql.Timestamp;

@NoArgsConstructor
@Data
@Alias("UserDto")
@Builder
@AllArgsConstructor
public class UserDto {
	private int userNo;
    private String userName;
    private String userId;
    private String userPassword;
    private String userAddr1;
    private String userAddr2;
    private String userPostal;
    private String userResidentno;
    private String userEmail;
    private int userCategory; // 행정직원: 0, 학생: 1, 강사: 2
    private double userHoliday;
    private Integer userIncentive; // Nullable, with a default value*/
    private Timestamp userGaipday; // Timestamp for registration date
    private Integer tutorcateNo; // Nullable as it's a foreign key

	
	/*
	 * sequence 유저 이름 유저 아이디 유저 비밀번호
	 *  유저 도로명주소 유저 상세주소 유저 우편번호
	 *   유저 주민등록번호 
	 *   유저 이메일 주소 
	 *   유저
	 * 분류 

	 */
}
