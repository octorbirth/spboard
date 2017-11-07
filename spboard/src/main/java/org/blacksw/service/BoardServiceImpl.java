package org.blacksw.service;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Insert;
import org.blacksw.dto.BoardDTO;
import org.blacksw.dto.Criteria;
import org.blacksw.dto.SearchCriteria;
import org.blacksw.mapper.BoardMapper;
import org.springframework.stereotype.Service;

import lombok.extern.java.Log;

@Service
@Log
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardMapper boardMapper;
	
	@Override
	public void register(BoardDTO dto) {
		boardMapper.register(dto);
	}

	@Override
	public List<BoardDTO> list(SearchCriteria cri) {
		cri.setTotal(boardMapper.getTotal(cri));
		return boardMapper.getList(cri);
	}

	@Override
	public BoardDTO get(Long bno) {
		return boardMapper.getBoard(bno);
	}

	@Override
	public void delete(BoardDTO dto) {
		boardMapper.remove(dto);
		return;
	}

	@Override
	public void modify(BoardDTO dto) {
		boardMapper.update(dto);
		return;
	}
	
}
