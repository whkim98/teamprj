package data.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class HdkindDto {
    private int hdkindNo;
    private String hdkindName;
    private double hdkindDays;
}
