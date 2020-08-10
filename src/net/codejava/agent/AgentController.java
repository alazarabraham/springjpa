package net.codejava.agent;
 
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
public class AgentController {
 
    @Autowired
    private AgentService agentService;
 
	@RequestMapping("/")
	public ModelAndView home() {
    List<Agent> listAgent = agentService.listAll();
    ModelAndView mav = new ModelAndView("index");
    mav.addObject("listAgent", listAgent);
    return mav;
}
	@RequestMapping("/new")
	public String newCustomerForm(Map<String, Object> model) {
	    Agent agent = new Agent();
	    model.put("agent", agent);
	    return "new_agent";
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveAgent(@ModelAttribute("agent") Agent agent) {
    agentService.save(agent);
    return "redirect:/";
	}
    
    @RequestMapping("/edit")
    public ModelAndView editAgentForm(@RequestParam long agent_id) {
        ModelAndView mav = new ModelAndView("edit_agent");
        Agent agent = agentService.get(agent_id);
        mav.addObject("agent", agent);
     
        return mav;
    }

	@RequestMapping("/delete")
	public String deleteAgentForm(@RequestParam long agent_id) {
    agentService.delete(agent_id);
    return "redirect:/";       
}







}

