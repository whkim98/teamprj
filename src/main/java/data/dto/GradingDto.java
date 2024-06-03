package data.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class GradingDto {
    private int gradingNo;
    private int testNo;
    private String gradingContent;
    private String gradingGrade;
}
