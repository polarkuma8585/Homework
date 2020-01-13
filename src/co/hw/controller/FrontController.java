package co.hw.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.hw.command.IndexCommand;
import co.hw.command.InsertExamOkCommand;
import co.hw.command.ResultCommand;
import co.hw.command.SetQuestionCommand;
import co.hw.command.SetQuestionOkCommand;
import co.hw.command.TestCommand;
import co.hw.command.TestListCommand;
import co.hw.command.TestRegisterCommand;
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
		cont.put("/testlist.do", new TestListCommand());
		cont.put("/setquestion.do", new SetQuestionCommand());
		cont.put("/testregister.do", new TestRegisterCommand());
		cont.put("/test.do", new TestCommand());
		cont.put("/result.do", new ResultCommand());
		cont.put("/insertExamOk.do", new InsertExamOkCommand());
		cont.put("/setQuestionOk.do", new SetQuestionOkCommand());
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
