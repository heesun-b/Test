package shop.mtcoding.testheesun.controller;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.yaml.snakeyaml.events.Event.ID;

import shop.mtcoding.testheesun.model.User;
import shop.mtcoding.testheesun.model.UserRepository;

@Controller
public class UserController {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private HttpSession session;

    @GetMapping("/loginForm")
    public String loignForm(Model model) {
        model.addAttribute("pagename", "로그인");
        return "user/loginForm";
    }

    @GetMapping("/joinForm")
    public String joinForm(Model model) {
        model.addAttribute("pagename", "회원가입");
        return "user/joinForm";
    }

    @PostMapping("/join")
    public String insert(String username, String password, String email) {
        int result = userRepository.insert(username, password, email);
        if (result != 1) {
            return "redirect:/notfound";
        }
        return "redirect:/loginForm";
    }

    @PostMapping("/login")
    public String findByUsernameAndPassword(String username, String password) {
        User user = userRepository.findByUsernameAndPassword(username, password);

        if (user == null) {
            return "redirect:/loginForm";
        }
        session.setAttribute("principal", user);
        return "redirect:/list";
    }

    @GetMapping("/user/{id}/userInfo")
    public String userInfoForm(@PathVariable int id, Model model) {
        session.getAttribute("principal");
        model.addAttribute("pagename", "회원정보");
        return "user/userInfoForm";
    }

    @GetMapping("/user/{id}/updateForm")
    public String updateForm(@PathVariable int id, Model model) {
        model.addAttribute("pagename", "회원수정");
        return "user/updateForm";
    }

    @PostMapping("/user/{id}/update")
    public String update(@PathVariable int id, String password, String email) {
        User user = (User) session.getAttribute("principal");

        if (user.getId() != id) {
            return "redirect:/notfound";
        }

        int result = userRepository.update(id, password, email);
        if (result != 1) {
            return "redirect:/loginForm";
        }
        return "redirect:/loginForm";
    }

    @GetMapping("/logout")
    public String logout() {
        session.removeAttribute("principal");
        return "redirect:/list";
    }
}
