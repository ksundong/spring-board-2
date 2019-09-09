package dev.idion.board.controller;

import dev.idion.board.service.PostsService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

@Controller
@RequestMapping("/board/*")
@Slf4j
public class PostsController {

	@Resource
	private PostsService postsService;

	@GetMapping(value = { "", "/index", "/list"})
	public ModelAndView list() {
		log.info("Access Post List");
		ModelAndView modelAndView = new ModelAndView("posts");
		modelAndView.addObject("list", postsService.selectPostList());
		return modelAndView;
	}

	@GetMapping(value = "/writeform")
	public ModelAndView writeForm() {
		log.info("Access Write Form");
		return new ModelAndView("writeform");
	}

}
