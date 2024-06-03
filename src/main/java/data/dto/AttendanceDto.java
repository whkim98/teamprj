package data.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;
import java.sql.Time;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class AttendanceDto {
    private int attendanceNo;
    private Time attendanceIn;
    private Time attendanceOut;
    private Date attendanceDay;
    private int userNo;
}
