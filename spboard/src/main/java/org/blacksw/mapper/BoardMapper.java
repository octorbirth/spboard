package org.blacksw.mapper;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.blacksw.dto.BoardDTO;

public interface BoardMapper {

	@Insert("insert into tbl_board (title, writer) values (#{title}, #{writer})")
	void register(BoardDTO dto);

	@Select("select * from tbl_board")
	List<BoardDTO> getList();

}
