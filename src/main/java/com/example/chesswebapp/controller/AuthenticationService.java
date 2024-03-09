package com.example.chesswebapp.controller;

import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {
    public boolean authenticate(String username, String password){
        boolean isValidName = username.equalsIgnoreCase("call_me_utka");
        boolean isValidPassword = password.equalsIgnoreCase("1234");
        return isValidName && isValidPassword;
    }
}
