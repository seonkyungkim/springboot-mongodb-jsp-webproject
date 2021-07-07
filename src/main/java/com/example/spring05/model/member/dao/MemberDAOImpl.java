package com.example.spring05.model.member.dao;

import com.example.spring05.model.member.dto.MemberDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Component;

import java.util.List;

@Component("memberDao") //@Repository also can be used instead of @Component
public class MemberDAOImpl implements MemberDAO {

    //An Object that connects to MongoDB and execute queries
    @Autowired
    MongoTemplate mongoTemplate;

    //A collection named 'member' of MongoDB
    static String COLLECTION_NAME = "member";

    @Override
    public MemberDTO loginCheck(String userid, String passwd) {
        //A query that checks if the parameters are the same with the documents of the member collection
        Query query = new Query(new Criteria("_id").is(userid)
                .and("passwd").is(passwd));
        //If a 'query' result from 'COLLECTION_NAME' is true, userid and passwd will be put into the MemberDTO type
        List<MemberDTO> items = mongoTemplate.find(query, MemberDTO.class, COLLECTION_NAME);
        if(items.size() > 0){
            return items.get(0);
        }else{
            return null;
        }
    }

    @Override
    public void join(MemberDTO dto) {
        mongoTemplate.insert(dto, COLLECTION_NAME);
    }
}
