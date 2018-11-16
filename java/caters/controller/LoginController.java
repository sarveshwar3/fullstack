package caters.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import caters.dao.Issuetrackingdao;
import caters.model.Issuetracking;
import caters.service.Issuetrackingservice;


@Controller
//@RequestMapping(value = "/customer")
public class LoginController {

	
	@Autowired
	Issuetrackingdao trackdao;
	
	//from index to login page
	@RequestMapping("/login")  
	public String signin(){
		 return "login.jsp";
	}
	
	@RequestMapping("/signup")  
	public String signup(){
		 return "signup.jsp";
	}
	
	
	//from login to issues
	@RequestMapping("/issues")
	public String issues(@ModelAttribute("customerForm")Issuetracking track,BindingResult bindingResult,@RequestParam("name")String name,@RequestParam("password")String password){
		//if(name=="abc"&& password=="abc"){
	//	 return "admin.jsp";
	  //  }
	//	else{
			return "admin.jsp";
	//	}
	}
	
	@RequestMapping("/trackings")
	public ModelAndView adds(){
		ModelAndView mv = new ModelAndView("success.jsp");
        Issuetracking tracks = new Issuetracking();
        trackdao.addcomplain(tracks);
        mv.addObject("adds",tracks);
		return mv;
	}
	
	@RequestMapping("/aboutus")
	public String aboutus(){
		 return "aboutus.jsp";
	}
	
	@RequestMapping("/services")
	public String Services(){
		 return "services.jsp";
	}
	
	@RequestMapping("/success")
	public String success(){
		 return "success.jsp";
	}
	
	@Autowired
	Issuetrackingservice issuetrackingservice;
	
   @RequestMapping(value = "/list",method = RequestMethod.GET)
	public ModelAndView list(){
		ModelAndView model = new ModelAndView("list.jsp");
		List<Issuetracking> list = trackdao.list();
		model.addObject("tracking",list);
		return model;
	}
   
   @RequestMapping(value = "/history",method = RequestMethod.GET)
	public ModelAndView history(){
		ModelAndView model = new ModelAndView("history.jsp");
		List<Issuetracking> list = trackdao.list();
		model.addObject("tracking",list);
		return model;
	}
	
/*	@RequestMapping(value = "/list",method = RequestMethod.GET)
	public String list(Model model){
		//List<Issuetracking> tracking = issuetrackingservice.list();
		model.addAttribute("tracking",issuetrackingservice.list());
		return "list.jsp";
	}*/
	
	@RequestMapping(value = "/update/{id}",method = RequestMethod.GET)
	public ModelAndView update(@PathVariable("id") int id){
		ModelAndView model = new ModelAndView("form.jsp");
		Issuetracking track = issuetrackingservice.findIssueById(id);
		model.addObject("customerForm",track);
		return model;
	}
	
	
	
	@RequestMapping(value = "/add",method = RequestMethod.GET)
	public ModelAndView add(){
		ModelAndView model = new ModelAndView("form.jsp");
		Issuetracking track = new Issuetracking();
		model.addObject("customerForm",track);
		return model;
	}
	
	@RequestMapping(value = "/save",method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("customerForm")Issuetracking track,BindingResult bindingResult){
		issuetrackingservice.saveOrUpdate(track);
		
		return new ModelAndView("form.jsp");
	}
}

