package controllerH.index;

import data.serviceW.AttendanceService;
import data.serviceW.HolidayService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

    @Autowired
    private HolidayService holidayService;

    @Autowired
    private AttendanceService attendanceService;

    @GetMapping("index/index")
    public String index(HttpSession session, Model model) {
        String user_id = (String) session.getAttribute("loginid");
        int user_no = holidayService.getSessionUserno(user_id);
        int check = attendanceService.getCheckIn(user_no);
        model.addAttribute("check", check);
        return "home/index";
    }

}
