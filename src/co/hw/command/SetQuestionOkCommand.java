package co.hw.command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.hw.common.Command;
import co.hw.dao.QuestDao;
import co.hw.dto.QuestDto;

public class SetQuestionOkCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		QuestDto dto = new QuestDto();
		QuestDao dao = new QuestDao();
		int n = 0;
		
		dto.setqType(request.getParameter("qtype"));
		dto.setqContent(request.getParameter("qcontent"));
		dto.setqAns1(request.getParameter("e1"));
		dto.setqAns2(request.getParameter("e2"));
		dto.setqAns3(request.getParameter("e3"));
		dto.setqAns4(request.getParameter("e4"));
		dto.setqExplain(request.getParameter("qexplain"));
		dto.setqRans(request.getParameter("answer"));
		
		n = dao.qInsert(dto);
		
		String path = "/testlist.do";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
		
	}

}
