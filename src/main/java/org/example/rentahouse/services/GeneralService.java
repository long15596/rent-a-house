package org.example.rentahouse.services;

import java.sql.SQLException;
import java.util.List;

public interface GeneralService<O> {
    List<O> findAll();
    void add(O obj) throws SQLException;
    O findById(int id);
    boolean update(O obj) throws SQLException;
    boolean delete(int id) throws SQLException;
    List<O> findByName (String name);
}
