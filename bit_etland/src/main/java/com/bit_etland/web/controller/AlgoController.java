package com.bit_etland.web.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit_etland.web.service.seqService;

@Controller
@RequestMapping("/algo")
public class AlgoController {
	static final Logger logger = LoggerFactory.getLogger(AlgoController.class);
	@Autowired seqService seqService;
	@Autowired Map<String, Object> map;
	@RequestMapping(value = "/seq/{kind}", method=RequestMethod.POST)
	@ResponseBody	//requst, response
	public Map<String, Object> seq(
			@PathVariable String kind,
			@RequestBody Map<String, Object> param) {
		logger.info("\n --------- AlgoController {} !! ----------","seq");
		map = new HashMap<String, Object>();
		String start = (String) param.get("start");
		String end = (String) param.get("end");
		String diff = (String) param.get("diff");
		map.put("start",start);
		map.put("end",end);
		map.put("diff",diff);
		String result = "";
		switch(kind) {
		case "ari":
			result = seqService.arithmeticSequence(map);
			break;
		case "geo":break;
		case "fac":break;
		case "fibo":break;
		}
		map.put("result",result);
		return map;
	}

}
