package org.blacksw.mapper;

import org.apache.ibatis.annotations.Insert;
import org.blacksw.dto.LoginDTO;

public interface MemberMapper {
	@Insert("insert into tbl_member (mid ,  mpw) values (#{mid} ,  #{mpw})")
    public void insert(LoginDTO dto);

}
