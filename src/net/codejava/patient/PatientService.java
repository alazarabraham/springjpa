package net.codejava.patient;
 
import java.util.List;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
@Service
@Transactional
public class PatientService {
    @Autowired PatientRepository repo;
     
    public void save(Patient patient) {
        repo.save(patient);
    }
     
    public List<Patient> listAll() {
        return (List<Patient>) repo.findAll();
    }
     
    public Patient get(Long patientid) {
        return repo.findById(patientid).get();
    }
     
    public void delete(Long patientid) {
        repo.deleteById(patientid);
    }
     
}

