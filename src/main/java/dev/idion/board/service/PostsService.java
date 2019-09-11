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
	public void insertPost(Map<String, Object> param) {
		postsMapper.insertPost(param);
	}

	public int checkWriter(Map<String, Object> param) {
		return postsMapper.checkWriter(param);
	}

	public Map<String, Object> viewPost(int id) {
		return postsMapper.viewPost(id);
	}

	@Transactional
	public int updateHit(int id) {
		return postsMapper.updateHit(id);
	}

	@Transactional
	public int updatePost(Map<String, Object> param) {
		return postsMapper.updatePost(param);
	}

	@Transactional
	public int deletePost(int id) {
		return postsMapper.deletePost(id);
	}

}
