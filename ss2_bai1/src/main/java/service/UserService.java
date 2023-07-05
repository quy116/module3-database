package service;

import model.User;
import repository.IUserRepository;
import repository.UserRepository;

import java.sql.SQLException;
import java.util.List;

public class UserService implements IUserService {
    IUserRepository repository = new UserRepository();

    @Override
    public List<User> showList() {

//        return repository.selectAlltUserRepository();
        return repository.selectAllUser();
    }

    @Override
    public boolean deleteService(int id) {
//        Boolean check = repository.deleteUserRepository(id);
        Boolean check = repository.deleteUser(id);
        return check;
    }

    @Override
    public void create(User user) throws SQLException {
//        repository.insertUserRepository(user);
        repository.insertUserStore(user);
    }

    @Override
    public void edit(User user) {
        repository.UpdateUserRepository(user);
    }

    @Override
    public List<User> findId(int id) {
        List<User> userList = repository.selectUserRepository(id);
        return userList;
    }

    @Override
    public List<User> findByCountry(String country) {
        List<User> list = repository.selectUserByCountTryRepository(country);
        return list;
    }

    @Override
    public List<User> selectSortName() {
        return repository.selectSortByNameRepository();
    }
}
