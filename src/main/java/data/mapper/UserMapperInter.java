package data.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import data.dto.UserDto;

@Mapper
public interface UserMapperInter {
	@Insert("""
	        INSERT INTO sys_user (user_name, user_id, user_password, user_addr1, user_addr2, user_postal,
	        user_residentno, user_email, user_category, user_gaipday)
	        VALUES (#{userName}, #{userId}, #{userPassword}, #{userAddr1}, #{userAddr2}, #{userPostal},
	        #{userResidentno}, #{userEmail}, #{userCategory}, NOW())
	    """)
	public void insertMember(UserDto dto);

    @Select("SELECT * FROM sys_user WHERE user_id = #{userId}")
    public UserDto getDataById(String userId);

	@Select("select count(*) from sys_user where user_id=#{searchid}")
	public int getIdCheckCount(String searchid);

	@Select("select count(*) from sys_user where user_id=#{user_id} and user_password = #{user_password}")
	public int getIdCheckByUserId(String user_id, String user_password);
}
