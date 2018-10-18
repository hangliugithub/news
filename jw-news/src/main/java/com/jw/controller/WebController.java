package com.jw.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WebController {
	
	@RequestMapping("/{index}")
	public String getIndex(@PathVariable(name="index") String index){
		return index;
	}

}
