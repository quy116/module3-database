package repository;

import model.User;

import java.util.List;

public interface IUserRepository {
    void insertUserRepository(User user);
     List<User> selectAlltUserRepository();
     List<User> selectUserRepository(int id);
     List<User> selectUserByCountTryRepository(String country);
     List<User> selectUserByNameRepository();

     boolean deleteUserRepository(int id);
     boolean UpdateUserRepository(User user);

}
