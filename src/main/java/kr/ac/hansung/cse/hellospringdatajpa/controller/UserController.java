package kr.ac.hansung.cse.hellospringdatajpa.controller;

import kr.ac.hansung.cse.hellospringdatajpa.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequiredArgsConstructor
public class UserController {

    private final UserService userService;

    @GetMapping("/signup")
    public String signupForm() {
        return "signup";
    }

    @PostMapping("/signup")
    public String signup(@RequestParam String email, @RequestParam String password, Model model) {
        try {
            userService.registerUser(email, password);
            return "redirect:/login";
        } catch(Exception e) {
            model.addAttribute("error", "이미 존재하는 이메일이거나 회원가입에 실패했습니다.");
            return "signup";
        }
    }

    @GetMapping("/login")
    public String loginForm(@RequestParam(required = false) String error, Model model) {
        if (error != null) {
            model.addAttribute("error", "로그인에 실패했습니다. 이메일 또는 비밀번호를 확인하세요.");
        }
        return "login";
    }
}