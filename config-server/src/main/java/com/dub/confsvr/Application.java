package com.dub.confsvr;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;
import org.springframework.web.bind.annotation.RestController;


@RestController
@SpringBootApplication
@EnableConfigServer
public class Application {
	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}
}