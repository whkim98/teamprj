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
    private int review_no;
    private String review_title;
    private String review_content;
    private int review_hit;
    private Date review_writeday;
    private int user_no;
}
