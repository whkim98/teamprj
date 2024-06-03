package controllerW.holiday;

import data.dto.UserDto;
import data.serviceW.HolidayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HolidayController {

    @Autowired
    private HolidayService holidayService;

    @GetMapping("/holiday/homain")
    public String homain(String user_id, Model model) {
        System.out.println(user_id);
        int user_no = holidayService.getSessionUserno(user_id);
        System.out.println(user_no);
        UserDto dto = new UserDto();
        dto = holidayService.getHoliday(user_no);
        model.addAttribute("dto", dto);
        System.out.println(dto.getUser_name());
        return "holidayW/homain";
    }

}
