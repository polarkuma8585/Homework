package co.hw.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.hw.common.Command;
import co.hw.dto.ExamDto;

public class InsertExamOkCommand implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ExamDto dto = new ExamDto();
		
		dto.seteName(request.getParameter("testname"));
		dto.seteCnt(Integer.parseInt(request.getParameter("testcnt")));
		dto.seteTime(Integer.parseInt(request.getParameter("testtime")));
		dto.seteType(request.getParameter("testtype"));
		dto.seteDesc(request.getParameter("content"));
		dto.seteGroup(request.getParameter("ttype"));
		
		
		
		
		System.out.println(request.getParameter("ttype"));
		
//		dao.eInsert(dto);  dao 만들 것.
		
	}

}
