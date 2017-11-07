package org.blacksw.service;

import java.util.List;

import org.blacksw.dto.BoardDTO;
import org.blacksw.dto.Criteria;
import org.blacksw.dto.SearchCriteria;

public interface BoardService {
	public void register(BoardDTO dto);

	public List<BoardDTO> list(SearchCriteria cri);

	public BoardDTO get(Long bno);

	public void delete(BoardDTO dto);

	public void modify(BoardDTO dto);
}
