package com.example.spring05.model.guestbook.dao;

import com.example.spring05.model.guestbook.dto.GuestbookDTO;

import java.util.List;

public interface GuestbookDAO {
    List<GuestbookDTO> getArticleList();
    void articleInsert(GuestbookDTO dto);
    void articleUpdate(GuestbookDTO dto);
    void articleDelete(String _id);
    GuestbookDTO guestbookDetail(String _id);
}
