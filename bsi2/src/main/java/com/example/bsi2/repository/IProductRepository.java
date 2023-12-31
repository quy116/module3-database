package com.example.bsi2.repository;

import com.example.bsi2.model.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> getAll ();
    void add(Product product);
   List<Product> getProductByName(String name);
    void delete(String id);
    void edit(List<Product> productList);
//    void editRepository(String id,Product product);
}
