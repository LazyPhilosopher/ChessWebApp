package com.example.chesswebapp.todo;

import jakarta.validation.constraints.Size;

import java.time.LocalDate;

// Database (MySQL)
// List of todos

public class Todo {

    public Todo(int id, String username, String description, LocalDate targetDate, boolean done){
        super();
        this.id = id;
        this.username = username;


        this.description = description;
        this.targetDate = targetDate;
        this.done = done;
    }

    @Size(min=10, message="Enter at least 10 characters.")
    private String description;
    private int id;
    private String username;
    private LocalDate targetDate;
    private boolean done;

    public boolean isDone() {
        return done;
    }

    public void setDone(boolean done) {
        this.done = done;
    }

    public LocalDate getTargetDate() {
        return targetDate;
    }

    public void setTargetDate(LocalDate targetDate) {
        this.targetDate = targetDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}


