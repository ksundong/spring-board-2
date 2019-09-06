package dev.idion.board.mapper;

import java.util.List;
import java.util.Map;

public interface PostsMapper {

	List<Map<String, Object>> selectPostList();

}
