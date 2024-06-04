package data.mapperH;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import data.dto.UserDto;

@Mapper
public interface UserMapperInter {
	@Insert("""
	        INSERT INTO sys_user (user_name, user_id, user_password, user_addr1, user_addr2, user_postal,
	        user_residentno, user_email, user_category, user_gaipday, tutorcate_no)
	        VALUES (#{user_name}, #{user_id}, #{user_password}, #{user_addr1}, #{user_addr2}, #{user_postal},
	        #{user_residentno}, #{user_email}, #{user_category}, NOW(), #{tutorcate_no})
	    """)
	public void insertMember(UserDto dto);

    @Select("SELECT * FROM sys_user WHERE user_id = #{userId}")
    public UserDto getDataById(String userId);

	@Select("select count(*) from sys_user where user_id=#{searchid}")
	public int getIdCheckCount(String searchid);

	@Select("select count(*) from sys_user where user_id=#{user_id} and user_password = #{user_password}")
	public int getIdCheckByUserId(String user_id, String user_password);

	@Select("SELECT * FROM sys_user WHERE user_id = #{userId}")
	public UserDto getSessionULno(String userId);

	@Select("select user_category from sys_user where user_no = #{user_no}")
	public int userCate(int user_no);



}
