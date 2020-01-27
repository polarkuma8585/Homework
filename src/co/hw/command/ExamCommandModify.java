package co.hw.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.hw.common.Command;
import co.hw.dao.ExamDao;
import co.hw.dto.ExamDto;

public class ExamCommandModify implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ExamDto dto = new ExamDto();
		ExamDao dao = new ExamDao();
		
		int examNo = Integer.parseInt(request.getParameter("eNo"));
		dto = dao.selectOne(examNo);		
		request.setAttribute("dto", dto);
		
		String path ="view/examModify.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

}
