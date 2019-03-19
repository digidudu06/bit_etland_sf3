package com.bit_etland.web.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit_etland.web.service.AlgoService;

@Controller
@RequestMapping("/algo")
public class AlgoController {
	static final Logger logger = LoggerFactory.getLogger(AlgoController.class);
	@Autowired AlgoService algoService;
	@Autowired Map<String, Object> map;
	@RequestMapping("/seq/{questNum}")
	@ResponseBody	//requst, response
	public Map<String, Object> seq(@PathVariable String questNum) {
		logger.info("\n --------- AlgoController {} !! ----------","seq");
		System.out.println("넘어온 문제 번호 : "+questNum);
		map = new HashMap<String, Object>();
		String startNum = "1";
		String endNum = "100";
		String diff = "1";
		map.put("startNum",startNum);
		map.put("endNum",endNum);
		map.put("diff",diff);
		String result = algoService.arithmeticSequence(map);
		map.put("result",questNum);
		return map;
	}

}
