package com.example.bsi2.service;

import com.example.bsi2.model.Product;
import com.example.bsi2.repository.IProductRepository;
import com.example.bsi2.repository.ProductRepository;

import java.util.List;

public class ProductService implements IProductService {
    IProductRepository iProductRepository = new ProductRepository() {
    };

    @Override
    public List<Product> getAllService() {
        return iProductRepository.getAll();
    }

    @Override
    public void addService(Product product) {
        iProductRepository.add(product);
    }

    @Override
    public Product getProductById(String id) {
        if (iProductRepository.getProductById(id) == null) {

        }
        return iProductRepository.getProductById(id);

    }


    @Override
    public void deleteService(String id) {
//       int newId = Integer.parseInt(id);
        iProductRepository.delete(id);
    }

    @Override
    public List<Product> editService(String id, String name, String quantity, String price) {
        List<Product> list = iProductRepository.getAll();
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getId().equals(id)){
                list.get(i).setId(id);
                list.get(i).setName(name);
                list.get(i).setQuantity(quantity);
                list.get(i).setPrice(price);
            }
        }
        iProductRepository.edit(list);
        return list;
    }


}
