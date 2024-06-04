package data.mapperW;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.Map;

@Mapper
public interface AttendanceMapperInter {
    @Insert("insert into sys_attendance(attendance_in, attendance_day, user_no) values(now(), now(), #{user_no})")
    public void insertAttendanceIn(int user_no);

    @Update("update sys_attendance set attendance_out = now() where attendance_no = #{attendance_no}")
    public void updateAttendanceOut(int attendance_no);

    @Select("select count(*) from sys_attendance where user_no = #{user_no} and attendance_in is not null")
    public int getCheckIn(int user_no);

    @Select("SELECT attendance_no FROM sys_attendance WHERE user_no = #{user_no} AND attendance_day = CURDATE()")
    public int getAttendanceNo(int user_no);
}
