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
    private int test_no;
    private int lecture_no;
    private int user_no;
    private String test_question;
    private String test_content;
}
