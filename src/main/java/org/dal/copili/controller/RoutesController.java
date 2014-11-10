package org.dal.copili.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class RoutesController {

    private final static Logger log = LoggerFactory.getLogger(RoutesController.class);

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String indexPage(Model model) {
        log.info("home");
        return "home";
    }

    @RequestMapping(value = "home", method = RequestMethod.GET)
    public String homePage(Model model) {
        log.info("home");
        return "home";
    }

}
