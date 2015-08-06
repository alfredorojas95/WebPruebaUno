package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import serviciocurso.ServicioCursoProxy;
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

		String resp1="";
		//se obtiene el nombre del jsp
		String nomCurso = request.getParameter("nomCurso");
		
		if((nomCurso!="")&&(nomCurso.length()>=4)&&(nomCurso.length()<=20)){
			ServicioCursoProxy crear = new ServicioCursoProxy();
			resp1 = crear.crearCurso(nomCurso, "135749802");
		}else {
			resp1 = "Indicaciones: El nombre debe detener un largo entre 4 y 20 caracteres";
		}
		
		request.setAttribute("mensaje1", resp1);
		request.getRequestDispatcher("/UpCrearCursoAsignarProfesor.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
