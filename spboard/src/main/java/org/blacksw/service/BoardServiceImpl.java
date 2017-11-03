package org.blacksw.service;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Insert;
import org.blacksw.dto.BoardDTO;
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
	
}
