package com.example.chesswebapp.todo;

import jakarta.validation.Valid;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

@Service
public class TodoService {
    private static final List<Todo> todos = new ArrayList<>();
    private static int todosCount = 0;
    static {
        todos.add(
                new Todo(todosCount++, "call_me_utka", "Get AWS certified",
                        LocalDate.now().plusYears(1), false));
        todos.add(
                    new Todo(todosCount++, "call_me_utka", "Learn DevOps",
                            LocalDate.now().plusYears(2), false));
        todos.add(
                    new Todo(todosCount++, "call_me_utka", "Learn Full Stack Development",
                            LocalDate.now().plusYears(3), false));

    }

    public List<Todo> findByUsername(String username){
        return todos;
    }

    public void addNewTodo(String username, String description, LocalDate targetDate, boolean isDone){
        todos.add(
                new Todo(todosCount++,
                        username,
                        description,
                        targetDate,
                        isDone));
    }

    public void deleteById(int id){
        Predicate<? super Todo> predicate = todo -> todo.getId() == id;
        todos.removeIf(predicate);
    }

    public Todo getById(int id){
        Predicate<? super Todo> predicate = todo -> todo.getId() == id;
        Todo todo = todos.stream().filter(predicate).findFirst().get();
        return todo;
    }

    public void updateTodo(@Valid Todo todo){
        deleteById(todo.getId());
        todos.add(todo);
    }
}
