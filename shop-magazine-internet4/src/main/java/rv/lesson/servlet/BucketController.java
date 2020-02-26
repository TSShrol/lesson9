package rv.lesson.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import rv.lesson.model.Bucket;
import rv.lesson.model.Order;
import rv.lesson.service.BucketService;
import rv.lesson.service.OrderService;
import rv.lesson.service.impl.BucketServiceImpl;
import rv.lesson.service.impl.OrderServiceImpl;

@WebServlet("/bucket")
public class BucketController extends HttpServlet {
private	BucketService bucketService = BucketServiceImpl.getBucketService();
private	OrderService orderService = OrderServiceImpl.getOrderService();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String productId = request.getParameter("productId");
	
		HttpSession session = request.getSession();
		Integer userId = (Integer)session.getAttribute("userId");
		
		Order order=new Order(userId,"",new Date());
		orderService.create(order);
		Bucket bucket = new Bucket(order.getId(), Integer.parseInt(productId));
		bucketService.create(bucket);
		
		
		response.setContentType("text");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write("Success");
	}


}
