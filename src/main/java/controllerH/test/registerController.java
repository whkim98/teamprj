
package controllerH.test;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;


@Controller
public class registerController {

    @PostMapping("user/registerTest")
    public String registerTest() {

        return "user/registerTest"; // user/registerTest.jsp로 이동
    }
}