package org.blacksw.mapper;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Insert;
import org.blacksw.dto.BoardDTO;

public interface BoardMapper {

	@Insert("insert into tbl_board (title, writer) values (#{title}, #{writer})")
	void register(BoardDTO dto);

}
