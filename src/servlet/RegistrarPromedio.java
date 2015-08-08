package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import servicioprofesor.ServicioProfesorProxy;

/**
 * Servlet implementation class RegistrarPromedio
 */
public class RegistrarPromedio extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrarPromedio() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String resp1="";

		String rutEst = request.getParameter("rutEst");
		String notaS = request.getParameter("nota");
		String idCurso = request.getParameter("cod");
		String rutProf = request.getParameter("rutProf");
		int id = Integer.parseInt(idCurso);
		
		ServicioProfesorProxy promedio = new ServicioProfesorProxy();
		resp1 = promedio.registrarPromedio(rutEst, id, notaS, rutProf);

		
		request.setAttribute("mensaje1", resp1);
		request.getRequestDispatcher("/RegistrarNotajsp.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
