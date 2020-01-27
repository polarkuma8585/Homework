package co.hw.command;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.hw.common.Command;
import co.hw.dao.ExamDao;
import co.hw.dto.ExamDto;

public class ExamCommandCreate implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HashMap<String,Object> map = new HashMap<String,Object>();
		ExamDto dto = new ExamDto();
		ExamDao dao = new ExamDao();
//		int n = 0;
		
		dto.seteName(request.getParameter("testname"));
		dto.seteCnt(Integer.parseInt(request.getParameter("testcnt")));
		dto.seteTime(Integer.parseInt(request.getParameter("testtime")));
		dto.seteType(request.getParameter("ttype"));
		dto.seteDesc(request.getParameter("content"));
		dto.seteGroup(request.getParameter("testtype"));
		
//		n = dao.eInsert(dto);
		
		try {
			map = dao.insertProc(dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
//		String path ="/testlist.do";
//		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
//		dispatcher.forward(request, response);
		
		response.sendRedirect("testlist.do");		
	}

}
