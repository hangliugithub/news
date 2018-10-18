package com.jw.common.util;

import com.fasterxml.jackson.databind.ObjectMapper;

public class ObjectMapperUtils {
	private static ObjectMapper objectMapper = new ObjectMapper();
	public static ObjectMapper  getMapper(){
		return objectMapper;
	}
}
