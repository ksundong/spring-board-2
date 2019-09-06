package dev.idion.board.jdbc;

import dev.idion.settings.config.RootConfig;
import dev.idion.settings.config.ServletConfig;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.context.web.WebAppConfiguration;

import javax.sql.DataSource;
import java.sql.Connection;

import static org.junit.jupiter.api.Assertions.fail;

@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = {RootConfig.class, ServletConfig.class})
@WebAppConfiguration
@Slf4j
class DataSourceTest {

	@Setter(onMethod_ = { @Autowired })
	private DataSource dataSource;

	@Setter(onMethod_ = { @Autowired })
	private SqlSessionFactory sqlSessionFactory;

	@Test
	void testConnection() {
		try (Connection connection = dataSource.getConnection()) {
			log.info(String.valueOf(connection));
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}

	@Test
	void testMyBatis() {
		try (SqlSession session = sqlSessionFactory.openSession();
			 Connection connection = session.getConnection();
			) {
			log.info(String.valueOf(session));
			log.info(String.valueOf(connection));
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}

}
