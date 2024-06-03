package data.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class ReviewDto {
    private int reviewNo;
    private String reviewTitle;
    private String reviewContent;
    private int reviewHit;
    private Date reviewWriteday;
    private int userNo;
}
