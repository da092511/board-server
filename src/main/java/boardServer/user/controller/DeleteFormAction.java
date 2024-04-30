package boardServer.user.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import boardServer.user.model.UserDao;
import boardServer.user.model.UserRequestDto;
import boardServer.user.model.UserResponseDto;

/**
 * Servlet implementation class DeleteFormAction
 */
public class DeleteFormAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteFormAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		
		UserDao userDao = UserDao.getInstance();
		
		String password = request.getParameter("password");
		
		HttpSession session = request.getSession();
			
		UserResponseDto user = (UserResponseDto) session.getAttribute("user");
		String id = user.getId();
		
		//패스워드가 일치하면 삭제처리
		UserRequestDto userDto = new UserRequestDto();
		userDto.setId(id);
		userDto.setPassword(password);
		
		boolean result = userDao.deleteUser(userDto);
		
		if(result){
			session.removeAttribute("user");
			response.sendRedirect("/");
		}else 
			response.sendRedirect("/deleteUser");
	}

}
