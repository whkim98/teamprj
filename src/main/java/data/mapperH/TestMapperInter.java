package data.mapperH;

import data.dto.UserDto;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface TestMapperInter {
    @Select("SELECT * FROM sys_user WHERE user_id = #{userId}")
    UserDto getSessionid(String userId);
}

