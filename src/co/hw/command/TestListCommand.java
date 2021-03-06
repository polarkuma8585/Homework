package co.hw.command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.hw.common.Command;
import co.hw.dao.ExamDao;
import co.hw.dto.ExamDto;

public class TestListCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ExamDao dao = new ExamDao();
		ExamDto dto  = new ExamDto();
		ArrayList<ExamDto> list = new ArrayList<ExamDto>();
		
		list = dao.selectAll();
		
		request.setAttribute("list", list);
		
		String path = "view/examList.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

}
