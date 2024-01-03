package org.example.rentahouse.services;

import org.example.rentahouse.models.Invoice;

import java.sql.SQLException;
import java.util.List;

public class InvoiceServiceImpl implements InvoiceService{
    @Override
    public List<Invoice> findAll() {
        return null;
    }

    @Override
    public void add(Invoice obj) throws SQLException {

    }

    @Override
    public Invoice findById(int id) {
        return null;
    }

    @Override
    public boolean update(Invoice obj) throws SQLException {
        return false;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        return false;
    }

    @Override
    public List<Invoice> findByName(String name) {
        return null;
    }
}
