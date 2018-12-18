package com.jang.qna;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

/**
 * Servlet implementation class QuestionServlet
 */
@WebServlet("/question")
public class QuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuestionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

/*	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String jsonStr = request.getParameter("MYKEY");
		Gson gson = new Gson();
		//QuestionVO vo = gson.fromJson(jsonStr, QuestionVO.class);
		
		QuetionDAO dao = new QuetionDAO();
		ArrayList<QuestionVO> list = dao.questionSelect();

		String returnStr = gson.toJson(list);
		response.setContentType("application/json; charset=UTF-8"); 
		PrintWriter out = response.getWriter();
		out.println(returnStr);
	}*/
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String jsonStr = request.getParameter("MYKEY");
		Gson gson = new Gson();
		//QuestionVO vo = gson.fromJson(jsonStr, QuestionVO.class);
		
		QuetionDAO dao = new QuetionDAO();
		ArrayList<QuestionVO> list = dao.questionSelect();

		String returnStr = gson.toJson(list);
		response.setContentType("application/json; charset=UTF-8"); 
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		out.println(returnStr);
	}

}
