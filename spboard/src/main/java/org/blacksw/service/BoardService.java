package org.blacksw.service;

import java.util.List;

import org.blacksw.dto.BoardDTO;

public interface BoardService {
	public void register(BoardDTO dto);

	public List<BoardDTO> list();

	public BoardDTO get(Long bno);
}
