package org.example.rentahouse.services;

public interface UserService<O> {
    void add(O o);
    boolean checkUser(O o);
}
