package com.example.spring05.controller.guestbook;

import com.example.spring05.model.guestbook.dao.GuestbookDAO;
import com.example.spring05.model.guestbook.dto.GuestbookDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class GuestbookController {
    @Autowired
    GuestbookDAO guestbookDao;

    @RequestMapping("/guestbook.do")
    public ModelAndView guestbook() {
        return new ModelAndView("guestbook/guestbook"); //guestbook.jsp
    }

    @RequestMapping("/gbList.do")
    public ModelAndView gbList() {
        List<GuestbookDTO> items=guestbookDao.getArticleList(); //방명록 리스트
        Map<String,Object> map=new HashMap<>();
        map.put("list", items);
        map.put("count", items.size()); //글의 개수
        return new ModelAndView("guestbook/gb_list","map",map);
    }

    @RequestMapping("/gbEdit.do")
    public ModelAndView gbEdit(String id) {
        GuestbookDTO dto=guestbookDao.guestbookDetail(id); //상세
        Map<String,Object> map=new HashMap<>();
        map.put("dto", dto);
        return new ModelAndView("guestbook/gb_edit", "map", map);
    }

    @RequestMapping("/gbWrite.do")
    public ModelAndView gbWrite() {
        return new ModelAndView("guestbook/gb_write"); //글쓰기 페이지로 이동
    }

    @RequestMapping("/gbInsert.do")
    public String gbInsert(String name, String email, String content) {
        if(name==null || name.equals("")) { //입력된 값이 없으면
            return "redirect:/gbWrite.do"; //입력페이지로 이동
        }
        GuestbookDTO dto=new GuestbookDTO();
        dto.setName(name);
        dto.setEmail(email);
        dto.setContent(content);
        guestbookDao.articleInsert(dto); //저장
        return "redirect:/guestbook.do";
    }

    @RequestMapping("/gbUpdate.do")
    public String gbUpdate(String _id, String name, String email, String content) {
        GuestbookDTO dto=new GuestbookDTO();
        dto.set_id(_id);
        dto.setName(name);
        dto.setEmail(email);
        dto.setContent(content);
        guestbookDao.articleUpdate(dto); //수정
        return "redirect:/guestbook.do";
    }

    @RequestMapping("/gbDelete.do")
    public String gbDelete(String _id) {
        guestbookDao.articleDelete(_id); //삭제
        return "redirect:/guestbook.do";
    }
}
