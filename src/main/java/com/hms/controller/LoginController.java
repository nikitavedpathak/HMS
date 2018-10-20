package com.hms.controller;
import java.io.IOException;
import javax.servlet.http.HttpSession;
import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
import com.hms.model.Employee;
import com.hms.service.EmployeeService;

@Controller
@SessionAttributes("E") //we inform the controller to treat our employee as session-scoped 
public class LoginController {

	private static final Logger logger = Logger.getLogger(LoginController.class);


	public LoginController()
	{
		System.out.println("LoginController");
	}


	@Autowired
	private EmployeeService empservice;


	//we declare our bean by providing a method on the controller
	@ModelAttribute("E")
	public Employee setBean()
	{
		return new Employee();		

	}


	@RequestMapping(value= "/")
	public ModelAndView LoginPage(ModelAndView model) throws IOException
	{
		model.setViewName("index");
		model.addObject("employee",new Employee());
		return model;
	}



	@RequestMapping(value= {"/home","*/home"})
	public ModelAndView dologin(@ModelAttribute("E") Employee emp,HttpSession session) 
	{
		ModelAndView model = new ModelAndView();		
		System.out.println("Into Dologin controller : == "+emp.getId()+"," +emp.getPassword());


		boolean is_valid = empservice.is_Employee(emp.getId(),emp.getPassword());

		if(is_valid)
		{
			//String msg = "Logged in as : " + employee.getFirstname() + " "+ employee.getMiddlename()+ " "+ employee.getLastname();
			System.out.println("profile:"+ emp.getId());
			Employee employee = empservice.getEmployee(emp.getId());
			if(employee.getProfile().toString().equals("Other"))
			{
				System.out.println("profile : "+employee.getProfile().toString());
				model.addObject("E",employee );
				model.setViewName("FrontDeskHomepage");
				session.setAttribute("E", employee);
				return model;
			}
		}
		System.out.println("Inside do login method of login controller and credentials are not valid");
		model.addObject("msg","Invalid Username and Password. Please try again!");
		model.addObject("employee",new Employee());
		model.setViewName("index");
		return model;

	}

	@RequestMapping("/logout")
	public String logout(HttpSession session ) 
	{

		session.invalidate();
		return "redirect:/";
	}


}
