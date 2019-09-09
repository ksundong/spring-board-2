package dev.idion.board.controller;

import dev.idion.board.service.PostsService;
import dev.idion.settings.config.RootConfig;
import dev.idion.settings.config.ServletConfig;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;


@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = {RootConfig.class, ServletConfig.class})
@WebAppConfiguration
@Slf4j
public class PostsControllerTest {

	@Mock
	PostsService postsService;

	@InjectMocks
	private PostsController postsController;

	private MockMvc mockMvc;

	@BeforeEach
	void setUp() {
		MockitoAnnotations.initMocks(this);
		mockMvc = MockMvcBuilders.standaloneSetup(postsController).build();
	}

	@Test
	void testBoardController() throws Exception {
		log.info("Test Initialized");
		mockMvc.perform(get("/board/")).andDo(print())
				.andExpect(status().isOk())
				.andExpect(view().name("posts"))
				.andExpect(model().attributeExists("list"));
		mockMvc.perform(get("/board/index/")).andDo(print())
				.andExpect(status().isOk())
				.andExpect(view().name("posts"))
				.andExpect(model().attributeExists("list"));
		mockMvc.perform(get("/board/list/")).andDo(print())
				.andExpect(status().isOk())
				.andExpect(view().name("posts"))
				.andExpect(model().attributeExists("list"));
	}

}