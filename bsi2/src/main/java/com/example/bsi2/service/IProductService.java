package com.example.bsi2.service;

import com.example.bsi2.model.Product;

import java.util.List;

public interface IProductService {
    List<Product> getAllService ();
    void addService(Product product);
    Product getProductById(String id);
    void deleteService(String id);
    List<Product> editService(String id, String name, String quantity, String price);
//    void editService(Product product);
}
