package net.codejava.patient;
 
import java.util.List;
 
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
 
public interface PatientRepository extends CrudRepository<Patient, Long> {
     
}
