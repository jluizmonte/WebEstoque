package br.com.estoque.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.estoque.controller.ControllerUsuario;
import br.com.estoque.model.ModelSessaoUsuario;
import br.com.estoque.model.ModelUsuario;

import java.io.IOException;

/**
 * Servlet implementation class Autenticacao
 */
@WebServlet({ "/Autenticacao", "/autenticacao" })
public class autenticacao extends HttpServlet {

	ModelSessaoUsuario modelSessaoUsuario = new ModelSessaoUsuario();
	ModelUsuario modelUsuario = new ModelUsuario();
	ControllerUsuario controllerUsuario = new ControllerUsuario();

	private static final long serialVersionUID = 1L;
	/*
	 * private ServletConfig config;
	 * 
	 * public void init(ServletConfig config) throws ServletException {
	 * this.setConfig(config); }
	 */

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public autenticacao() {
		super();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*
		 * String login = "jluiz"; String senha = "jluiz";
		 * 
		 * if (login.equals(request.getParameter("login")) &&
		 * senha.equals(request.getParameter("senha"))) {
		 * request.getRequestDispatcher("mensagem.jsp").forward(request,
		 * response); } else {
		 * request.getRequestDispatcher("erro.jsp").forward(request, response);
		 * }
		 */

		modelUsuario.setUsuLogin(request.getParameter("login"));
		modelUsuario.setUsuSenha(request.getParameter("senha"));

		try {
			if (controllerUsuario.getValidarUsuarioController(modelUsuario)) {
				modelUsuario = controllerUsuario.getUsuarioController(request.getParameter("login"));
				ModelSessaoUsuario.codigoUsuario = modelUsuario.getIdUsuario();
				ModelSessaoUsuario.nomeUsuario = modelUsuario.getUsuNome();
				ModelSessaoUsuario.loginUsuario = modelUsuario.getUsuSenha();
				request.getRequestDispatcher("login/mensagem.jsp").forward(request, response);
			} else {
				request.getRequestDispatcher("login/erro.jsp").forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}