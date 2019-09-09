package dev.idion.board.service;

import dev.idion.board.mapper.PostsMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service
@Slf4j
public class PostsService {

	@Resource
	private PostsMapper postsMapper;

	public List<Map<String, Object>> selectPostList() {
		log.info("Access Post List Service");
		return postsMapper.selectPostList();
	}

	@Transactional
	public boolean insertPost(Map<String, Object> param) {
		return postsMapper.insertPost(param) > 0;
	}

}
