package repository;

import model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserRepository {
    void insertUserRepository(User user);

    List<User> selectAlltUserRepository();

    List<User> selectUserRepository(int id);

    List<User> selectUserByCountTryRepository(String country);

    List<User> selectSortByNameRepository();

    boolean deleteUserRepository(int id);

    boolean UpdateUserRepository(User user);
    User getUserById(int id) throws SQLException;
    void insertUserStore(User user) throws SQLException;
    List<User> selectAllUser();
    boolean deleteUser(int id);


}
