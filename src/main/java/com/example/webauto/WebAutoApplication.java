package com.example.webauto;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.io.IOException;

@SpringBootApplication
public class WebAutoApplication {

    public static void main(String[] args) {
        SpringApplication.run(WebAutoApplication.class, args);
        try {
            ChatServer.read();
        } catch (InterruptedException | IOException e) {
            throw new RuntimeException(e);
        }
    }

}
