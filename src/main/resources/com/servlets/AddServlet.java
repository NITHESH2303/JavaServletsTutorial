package com.servlets;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;

public class AddServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int i = Integer.parseInt(request.getParameter("num1"));
        int j = Integer.parseInt(request.getParameter("num2"));

        int k = i+j;

        HttpSession session = request.getSession();
        session.setAttribute("k", k);
//            response.getWriter().println("result: " + sum);
        response.sendRedirect("sq?k="+k);
    }
}