package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import serviciomensualidad.ServicioMensualidadProxy;

/**
 * Servlet implementation class MorososMensualidad
 */
public class MorososMensualidad extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MorososMensualidad() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		String resp1="";

		String mes = request.getParameter("mes");
		int nMes = Integer.parseInt(mes);
		if((nMes>=1)&&(nMes<=10)){
			ServicioMensualidadProxy morosos = new ServicioMensualidadProxy();
			resp1 = morosos.obtenerListMorososMensualidad(nMes);
			
			if(resp1!=null){
				request.setAttribute("mensaje1", resp1);
			} else {
				request.setAttribute("mensaje1", "Error");
			}
		}
		
		request.getRequestDispatcher("/MorososMens.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
