package com.example.spring05.model.guestbook.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@NoArgsConstructor
public class GuestbookDTO {
    private String _id;
    private String name;
    private String email;
    private String content;
    private Date post_date;
}
