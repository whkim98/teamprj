package data.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class TestDto {
    private int testNo;
    private int lectureNo;
    private int userNo;
    private String testQuestion;
    private String testContent;
}
