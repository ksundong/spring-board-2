package dev.idion.board.jdbc;

import dev.idion.settings.config.RootConfig;
import dev.idion.settings.config.ServletConfig;
import lombok.Setter;
import lombok.extern.log4j.Log4j2;
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
@Log4j2
class DataSourceTest {

	@Setter(onMethod_ = { @Autowired })
	private DataSource dataSource;

	@Test
	public void testConnection() {
		try (Connection connection = dataSource.getConnection()) {
			log.info(connection);
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}

}
