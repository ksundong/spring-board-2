package dev.idion.board.mapper;

import java.util.List;
import java.util.Map;

public interface PostsMapper {

	List<Map<String, Object>> selectPostList();

	int insertPost(Map<String, Object> map);

	int checkWriter(Map<String, Object> map);

	Map<String, Object> viewPost(int id);

	int updateHit(int id);

}
