package co.hw.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.hw.command.ExamCommandCreate;
import co.hw.command.ExamCommandCreateForm;
import co.hw.command.IndexCommand;
import co.hw.command.InsertExamOkCommand;
import co.hw.command.QuestCommandCreate;
import co.hw.command.QuestCommandCreateForm;
import co.hw.command.ResultCommand;
import co.hw.command.TestCommand;
import co.hw.command.TestListCommand;
import co.hw.common.Command;

@WebServlet("/FrontController")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       HashMap<String, Command> cont = new HashMap<String, Command>();
       
    public FrontController() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
		cont.put("/index.do", new IndexCommand()); 
		cont.put("/testlist.do", new TestListCommand()); // 목록
		//cont.put("/setquestion.do", new SetQuestionCommand()); // 문제등록 (이전)
		//cont.put("/setQuestionOk.do", new SetQuestionOkCommand()); // 문제등록 확인(이전 )
		
		cont.put("/setquestion.do", new QuestCommandCreateForm()); // 문제등록 (수정)
		cont.put("/setquestionOk.do", new QuestCommandCreate()); // 문제등록 (수정)
		
		//cont.put("/testregister.do", new TestRegisterCommand()); // 시험등록 (이전)
		//cont.put("/insertExamOk.do", new InsertExamOkCommand()); // 시험등록 확인 (이전)
		
		cont.put("/testregister.do", new ExamCommandCreateForm()); // 문제등록 (수정)
		cont.put("/insertExamOk.do", new ExamCommandCreate()); // 문제등록 (수정)
		cont.put("/test.do", new TestCommand()); // 시험 화면
		cont.put("/result.do", new ResultCommand()); // 시험 결과
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		request.setCharacterEncoding("UTF-8");
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String path = uri.substring(context.length());
		
		Command commandImpl = cont.get(path);
		commandImpl.execute(request, response);
	}
}
