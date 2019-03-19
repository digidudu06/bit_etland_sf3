package com.bit_etland.web.service;

import java.util.Map;

import org.springframework.stereotype.Service;

@Service
public class AlgoServiceImpl implements AlgoService{
	@Override
	public String arithmeticSequence(Map<?, ?>param) {
		 String start = (String) param.get("start"),
				end = (String) param.get("end"),
				diff = (String) param.get("diff"),
				result = "";
		int A = Integer.parseInt(start);	//초항
		int E = Integer.parseInt(end);	//마지막 항
		int D = Integer.parseInt(diff);	//공차
		int N = 2;	//N번째
		int S = A;
		int AN = 0;	//N번째 항
		while(true) {
			AN = A+(N-1)*D;
			S = S + AN;
			N = N+1;
			if(N>E) break;
		}
		result = S+"";
		return result;
	}
}
