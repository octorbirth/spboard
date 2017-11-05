package org.blacksw.web;

import javax.inject.Inject;

import org.blacksw.dto.BoardDTO;
import org.blacksw.service.BoardService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public void list(Model model) {
		model.addAttribute("list", service.list());
		return;
	}
	@GetMapping("/view")
    public void viewGet(Model model,Long bno) {
		model.addAttribute("board", service.get(bno));
        return;
    }
	@GetMapping("/modify")
    public void modifyGet(Model model, Long bno) {
		viewGet(model, bno);
        return;
    }
	
	
	@PostMapping("/register")
    public String registerPost(BoardDTO dto, RedirectAttributes rttr) {
        service.register(dto);
        rttr.addFlashAttribute("result", "regsuccess");
		return "redirect:/board/list";
    }
	
	@PostMapping("/remove")
    public String removePost(BoardDTO dto, RedirectAttributes rttr) {
        service.delete(dto);
        rttr.addFlashAttribute("result", "delsuccess");
		return "redirect:/board/list";
    }
	
	@PostMapping("/modify")
	public String modify(BoardDTO dto, RedirectAttributes rttr) {	
		rttr.addAttribute("bno", dto.getBno()); // url¿¡ Ç¥½Ã
		service.modify(dto);
		rttr.addFlashAttribute("result", "modsuccess");
		return "redirect:/board/view";
		
	}

}
