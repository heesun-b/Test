package shop.mtcoding.testheesun.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import shop.mtcoding.testheesun.model.Board;
import shop.mtcoding.testheesun.model.BoardRepository;
import shop.mtcoding.testheesun.model.User;

@Controller
public class BoardCotroller {

    @Autowired
    private HttpSession session;

    @Autowired
    private BoardRepository boardRepository;

    @GetMapping({ "/", "/list" })
    public String findAll(Model model) {
        List<Board> boardList = boardRepository.findAll();
        model.addAttribute("boardList", boardList);
        model.addAttribute("pagename", "메인");
        return "board/list";
    }

    @GetMapping("/user/{id}/boardList")
    public String findByUserId(@PathVariable int id, Model model) {

        List<Board> userBoardList = boardRepository.findByUserId(id);
        model.addAttribute("userBoardList", userBoardList);
        model.addAttribute("pagename", "나의 게시글");
        return "board/detail";
    }
}