package com.example.spring05.controller.memo;

import com.example.spring05.model.memo.dto.MemoDTO;
import com.example.spring05.service.memo.MemoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class MemoController {
    @Autowired
    MemoService memoService;

    @RequestMapping("/memo.do")
    public ModelAndView memo(){
        return new ModelAndView("memo/memo");
    }

    @RequestMapping("/memo_list.do")
    public ModelAndView memo_list(){
        Map<String,Object> map = new HashMap<>();
        List<MemoDTO> list = memoService.getMemoList();
        map.put("items", list);
        return new ModelAndView("memo/memo_list", "map", map);
    }

    @RequestMapping("/memo_insert.do")
    public String memo_insert(@ModelAttribute("memo") MemoDTO dto){
        memoService.memoInsert(dto);
        return "redirect:/memo.do";
    }

    @RequestMapping("/memo_view.do")
    public ModelAndView memo_view(@RequestParam("_id") String _id){
        MemoDTO dto = memoService.memoDetail(_id);
        return new ModelAndView("memo/memo_view", "dto", dto);
    }

    @RequestMapping("/memo_update.do")
    public String memo_update(String _id, String writer, String memo){
        MemoDTO dto = new MemoDTO();
        dto.set_id(_id);
        dto.setWriter(writer);
        dto.setMemo(memo);
        memoService.memoUpdate(dto);
        return "redirect:/memo.do";
    }

    @RequestMapping("/memo_delete.do")
    public String memo_delete(@RequestParam("_id") String _id){
        memoService.memoDelete(_id);
        return "redirect:/memo.do";
    }
}
