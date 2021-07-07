package com.example.spring05.model.member.dao;

import com.example.spring05.model.member.dto.MemberDTO;

public interface MemberDAO {
    MemberDTO loginCheck(String userid, String passwd);
    void join(MemberDTO dto);
}
