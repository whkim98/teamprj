package controllerH.Attendance;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CalendarController {
    @GetMapping("Calendar/check")
    public String check() {
        return "user/Calendar";
    }
}
