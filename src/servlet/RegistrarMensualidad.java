package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import serviciomensualidad.ServicioMensualidadProxy;

/**
 * Servlet implementation class RegistrarMensualidad
 */
public class RegistrarMensualidad extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrarMensualidad() {
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
		String mes = request.getParameter("mes");
		int mesA = Integer.parseInt(mes);
		
		ServicioMensualidadProxy registrarMensualidad = new ServicioMensualidadProxy();
		resp1 = registrarMensualidad.regPagoMensualidad(rutEst,"165643214", mesA);

		request.setAttribute("mensaje1", resp1);
		request.getRequestDispatcher("/RegistrarMensualidad.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
