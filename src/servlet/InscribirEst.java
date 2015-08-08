package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import serviciocurso.ServicioCursoProxy;

/**
 * Servlet implementation class InscribirEst
 */
public class InscribirEst extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InscribirEst() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String resp1="";

		String cod = request.getParameter("codigo");
		String rutEstudiante = request.getParameter("rutEstudiante");
		String rutProf = request.getParameter("rutProf");
		int id = Integer.parseInt(cod);
		
		ServicioCursoProxy inscribir = new ServicioCursoProxy();
		resp1 = inscribir.inscribirEstudiantes(id, rutEstudiante, rutProf);

		
		request.setAttribute("mensaje1", resp1);
		request.getRequestDispatcher("/InsAlumnoEnCurso.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
