package com.hms.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hms.model.Prescription;
import com.hms.service.PatientRecordService;
import com.hms.service.PrescriptionService;

@Controller
public class PrescriptionController {
	
	public PrescriptionController()
	{
		
		System.out.println("Prescription Controller");
	}
	
	@Autowired
	private PrescriptionService ps;
	
	@Autowired
	private PatientRecordService prservice;

	@RequestMapping(value={"/addPrecription"},method = RequestMethod.GET)
	public ModelAndView newPrescription(HttpServletRequest request)
	{
		System.out.println("inside prescription controller");
		int vid = Integer.parseInt(request.getParameter("id"));
		Prescription p = new Prescription();
		p.setVisitid(vid);
		ModelAndView model = new ModelAndView("Prescriptionadd");
		model.addObject("prescribe",p);
		System.out.println("Send to jsp");
		return model;
	}
	
	
	@RequestMapping(value={"/savePrescription"},method = RequestMethod.POST)
	public ModelAndView savePrescription(@ModelAttribute Prescription p )
	{
		System.out.println("inside save prescription controller");
		System.out.println("Visit id: "+ p.getVisitid()+ p.getMedno()+p.getMedicinename()+p.getQuantity());
		ps.addPrescription(p);
		System.out.println("added prescription successfully");
		ModelAndView model = new ModelAndView("redirect:/diagnosis");
		model.addObject("id",p.getVisitid());
		System.out.println("Send to jsp");
		return model;
	}
	
}
