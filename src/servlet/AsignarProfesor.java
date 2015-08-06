package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import serviciocurso.ServicioCursoProxy;

/**
 * Servlet implementation class AsignarProfesor
 */
public class AsignarProfesor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AsignarProfesor() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String resp2="";

		String codigo = request.getParameter("codigo");
		String rutProfe = request.getParameter("rutProfe");
		String rutJefeadm = request.getParameter("rutJefe");
		int cod = Integer.parseInt(codigo);
		
		ServicioCursoProxy asignar = new ServicioCursoProxy();
		resp2 = asignar.asignarProfesor(cod, rutProfe, rutJefeadm);

		
		request.setAttribute("mensaje2", resp2);
		request.getRequestDispatcher("/UpCrearCursoAsignarProfesor.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
