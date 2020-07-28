package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.OneroomDAO;
import com.model.OneroomDTO;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 요청을 구별하기 위한 식별값 추출
		// https://localhost:8080/MessageSystem/main.jsp=URL
		// URI주소 가져오기
		// ->/MessageSystem/main.jsp=URL
		// 2.Context Path(웹어플리케이션의 이름)가져오기
		// ->/MessageSystem
		// 3.식별값 추출

		String reqURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = reqURI.substring(contextPath.length());
		// uri앞에서 contextpath의 자리수 만큼을 삭제한다.

		System.out.println("요청한 주소의 URI" + reqURI);
		System.out.println("요청한 주소의 Context" + contextPath);
		System.out.println("요청종류" + command);

		request.setCharacterEncoding("euc-kr");
		HttpSession session = request.getSession();
		int num=Integer.parseInt(request.getParameter("num"));
		System.out.println("콘트롤러 매물번호확인:"+num);
		
		OneroomDAO dao = new OneroomDAO();
		OneroomDTO dto = dao.select(num);
		System.out.println(dto.getArea()+" ,"+dto.getDifference_charter());
		
		if (dto != null) {
			session.setAttribute("num", dto);
			// dto객체 전체 세션에 저장.main페이지에서 매물정보를 출력하기위해 저장.
			response.sendRedirect("select_output2.jsp");
			System.out.println("조회 성공!!!");
		} else {
			System.out.println("조회 실패!!");
		}
		
	}

}
