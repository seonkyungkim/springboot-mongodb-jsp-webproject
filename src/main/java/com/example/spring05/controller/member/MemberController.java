package com.example.spring05.controller.member;

import com.example.spring05.model.member.dto.MemberDTO;
import com.example.spring05.service.member.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller //set as a controller bean
@RequestMapping("member/*")
public class MemberController {

    @Autowired
    private MemberService memberService;

    @RequestMapping("join.do")
    public ModelAndView join(){
        return new ModelAndView("member/join");
    }

    @RequestMapping("member_join.do")
    public String member_join(String _id, String passwd, String name) throws Exception {
        MemberDTO dto = new MemberDTO();
        dto.set_id(_id);
        dto.setPasswd(passwd);
        dto.setName(name);
        memberService.join(dto);
        return "redirect:/member/login.do";
    }

    @RequestMapping("login.do")
    public ModelAndView login(){
        return new ModelAndView("member/login");
    }

    @RequestMapping("login_check.do")
    public ModelAndView login_check(String _id, String passwd, HttpSession session) throws Exception {
        MemberDTO dto = memberService.loginCheck(_id, passwd);
        String message="";
        String url="";
        if(dto == null){
            message="We cannot find an account with that ID or password.";
            url="member/login";
        }else{
            message="Welcome, " + dto.getName();
            url="home";
            session.setAttribute("userid", _id);
            session.setAttribute("name", dto.getName());
        }
        //Map for saving the data
        Map<String,Object> map = new HashMap<>();
        map.put("message", message);
        //new ModelAndView(url to go to, "parameter name", value);
        return new ModelAndView(url, "map", map);
    }

    @RequestMapping("logout.do")
    public String logout(HttpSession session) throws Exception {
        session.invalidate();   //initialize the session.
        return "redirect:/member/login.do";
    }

}







