package cl.awakelab.eva5.controller;

import java.net.Authenticator.RequestorType;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cl.awakelab.eva5.controller.AccidenteController;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Accidente
 */
//@WebServlet("/Accidente")
@Controller 
public class AccidenteController extends HttpServlet{
	
       
	private static final Logger logger = LoggerFactory.getLogger(AccidenteController.class);
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		String parametro = request.getParameter("parametro");
		System.out.println("Parametros");
		if (parametro !=null) {
			if (parametro.equals("enviar")) {
				//request.getRequestDispatcher("RecibeFormulario.jsp").forward(request, response);
				getServletContext().getRequestDispatcher("/view/exitoFormulario.jsp").forward(request, response);
			} else if (parametro.equals("FormularioAccidente")) {
				getServletContext().getRequestDispatcher("/view/FormularioAccidente.jsp").forward(request, response);
				}
			} else {
				getServletContext().getRequestDispatcher("/view/FormularioAccidente.jsp").forward(request, response);
			}
		}
	}


