package data.mapperW;

import data.dto.UserDto;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface HolidayMapperInter {

    @Select("select user_no from sys_user where user_id=#{user_id}")
    public int getSessionUserno(String user_id);

    @Select("select * from sys_user where user_no = #{user_no}")
    public UserDto getHoliday(int user_no);

}
