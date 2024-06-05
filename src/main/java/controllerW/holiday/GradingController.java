package controllerW.holiday;

import data.dto.TestDto;
import data.serviceH.TestService;
import data.serviceH.UserService;
import data.serviceW.GradingService;
import data.serviceW.HolidayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class GradingController {
    @Autowired
    private HolidayService holidayService;

    @Autowired
    private GradingService gradingService;
    @Autowired
    private TestService testService;

    @GetMapping("/grading/grade")
    public String grade(Model model, String user_id) {
        int user_no = holidayService.getSessionUserno(user_id);
        System.out.println(user_no);

        int tutorcate_no = gradingService.getTutorcate(user_no);
        System.out.println("ttttt" + tutorcate_no);

        List<TestDto> list = gradingService.getTest(tutorcate_no);

        model.addAttribute("list", list);
        model.addAttribute("tutorcate_no", tutorcate_no);
        return "grading/grade";
    }

    @GetMapping("/grading/score")
    public String score(Model model, int user_no, int tutorcate_no) {
        Map<String, Object> map = new HashMap<>();
        map.put("user_no", user_no);
        map.put("tutorcate_no", tutorcate_no);
        List<TestDto> list = gradingService.getTestUser(map);
        model.addAttribute("list", list);

        return "grading/score";
    }
}
