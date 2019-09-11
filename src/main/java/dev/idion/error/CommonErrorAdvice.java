package dev.idion.error;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
@Slf4j
public class CommonErrorAdvice {

	@ExceptionHandler(Exception.class)
	public String except(Exception e, Model model) {
		log.error(e.getMessage());
		model.addAttribute("exception", e);
		log.error(model.toString());
		return "../error/error";
	}

	@ExceptionHandler(NoHandlerFoundException.class)
	@ResponseStatus(HttpStatus.NOT_FOUND)
	public String notFound(NoHandlerFoundException e) {
		log.error(e.getMessage());
		return "../error/404";
	}

	@ExceptionHandler(RuntimeException.class)
	@ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
	public String internalServerError(RuntimeException e) {
		log.error(e.getMessage());
		return "../error/500";
	}

}
