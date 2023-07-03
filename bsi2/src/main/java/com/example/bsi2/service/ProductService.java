package com.example.bsi2.service;

import com.example.bsi2.model.Product;
import com.example.bsi2.repository.IProductRepository;
import com.example.bsi2.repository.ProductRepository;

import java.util.List;

public class ProductService implements IProductService{
    IProductRepository iProductRepository = new ProductRepository(){};
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
        return iProductRepository.getProductById(id);
    }


    @Override
    public void deleteService(String id) {
//       int newId = Integer.parseInt(id);
       iProductRepository.delete(id);
    }
}
