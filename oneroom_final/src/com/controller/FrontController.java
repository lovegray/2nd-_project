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
		// ��û�� �����ϱ� ���� �ĺ��� ����
		// https://localhost:8080/MessageSystem/main.jsp=URL
		// URI�ּ� ��������
		// ->/MessageSystem/main.jsp=URL
		// 2.Context Path(�����ø����̼��� �̸�)��������
		// ->/MessageSystem
		// 3.�ĺ��� ����

		String reqURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = reqURI.substring(contextPath.length());
		// uri�տ��� contextpath�� �ڸ��� ��ŭ�� �����Ѵ�.

		System.out.println("��û�� �ּ��� URI" + reqURI);
		System.out.println("��û�� �ּ��� Context" + contextPath);
		System.out.println("��û����" + command);

		request.setCharacterEncoding("euc-kr");
		HttpSession session = request.getSession();
		int num=Integer.parseInt(request.getParameter("num"));
		System.out.println("��Ʈ�ѷ� �Ź���ȣȮ��:"+num);
		
		OneroomDAO dao = new OneroomDAO();
		OneroomDTO dto = dao.select(num);
		System.out.println(dto.getArea()+" ,"+dto.getDifference_charter());
		
		if (dto != null) {
			session.setAttribute("num", dto);
			// dto��ü ��ü ���ǿ� ����.main���������� �Ź������� ����ϱ����� ����.
			response.sendRedirect("select_output2.jsp");
			System.out.println("��ȸ ����!!!");
		} else {
			System.out.println("��ȸ ����!!");
		}
		
	}

}
