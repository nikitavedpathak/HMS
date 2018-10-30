package com.hms.dao;

import java.util.List;

import com.hms.model.Employee;
import com.hms.model.PatientRecord;

public interface PatientRecordDAO
{

	public void addRecord(PatientRecord patientrecord);
	
	public List<PatientRecord> getAllRecords();
	
	public List getAllPatientAndRecords();

	public void deleteRecord(Integer visitid);
	
	public PatientRecord getPatientRecord(int visitid);
		
}
