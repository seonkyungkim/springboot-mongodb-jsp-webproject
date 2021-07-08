package com.example.spring05.service.memo;

import com.example.spring05.model.memo.dao.MemoDAO;
import com.example.spring05.model.memo.dto.MemoDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component("memoService")
public class MemoServiceImpl implements MemoService {
    @Autowired
    MemoDAO memoDao;

    @Override
    public List<MemoDTO> getMemoList() {
        return memoDao.getMemoList();
    }

    @Override
    public void memoInsert(MemoDTO dto) {
        memoDao.memoInsert(dto);
    }

    @Override
    public MemoDTO memoDetail(String _id) {
        return memoDao.getMemoDetail(_id);
    }

    @Override
    public void memoUpdate(MemoDTO dto) {
        memoDao.memoUpdate(dto);
    }

    @Override
    public void memoDelete(String _id) {
        memoDao.memoDelete(_id);
    }
}
