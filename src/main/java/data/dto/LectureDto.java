package data.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Time;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class LectureDto {
    private int lectureNo;
    private String lectureName;
    private Time lectureTime;
}
