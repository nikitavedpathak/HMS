package com.hms.controller;

import javax.servlet.http.HttpServletRequest;

import org.jboss.logging.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CheckinController {

	private static final Logger logger = Logger.getLogger(FrontdeskController.class);	

	CheckinController()
	{
		System.out.println("Checkin Controller");
	}

	
	@RequestMapping(value="/savecheckindetails", method= RequestMethod.POST)
	public ModelAndView savecheckin(HttpServletRequest request)
	{
		//int pid = Integer.parseInt(request.getParameter("pid"));
		String reason = request.getParameter("reason");
		ModelAndView model = new ModelAndView();
		model.addObject("msg","Checkin details: " + reason);
		model.setViewName("FrontDeskCheckinPatient");	
		return model;
	}

}
