package com.ecom.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MyServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pageString = (String) request.getParameter("page");
		if(pageString==null) {
			request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
		}else if(pageString.equals("shop")) {
			request.getRequestDispatcher("/WEB-INF/shop.jsp").forward(request, response);
		}else if(pageString.equals("home")) {
			request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);	
		}else if(pageString.equals("blog")) {
			request.getRequestDispatcher("/WEB-INF/blog.jsp").forward(request, response);	
		}else if(pageString.equals("contact")) {
			request.getRequestDispatcher("/WEB-INF/contact.jsp").forward(request, response);	
		}else if(pageString.equals("shoppingCart")) {
			request.getRequestDispatcher("/WEB-INF/shopping-cart.jsp").forward(request, response);	
		}else if(pageString.equals("checkout")) {
			request.getRequestDispatcher("/WEB-INF/check-out.jsp").forward(request, response);	
		}else if(pageString.equals("blogD")) {
			request.getRequestDispatcher("/WEB-INF/blog-details.jsp").forward(request, response);	
		}else if(pageString.equals("login")) {
			request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);	
		}else if(pageString.equals("register")) {
			request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);	
		}else if(pageString.equals("faq")) {
			request.getRequestDispatcher("/WEB-INF/faq.jsp").forward(request, response);	
		}else if(pageString.equals("product-details")) {
			request.getRequestDispatcher("/WEB-INF/product-details.jsp").forward(request, response);	
		}else if(pageString.equals("indexA")) {
			request.getRequestDispatcher("/WEB-INF/indexA.jsp").forward(request, response);	
		}else if(pageString.equals("categoriesA")) {
			request.getRequestDispatcher("/WEB-INF/categoriesA.jsp").forward(request, response);	
		}else if(pageString.equals("productsA")) {
			request.getRequestDispatcher("/WEB-INF/productsA.jsp").forward(request, response);	
		}else if(pageString.equals("ordersA")) {
			request.getRequestDispatcher("/WEB-INF/ordersA.jsp").forward(request, response);	
		}else if(pageString.equals("loginA")) {
			request.getRequestDispatcher("/WEB-INF/loginA.jsp").forward(request, response);	
		}
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
}
