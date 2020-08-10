package net.codejava.agent;
 
import java.util.List;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
@Service
@Transactional
public class AgentService {
    @Autowired AgentRepository repo;
     
    public void save(Agent agent) {
        repo.save(agent);
    }
     
    public List<Agent> listAll() {
        return (List<Agent>) repo.findAll();
    }
     
    public Agent get(Long agent_id) {
        return repo.findById(agent_id).get();
    }
     
    public void delete(Long agent_id) {
        repo.deleteById(agent_id);
    }
     
}

