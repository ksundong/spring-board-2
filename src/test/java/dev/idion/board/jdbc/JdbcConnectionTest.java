package dev.idion.board.jdbc;

import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;

import java.sql.Connection;
import java.sql.DriverManager;

import static org.junit.jupiter.api.Assertions.fail;

@Slf4j
public class JdbcConnectionTest {

	static {
		try {
			Class.forName("org.mariadb.jdbc.Driver");
		} catch (Exception e) {
			log.error(e.getMessage());
		}
	}

	@Test
	public void testConnection() {
		try (Connection connection = DriverManager.getConnection(
				 ""
				,""
				,"")) {
			log.info(String.valueOf(connection));
		} catch (Exception e) {
			log.error(e.getMessage());
			fail(e.getMessage());
		}
	}

}
