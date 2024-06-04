package data.serviceW;

import data.mapperW.AttendanceMapperInter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class AttendanceService {
    @Autowired
    private AttendanceMapperInter attendanceMapperInter;

    public void insertAttendanceIn(int user_no){
        attendanceMapperInter.insertAttendanceIn(user_no);
    }

    public void updateAttendanceOut(int attendance_no){
        attendanceMapperInter.updateAttendanceOut(attendance_no);
    }

    public int getCheckIn(int user_no){
        return attendanceMapperInter.getCheckIn(user_no);
    }

    public int getAttendanceNo(int user_no){
        return attendanceMapperInter.getAttendanceNo(user_no);
    }


}
