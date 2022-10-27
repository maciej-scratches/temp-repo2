package com.example.demo;

import javax.crac.Context;
import javax.crac.Core;
import javax.crac.Resource;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.Configuration;

@SpringBootApplication
public class DemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}

}

@Configuration
class CracConfig implements Resource {

	private final ConfigurableApplicationContext ctx;

	public CracConfig(ConfigurableApplicationContext ctx) {
		this.ctx = ctx;
		Core.getGlobalContext().register(this);
	}
	
	@Override
	public void beforeCheckpoint(Context<? extends Resource> context) throws Exception {
		System.out.println("before checkpoint");
		ctx.stop();
		
	}

	@Override
	public void afterRestore(Context<? extends Resource> context) throws Exception {
		System.out.println("After restore");
		ctx.start();
	}

}