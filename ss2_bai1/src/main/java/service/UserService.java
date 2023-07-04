package service;

import model.User;
import repository.IUserRepository;
import repository.UserRepository;

import java.util.List;

public class UserService implements IUserService {
    IUserRepository repository = new UserRepository();

    @Override
    public List<User> showList() {
        return repository.selectAlltUserRepository();
    }

    @Override
    public boolean deleteService(int id) {
        Boolean check = repository.deleteUserRepository(id);
        return check;
    }

    @Override
    public void create(User user) {
        repository.insertUserRepository(user);
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
    public List<User> selectByName() {
        return repository.selectUserByNameRepository();
    }
}
