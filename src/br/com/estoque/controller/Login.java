package br.com.estoque.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.estoque.model.ModelSessaoUsuario;
import br.com.estoque.model.ModelUsuario;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	ModelSessaoUsuario modelSessaoUsuario = new ModelSessaoUsuario();
	ModelUsuario modelUsuario = new ModelUsuario();
	ControllerUsuario controllerUsuario = new ControllerUsuario();

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		doGet(request, response);

		modelUsuario.setUsuLogin(request.getParameter("login"));
		modelUsuario.setUsuSenha(request.getParameter("senha"));

		try {
			if (controllerUsuario.getValidarUsuarioController(modelUsuario)) {
				modelUsuario = controllerUsuario.getUsuarioController(request.getParameter("login"));
				ModelSessaoUsuario.codigoUsuario = modelUsuario.getIdUsuario();
				ModelSessaoUsuario.nomeUsuario = modelUsuario.getUsuNome();
				ModelSessaoUsuario.loginUsuario = modelUsuario.getUsuSenha();
				request.getRequestDispatcher("mensagem.jsp").forward(request, response);
			} else {
				request.getRequestDispatcher("erro.jsp").forward(request, response);
			}
		} catch (Exception e) {
			out.println();
		}

	}

}
