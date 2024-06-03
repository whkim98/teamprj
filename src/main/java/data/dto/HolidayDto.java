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
public class HolidayDto {
    private int holidayNo;
    private int userNo;
    private int hdkindNo;
    private Date holidayStart;
    private Date holidayEnd;
}
