package org.blacksw.dto;

import java.util.Date;
import lombok.Data;

@Data
public class LoginDTO {
    private String mid;
    private String mpw;
    private Date regdate;
}

