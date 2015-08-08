package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import serviciosueldo.ServicioSueldoProxy;

/**
 * Servlet implementation class PagarSueldo
 */
public class PagarSueldo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PagarSueldo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String resp1="";

		String rutProfesor = request.getParameter("rutProfesor");
		String MM = request.getParameter("mes");

		int mes = Integer.parseInt(MM);
		
		ServicioSueldoProxy pagar = new ServicioSueldoProxy();
		resp1 = pagar.registrarSueldoProf(rutProfesor, "135749802", mes);

		
		request.setAttribute("mensaje1", resp1);
		request.getRequestDispatcher("/RegistrarSueldoProfesor.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
