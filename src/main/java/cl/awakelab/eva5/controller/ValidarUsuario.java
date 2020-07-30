package cl.awakelab.eva5.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ValidarUsuario{

	 @RequestMapping("/login")
	    public String login()
	    {
	    	System.out.println(SecurityContextHolder.getContext().getAuthentication().getName());
	        return "login";
	    }
	    
	    @RequestMapping("/logout")
	    public String logout()
	    {
	        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	        if (auth != null){    
	        	SecurityContextHolder.getContext().setAuthentication(null);
	        }
	        return "redirect:/login";
	    }

		@RequestMapping("/error")
	    public String error(ModelMap model)
	    {
			System.out.println("ERROR!");
	        model.addAttribute("error", "true");
	        return "login";

	    }
}
