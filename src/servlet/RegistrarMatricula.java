package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import serviciomatricula.ServicioMatriculaProxy;

/**
 * Servlet implementation class RegistrarMatricula
 */
public class RegistrarMatricula extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrarMatricula() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String resp1="";
		//se obtiene el nombre del jsp
		String rutEst = request.getParameter("rutEstudiante");
		
		ServicioMatriculaProxy registrarMatricula = new ServicioMatriculaProxy();
		resp1 = registrarMatricula.pagarMatricula(rutEst, "165643214");

		request.setAttribute("mensaje1", resp1);
		request.getRequestDispatcher("/RegistrarMatricula.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
