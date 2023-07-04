package com.example.bsi2.repository;

import com.example.bsi2.model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository {
    static List<Product> listProduct = new ArrayList<>();

    static {
        Product product = new Product("1", "bcs", "1000", "10000");
        listProduct.add(product);
    }

    @Override
    public List<Product> getAll() {
        return listProduct;
    }

    @Override
    public void add(Product product) {
        listProduct.add(product);
    }

    @Override
    public List<Product> getProductByName(String name) {
        List<Product> productList = new ArrayList<>();

        for (int i = 0; i <= listProduct.size(); i++) {
            if (listProduct.get(i).getName().contains(name)) {
                productList.add(listProduct.get(i));

            }
        }
        return productList;
    }


    @Override
    public void delete(String id) {
        for (int i = 0; i < listProduct.size(); i++) {
            if (listProduct.get(i).getId().equals(id)) {
                listProduct.remove(i);
            }
        }
    }

    @Override
    public void edit(List<Product> productList) {
        productList = productList;
    }


}
