package controllerH.Attendance;

import data.serviceW.AttendanceService;
import data.serviceW.HolidayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CalendarController {
    @Autowired
    private AttendanceService attendanceService;


    @GetMapping("Calendar/check")
    public String Calendarcheck(Model model,int user_id) {
        String checkin = attendanceService.getAttendanceIn(user_id);
        String checkout=attendanceService.getAttendanceOut(user_id);

        model.addAttribute("checkin", checkin);
        model.addAttribute("checkout", checkout);
        return "user/Calendar";
    }
}
