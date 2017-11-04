package org.blacksw.web;

import javax.inject.Inject;

import org.blacksw.dto.BoardDTO;
import org.blacksw.service.BoardService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.java.Log;

@Controller
@RequestMapping("/board/*")
@Log
public class BoardController {
	
	@Inject
	private BoardService service;

	
	@GetMapping("/register")
    public void registerGet() {
        return;
    }
	@GetMapping("/list")
    public void list() {
        return;
    }
	@GetMapping("/view")
    public void viewGet() {
        return;
    }
	@GetMapping("/modify")
    public void modifyGet() {
        return;
    }
	
	
	@PostMapping("/register")
    public void registerPost(BoardDTO dto) {
        service.register(dto);
        return;
    }

}
