package controllerH.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;

@Controller
public class registerController {

    @PostMapping("/user/registerTest")
    public String registerTest(
            @RequestParam("formId") String formId,
            @RequestParam("answer1") String answer1,
            @RequestParam("answer2") String answer2,
            Model model) {

        // 모델에 폼 ID와 답변을 저장
        model.addAttribute("formId", formId);
        model.addAttribute("answer1", answer1);
        model.addAttribute("answer2", answer2);

        return "user/registerTest"; // user/registerTest.jsp로 이동
    }
}
