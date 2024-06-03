package data.serviceW;

import data.dto.UserDto;
import data.mapperW.HolidayMapperInter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HolidayService {

    @Autowired
    private HolidayMapperInter holidayInter;

    public int getSessionUserno(String user_id){
        return holidayInter.getSessionUserno(user_id);
    }

    public UserDto getHoliday(int user_no){
        return holidayInter.getHoliday(user_no);
    }

}
