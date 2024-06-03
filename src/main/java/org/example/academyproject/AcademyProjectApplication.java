package org.example.academyproject;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({"controller.*", "data.*", "com.example.demo", "naver.cloud"})
@MapperScan("data.mapper")
public class AcademyProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(AcademyProjectApplication.class, args);
	}

}
