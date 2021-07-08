package com.example.spring05.model.memo.dto;

import lombok.*;
import java.util.Date;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class MemoDTO {
    private String _id;
    private String writer;
    private String memo;
    private Date post_date;

}
