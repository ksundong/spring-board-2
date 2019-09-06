package dev.idion.board.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board/*")
@Slf4j
public class PostsController {

	@RequestMapping(value = { "", "/index", "/list"})
	public void list() {
		log.info("Access Board List");
	}

}
