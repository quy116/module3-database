package service;

import model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserService {
    List<User> showList();

    boolean deleteService(int id);

    void create(User user) throws SQLException;

    void edit(User user);

    List<User> findId(int id);

    List<User> findByCountry(String country);

    List<User> selectSortName();

}
