package controllerW.holiday;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TutorController {
    @GetMapping("/tutor/info")
    public String info() {
        return "tutorW/info";
    }
}
