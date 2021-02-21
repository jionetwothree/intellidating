package com.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.choiceDAO;
import com.DAO.memberDAO;
import com.DTO.choiceDTO;
import com.DTO.memberDTO;

@WebServlet("/loginService")
public class loginService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String email = request.getParameter("email");
		String password = request.getParameter("pw");
		
		memberDAO dao = new memberDAO();
		memberDTO dto = dao.loginMember(email, password);
		
		if (dto != null) {
			HttpSession session = request.getSession();
			session.setAttribute("member", dto);
			int mem_num = dto.getNum();
			choiceDAO dao1 = new choiceDAO();
			choiceDTO dto1 = dao1.choicedata(mem_num);
			if(dto1 != null) {
			response.sendRedirect("main.jsp");
			System.out.println("로그인 성공!");
			} else {
				response.sendRedirect("analysis.jsp");
			}
		} else {
			System.out.println("로그인 실패!");
		}
	}

}
