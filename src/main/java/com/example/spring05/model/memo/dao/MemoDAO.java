package com.example.spring05.model.memo.dao;

import com.example.spring05.model.memo.dto.MemoDTO;

import java.util.List;

public interface MemoDAO {

    List<MemoDTO> getMemoList();
    void memoInsert(MemoDTO dto);
    MemoDTO getMemoDetail(String _id);
    void memoUpdate(MemoDTO dto);
    void memoDelete(String _id);
}
