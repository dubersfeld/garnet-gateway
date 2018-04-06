package com.dub.spring;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;



@SpringBootApplication
@EnableDiscoveryClient
public class Application {

	private static final Logger logger = LoggerFactory.getLogger(Application.class);	

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
		logger.debug("--Application started--");
	}
	
}