package com.jw;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@MapperScan("com.jw.mapper")

public class SsoStart {
	public static void main(String[] args) {
		SpringApplication.run(SsoStart.class, args);

	}

}
