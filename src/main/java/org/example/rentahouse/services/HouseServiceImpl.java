package org.example.rentahouse.services;

import org.example.rentahouse.models.House;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class HouseServiceImpl implements HouseService{
    @Override
    public List<House> findAll() {
        List<House> houses = new ArrayList<>();
        try(Connection connection = DatabaseConnection.getconnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement("select * from house");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String address = resultSet.getString("address");
                double price = resultSet.getDouble("price");
                int roomNum = resultSet.getInt("roomNum");
                int bathroomNum = resultSet.getInt("bathroomNum");
                String status = resultSet.getString("status");
                String describe = resultSet.getString("describe");
                houses.add(new House(id, name, address, price, roomNum, bathroomNum, status, describe));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return houses;
    }
    @Override
    public void add(House obj) throws SQLException {
        try(Connection connection = DatabaseConnection.getconnection()) {
            assert connection != null;
            PreparedStatement preparedStatement = connection.prepareStatement("insert into house(id, name, address, price, roomNum, bathroomNum, status, describe) values (?,?,?,?,?,?,?,?)");
            preparedStatement.setInt(1, obj.getId());
            preparedStatement.setString(2, obj.getName());
            preparedStatement.setString(3, obj.getAddress());
            preparedStatement.setDouble(4, obj.getPrice());
            preparedStatement.setInt(5, obj.getRoomNum());
            preparedStatement.setInt(6, obj.getBathroomNum());
            preparedStatement.setString(7, obj.getStatus());
            preparedStatement.setString(8, obj.getDescribe());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public House findById(int id) {
        House house = new House();
        try(Connection connection = DatabaseConnection.getconnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement("select * from house where id = ?");
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                String name = resultSet.getString("name");
                String address = resultSet.getString("address");
                double price = resultSet.getDouble("price");
                int roomNum = resultSet.getInt("roomNum");
                int bathroom = resultSet.getInt("bathroomNum");
                String status = resultSet.getString("status");
                String describe = resultSet.getString("describe");
                house = new House(id, name, address, price, roomNum, bathroom, status, describe);
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return house;
    }

    @Override
    public boolean update(House obj) throws SQLException {
        try(Connection connection = DatabaseConnection.getconnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement("update house set name = ?, address= ?,  price = ?, roomNum = ?, bathroomNum = ?, status = ?, desribe = ? where id = ?");
            preparedStatement.setInt(8, obj.getId());
            preparedStatement.setString(1, obj.getName());
            preparedStatement.setString(2, obj.getAddress());
            preparedStatement.setDouble(3, obj.getPrice());
            preparedStatement.setInt(4, obj.getRoomNum());
            preparedStatement.setInt(5, obj.getBathroomNum());
            preparedStatement.setString(6, obj.getStatus());
            preparedStatement.setString(7, obj.getDescribe());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(int id) throws SQLException {
        try(Connection connection = DatabaseConnection.getconnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement("delete from house where id = ?");
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<House> findByName(String name) {
        List<House> houseList = new ArrayList<>();
        try(Connection connection = DatabaseConnection.getconnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement("select * from house where id = ?");
            preparedStatement.setString(1,"%" + name + "%");
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()){
                int id = rs.getInt("id");
                String findName = rs.getString("name");
                String address = rs.getString("address");
                double price = rs.getDouble("price");
                int roomNum = rs.getInt("roomNum");
                int bathroomNum = rs.getInt("bathroomNum");
                String status = rs.getString("status");
                String describe = rs.getString("describe");
                houseList.add(new House(id, findName, address, price, roomNum, bathroomNum, status, describe));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return houseList;
    }
}
