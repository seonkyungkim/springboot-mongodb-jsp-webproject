package com.example.spring05.service.memo;

import com.example.spring05.model.memo.dto.MemoDTO;

import java.util.List;

public interface MemoService {
    List<MemoDTO> getMemoList();
    void memoInsert(MemoDTO dto);
    MemoDTO memoDetail(String _id);
    void memoUpdate(MemoDTO dto);
    void memoDelete(String _id);
}
