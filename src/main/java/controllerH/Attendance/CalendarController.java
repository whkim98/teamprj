package controllerH.Attendance;

import data.dto.HolidayDto;
import data.dto.UserDto;
import data.serviceH.UserService;
import data.serviceW.AttendanceService;
import data.serviceW.HolidayService;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class CalendarController {
    @Autowired
    private AttendanceService attendanceService;

    @Autowired
    private UserService userService;

    @Autowired
    private HolidayService holidayService;

    @GetMapping("Calendar/check")
    public String Calendarcheck(Model model,@RequestParam String user_id) {
        
        
        UserDto userDto=userService.getSessionULno(user_id);

        int user_no = userDto.getUser_no();


        int holidayCount=holidayService.getHolidayCount(user_no);

        List<UserDto> list= userService.getAttendancedto(user_no);
        model.addAttribute("list", list);
        if(holidayCount>0) {
            HolidayDto holidayDto=holidayService.getHolidayByUserNo(user_no);
            String holidaystart=holidayDto.getHoliday_start();
            String holidayend=holidayDto.getHoliday_end();


            model.addAttribute("holidaystart", holidaystart);
            model.addAttribute("holidayend", holidayend);

        }
        else{
            String checkin = attendanceService.getAttendanceIn(user_no);
            String checkout=attendanceService.getAttendanceOut(user_no);
            String attendance_day=attendanceService.getAttendanceDay(user_no);


            model.addAttribute("attendance_day",attendance_day);
            model.addAttribute("checkin", checkin);
            model.addAttribute("checkout", checkout);

        }



        return "user/Calendar";
    }
}
