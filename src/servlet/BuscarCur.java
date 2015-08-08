package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import serviciocurso.ServicioCursoProxy;

/**
 * Servlet implementation class BuscarCur
 */
public class BuscarCur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuscarCur() {
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
		
		ServicioCursoProxy buscar = new ServicioCursoProxy();
		String[] datos = buscar.buscarCurso(cod);
		resp1=datos[0]+"\n";
		resp1+=datos[1]+"\n";
		resp1+=datos[2]+"\n";
		//resp1+=datos[3]+"\n";
		
		request.setAttribute("mensaje3", resp1);
		request.getRequestDispatcher("/UpDesactivarCurso.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
