package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import serviciocurso.ServicioCursoProxy;

/**
 * Servlet implementation class DesactivarCurso
 */
public class DesactivarCurso extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DesactivarCurso() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String resp1="";

		String codigo = request.getParameter("codigo");
		int cod = Integer.parseInt(codigo);
		
		ServicioCursoProxy desactivar = new ServicioCursoProxy();
		resp1 = desactivar.desactivarCurso(cod, "92749802");

		request.setAttribute("mensaje1", resp1);
		request.getRequestDispatcher("/UpDesactivarCurso.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
