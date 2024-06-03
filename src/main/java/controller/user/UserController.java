package controller.user;

import data.service.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping("/user/Userform")
    public String userForm() {
        return "user/Userform";  // 실제 JSP 경로
    }


    @ResponseBody  //json 으로 반환
    @GetMapping("/user/idcheck")
    public Map<String, Integer> getIdCheck(
            @RequestParam String searchid)
    {
        Map<String, Integer> map=new HashMap<>();
        int count=userService.getIdCheckCount(searchid);
        map.put("count", count);
        return map;
    }

    @GetMapping("/user/logincheck")
    @ResponseBody
    public Map<String, String> loginCheck(@RequestParam String user_id, @RequestParam String user_password
    , HttpSession session, @RequestParam(defaultValue = "no") String saveid) {
        Map<String, String> response = new HashMap<>();
        int check = userService.getIdCheckByUserId(user_id, user_password);
        if (check == 1) {
            response.put("status", "success");
            session.setAttribute("saveid", saveid.equals("no")?"no":"yes");
            session.setAttribute("loginok", "yes");
            session.setAttribute("loginid", user_id);
        } else {
            response.put("status", "fail");
        }
        return response;
    }

}
