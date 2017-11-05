package org.blacksw.mapper;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.blacksw.dto.BoardDTO;

public interface BoardMapper {

	@Insert("insert into tbl_board (title, writer) values (#{title}, #{writer})")
	void register(BoardDTO dto);

	@Select("select * from tbl_board")
	List<BoardDTO> getList();

	@Select("select * from tbl_board where bno = #{bno}")
	BoardDTO getBoard(Long bno);

	@Delete("delete from tbl_board where bno = #{bno}")
	void remove(BoardDTO dto);
	
	@Update("update tbl_board set title = #{title} where bno = #{bno}")
	void update(BoardDTO dto);
	
}
