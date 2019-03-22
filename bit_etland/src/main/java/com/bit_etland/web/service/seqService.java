package com.bit_etland.web.service;

import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public interface seqService {

	public String arithmeticSequence(Map<?, ?>param);
	public String geometricSequence(Map<?, ?>param);
}
