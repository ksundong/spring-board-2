package dev.idion.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class BoardController {

	@GetMapping("/board")
	@ResponseBody
	public String accessBoard() {
		return "Hello, World!";
	}
}
