package dev.idion.board.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@Slf4j
public class BoardController {

	@GetMapping("/board")
	@ResponseBody
	public String accessBoard() {
		log.info("Hello, World!!");
		return "Hello, World!";
	}
}
