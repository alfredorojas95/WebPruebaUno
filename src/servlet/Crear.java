package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Diagramarefinado.Academico.StaffAcademico.Curso;

/**
 * Servlet implementation class Crear
 */
public class Crear extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Crear() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/**
		 * se obtiene el string desde la ventana jsp
		 */
		String nomCurso = request.getParameter("nombre");
		/**
		 *  se crea un string y se iguala al método crearCurso
		 *  pasándole el nombre obtenido del input desde la ventana jsp
		 *  y ademas el rut de un jefe de administración
		 */
		String resp1 = Curso.crearCurso(new Curso(nomCurso),"115749802");
		/**
		 * se envia el mensaje retornado delde el método crear curso a la 
		 * ventana jsp
		 */
		request.setAttribute("mensaje1", resp1);
		request.getRequestDispatcher("/CrearCurso.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
