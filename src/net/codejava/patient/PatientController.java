package net.codejava.patient;
 
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
 
 
 
@Controller
public class PatientController {
 
    @Autowired
    private PatientService patientService;
 
	@RequestMapping("/")
	public ModelAndView home() {
    List<Patient> listPatient = patientService.listAll();
    ModelAndView mav = new ModelAndView("index");
    mav.addObject("listPatient", listPatient);
    return mav;
}
	@RequestMapping("/new")
	public String newCustomerForm(Map<String, Object> model) {
	    Patient patient = new Patient();
	    model.put("patient", patient);
	    return "new_patient";
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String savePatient(@ModelAttribute("patient") Patient patient) {
    patientService.save(patient);
    return "redirect:/";
	}
    
    @RequestMapping("/edit")
    public ModelAndView editPatientForm(@RequestParam long patientid) {
        ModelAndView mav = new ModelAndView("edit_patient");
        Patient patient = patientService.get(patientid);
        mav.addObject("patient", patient);
     
        return mav;
    }

	@RequestMapping("/delete")
	public String deletePatientForm(@RequestParam long patientid) {
    patientService.delete(patientid);
    return "redirect:/";       
}







}

