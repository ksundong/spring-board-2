package dev.idion.board.jdbc;

import lombok.extern.log4j.Log4j2;
import org.junit.jupiter.api.Test;

import java.sql.Connection;
import java.sql.DriverManager;

import static org.junit.jupiter.api.Assertions.fail;

@Log4j2
public class JdbcConnectionTest {

	static {
		try {
			Class.forName("org.mariadb.jdbc.Driver");
		} catch (Exception e) {
			log.error(e);
		}
	}

	@Test
	public void testConnection() {
		try (Connection connection = DriverManager.getConnection(
				 "url"
				,"user"
				,"password")) {
			log.info(connection);
		} catch (Exception e) {
			log.error(e);
			fail(e.getMessage());
		}
	}

}
