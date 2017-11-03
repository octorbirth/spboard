package org.blacksw.dto;

import java.util.Date;

import lombok.Data;

@Data
public class BoardDTO {
	    private Long bno;
	    private String title;
	    private String writer;
	    private Date regdate;
}
