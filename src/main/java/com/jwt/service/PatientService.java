package com.jwt.service;

import java.util.List;

import com.jwt.model.Patient;

public interface PatientService 
{

	public void addPatient(Patient patient);

	public List<Patient> getAllPatient();

	public void deletePatient(Integer patientId);

	public Patient getPatient(int patientid);

	public Patient updatePatient(Patient patient);
	
	public Boolean is_Patient(int patientid, String Password);
	
	
}
