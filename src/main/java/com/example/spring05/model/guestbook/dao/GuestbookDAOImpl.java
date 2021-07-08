package com.example.spring05.model.guestbook.dao;

import com.example.spring05.model.guestbook.dto.GuestbookDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.List;
import java.util.Queue;

@Component
public class GuestbookDAOImpl implements GuestbookDAO {
    @Autowired
    MongoTemplate mongoTemplate;

    String COLLECTION_NAME = "guestbook";

    @Override
    public List<GuestbookDTO> getArticleList() {
        Query query = new Query().with(Sort.by(Sort.Direction.DESC, "post_date"));
        return (List<GuestbookDTO>) mongoTemplate.find(query, GuestbookDTO.class, COLLECTION_NAME);
    }

    @Override
    public void articleInsert(GuestbookDTO dto) {
        dto.setPost_date(new Date());
        mongoTemplate.insert(dto, COLLECTION_NAME);
    }

    @Override
    public void articleUpdate(GuestbookDTO dto) {
        Query query = new Query(new Criteria("_id").is(dto.get_id()));
        Update update = new Update();
        update.set("name", dto.getName());
        update.set("email", dto.getEmail());
        update.set("content", dto.getContent());
        mongoTemplate.updateFirst(query, update, COLLECTION_NAME);
    }

    @Override
    public void articleDelete(String _id) {
        Query query = new Query(new Criteria("_id").is(_id));
        mongoTemplate.remove(query, COLLECTION_NAME);
    }

    @Override
    public GuestbookDTO guestbookDetail(String _id) {
        return mongoTemplate.findById(_id, GuestbookDTO.class, COLLECTION_NAME);
    }
}
