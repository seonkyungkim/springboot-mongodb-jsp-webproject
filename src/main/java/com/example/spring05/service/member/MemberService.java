package com.example.spring05.service.member;

import com.example.spring05.model.member.dto.MemberDTO;

public interface MemberService {
    MemberDTO loginCheck(String userid, String passwd);
    void join(MemberDTO member);    //A method which calls MemberDAO
}
