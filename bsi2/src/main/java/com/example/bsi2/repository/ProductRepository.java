package com.example.bsi2.repository;

import com.example.bsi2.model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository {
    static List<Product> productList = new ArrayList<>();
    static {
        Product product = new Product("1","bcs","1000","10000");
        productList.add(product);
    }
    @Override
    public List<Product> getAll() {
        return productList;
    }

    @Override
    public void add(Product product) {
        productList.add(product);
    }

    @Override
    public Product getProductById(String id) {
        for (int i = 0; i < productList.size(); i++) {
            if (productList.get(i).getId().equals(id)){
                return productList.get(i);
            }
        }
        return null;
    }


    @Override
    public void delete(String id) {
        for (int i = 0; i < productList.size(); i++) {
            if (productList.get(i).getId().equals(id)){
                productList.remove(i);
            }
        }
    }
}
