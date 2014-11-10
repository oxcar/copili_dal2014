package org.dal.copili.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/search")
public class SearchController {

    private final static Logger log = LoggerFactory.getLogger(SearchController.class);


    @RequestMapping(value = "", method = RequestMethod.POST)
    public String indexPage(@RequestParam String searchTerms, Model model) {
        log.info("seearch");
        return "search_results";
    }


}
