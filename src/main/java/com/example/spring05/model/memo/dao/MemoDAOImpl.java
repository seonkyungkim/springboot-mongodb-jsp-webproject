package com.example.spring05.model.memo.dao;

import com.example.spring05.model.memo.dto.MemoDTO;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Component;

import javax.inject.Inject;
import java.util.Date;
import java.util.List;

@Component("memoDao")
public class MemoDAOImpl implements MemoDAO {

    @Inject
    MongoTemplate mongoTemplate;
    static String COLLECTION_NAME = "memo";

    @Override
    public List<MemoDTO> getMemoList() {
        Query query = new Query().with(Sort.by(Sort.Direction.DESC, "post_date"));
        return (List<MemoDTO>) mongoTemplate.find(query, MemoDTO.class, COLLECTION_NAME);
    }

    @Override
    public void memoInsert(MemoDTO dto) {
        dto.setPost_date(new Date());
        mongoTemplate.insert(dto, COLLECTION_NAME);
    }

    @Override
    public MemoDTO getMemoDetail(String _id) {
        return mongoTemplate.findById(_id, MemoDTO.class, COLLECTION_NAME);
    }

    @Override
    public void memoUpdate(MemoDTO dto) {
        Query query = new Query(new Criteria("_id").is(dto.get_id()));

        Update update = new Update();
        update.set("writer", dto.getWriter());
        update.set("memo", dto.getMemo());
        mongoTemplate.upsert(query, update, MemoDTO.class, COLLECTION_NAME);
    }

    @Override
    public void memoDelete(String _id) {
        Query query = new Query(new Criteria("_id").is(_id));
        mongoTemplate.remove(query, COLLECTION_NAME);
    }
}
