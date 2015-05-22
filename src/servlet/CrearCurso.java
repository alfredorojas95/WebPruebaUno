package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Diagramarefinado.Academico.StaffAcademico.Curso;

/**
 * Servlet implementation class CrearCurso
 */
public class CrearCurso extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CrearCurso() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int codCurso = Integer.parseInt(request.getParameter("codigo"));
		String nomCur = request.getParameter("nomC");
		String rutProf = request.getParameter("rut");
		
		String resp2 = Curso.asignarProfesor(codCurso, nomCur, rutProf,"115749802");
		
		request.setAttribute("mensaje2", resp2);
		request.getRequestDispatcher("/CrearCurso.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
