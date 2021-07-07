package com.example.spring05.config;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/*
 * It creates Beans according to the MongoDB settings from application.properties
 * because Springboot doesn't have dispatcher-servlet.xml and applicationContext.xml
 * */
@Configuration  //It works like below codes are in the applicationContext.xml
public class MongoConfig {

    @Bean   //Binding when the server starts
    public MongoClient mongoClient(){
        return MongoClients.create("mongodb://web:1234@localhost:27017/web?authSource=web&authMechanism=SCRAM-SHA-1");
    }
}
