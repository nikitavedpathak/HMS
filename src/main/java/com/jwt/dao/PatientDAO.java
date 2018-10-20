package com.jwt.dao;

import java.util.List;

import com.jwt.model.Patient;

public interface PatientDAO 
{

	public void addPatient(Patient patient);

	public List<Patient> getAllPatient();

	public void deletePatient(Integer patientid);

	public Patient updatePatient(Patient patient);

	public Patient getPatient(int patientid);
	
	public Boolean is_Patient(int patientid, String Password);//----

	
	
	
	
}
