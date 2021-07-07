package com.example.spring05.service.member;

import com.example.spring05.model.member.dao.MemberDAO;
import com.example.spring05.model.member.dto.MemberDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("memberService")
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberDAO memberDao;

    @Override
    public MemberDTO loginCheck(String userid, String passwd) {
        return memberDao.loginCheck(userid, passwd);
    }

    @Override
    public void join(MemberDTO member) {
        memberDao.join(member);
    }
}
