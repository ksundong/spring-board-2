package dev.idion.board.controller;

import dev.idion.board.service.PostsService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

import static dev.idion.util.RequstParamPost.requestParamMap;

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

	@PostMapping(value = "/insertpost")
	public ModelAndView insertPost(HttpServletRequest request) {
		Map<String, Object> param = new HashMap<>();
		requestParamMap(request, param);

		log.info("Start insertPost, Subject: " + param.get("subject")
				+ " Writer: " + param.get("writer")
				+ " Content: " + param.get("content"));
		if (postsService.checkWriter(param) == 1) {
			try {
				postsService.insertPost(param);
			} catch (Exception e) {
				log.error(e.getMessage());
			}
		}
		return new ModelAndView("redirect:/board/");
	}

	@GetMapping(value = "/view")
	public ModelAndView viewPost(@RequestParam int id) {
		log.info("View Post Number " + id);
		ModelAndView modelAndView = new ModelAndView("viewer");
		postsService.updateHit(id);
		modelAndView.addObject("post", postsService.viewPost(id));
		return modelAndView;
	}

	@GetMapping(value = "/modify")
	public ModelAndView modifyForm(@RequestParam int id) {
		log.info("Modify Post Number " + id);
		ModelAndView modelAndView = new ModelAndView("modifyform");
		modelAndView.addObject("post", postsService.viewPost(id));
		return modelAndView;
	}

	@PostMapping(value = "/updatepost")
	public ModelAndView updatePost(HttpServletRequest request) {
		Map<String, Object> param = new HashMap<>();
		requestParamMap(request, param);

		log.info("Start updatePost, Subject: " + param.get("subject")
				+ " Content: " + param.get("content")
				+ " Post id: " + param.get("postid"));
		try {
			postsService.updatePost(param);
		} catch (Exception e) {
			log.error(e.getMessage());
		}
		return new ModelAndView("redirect:/board/view?id=" + param.get("postid"));
	}

	@GetMapping(value = "/deletepost")
	public ModelAndView deletePost(@RequestParam int id) {
		log.info("Delete Process started... PostNumber: " + id);
		try {
			postsService.deletePost(id);
		} catch (Exception e) {
			log.error(e.getMessage());
		}
		return new ModelAndView("redirect:/board/");
	}

}
