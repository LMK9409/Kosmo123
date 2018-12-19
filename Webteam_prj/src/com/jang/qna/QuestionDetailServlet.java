package com.jang.qna;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jang.order.OrderDAO;
import com.jang.order.orderVO;

/**
 * Servlet implementation class QuestionDetailServlet
 */
@WebServlet("/questionDetail")
public class QuestionDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuestionDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int qseq=Integer.parseInt(request.getParameter("mseq"));
		System.out.println(qseq);
		QuetionDAO qDAO = new QuetionDAO();
	    QuestionVO res = new QuestionVO();
	    res = qDAO.selectOne(qseq);
		request.setAttribute("RES_VO", res);

		request.getRequestDispatcher("questionDetail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
