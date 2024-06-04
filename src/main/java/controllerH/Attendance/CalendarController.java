package controllerH.Attendance;

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

@Controller
public class CalendarController {
    @Autowired
    private AttendanceService attendanceService;

    @Autowired
    private UserService userService;

    @GetMapping("Calendar/check")
    public String Calendarcheck(Model model,@RequestParam String user_id) {
        
        
        UserDto userDto=userService.getSessionULno(user_id);

        int user_no = userDto.getUser_no();
        String checkin = attendanceService.getAttendanceIn(user_no);
        String checkout=attendanceService.getAttendanceOut(user_no);

        model.addAttribute("checkin", checkin);
        model.addAttribute("checkout", checkout);
        return "user/Calendar";
    }
}
