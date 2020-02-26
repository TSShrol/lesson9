package rv.lesson.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import rv.lesson.dto.UserLogin;
import rv.lesson.model.User;
import rv.lesson.service.UserService;
import rv.lesson.service.impl.UserServiceImpl;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(name = "login", urlPatterns = { "/login" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private UserService userService = UserServiceImpl.getUserService();

//	protected void doGet(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		request.getRequestDispatcher("login.jsp").forward(request, response);
//	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		User user = userService.getUserByEmail(email);

		if (user != null && user.getPassword().equalsIgnoreCase(password)) {
//			response.setContentType("text/plain");
//			response.setCharacterEncoding("UTF-8");
//			response.getWriter().write("cabinet.jsp");
			HttpSession session=request.getSession(true);
			session.setAttribute("userId", user.getId());
			UserLogin userLogin=new UserLogin();
			userLogin.destinationUrl="cabinet.jsp";
			userLogin.userEmail=user.getEmail();	
			
			Cookie cookie = new Cookie("userFirstName", user.getFirstName());
	        response.addCookie(cookie);
			
			String json = new Gson().toJson(userLogin);
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(json);
		}

	}
}
