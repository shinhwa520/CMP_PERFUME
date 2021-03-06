package com.cmp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cmp.MenuItem;

@Controller
@RequestMapping("/visit")
public class VisitController extends BaseController {
	private static Log log = LogFactory.getLog(ProductController.class);
	
	@RequestMapping(value = { "list" }, method = RequestMethod.GET)
    public String fileMain(Model model, HttpServletRequest request, HttpServletResponse response) {
		setActiveMenu(model, MenuItem.VISIT_INFO);
		return "visit/list";
    }

}
