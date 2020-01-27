package co.hw.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.hw.common.Command;
import co.hw.dao.ExamDao;
import co.hw.dto.ExamDto;

public class ExamCommandDelete implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ExamDto dto = new ExamDto();
		ExamDao dao = new ExamDao();
		
		int n = 0;
		int eno = Integer.parseInt(request.getParameter("eNo"));		
		n = dao.delete(eno);
		
		String path = "/testlist.do";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

}
