package com.example.spring05.model.member.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class MemberDTO {

    private String _id;     //MongoDB's Document identifier. PK is originally set to _id
    private String passwd;
    private String name;
    private String email;
    private String hp;
    private String zipcode;
    private String address1;
    private String address2;

}
