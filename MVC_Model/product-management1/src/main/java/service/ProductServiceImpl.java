package service;

import model.Ecatagory;
import model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService{

    private static Map<Integer,Product> products;

    static{
        products =new HashMap<>();
        products.put(1,
                new Product(1,"Cocacola",20,10000
                        ,"Cocacola này ngon nhất này","Công ty Coca-Cola"));
        products.put(2,
                new Product(2,"Sting",30,10000
                        ,"Sting này có hai loại vàng và đỏ thần thánh","Rockstar"));
        products.put(3,
                new Product(3,"Twister",10,10000,"Nước cam này lật như cách trở mặt vậy","Công Ty Pepsico Việt Nam"));
        products.put(4,
                new Product(4,"Huda",50,12000,
"Bia này đỉnh nhất xứ huế nha","Công ty Bia Huế"));
        products.put(5,
                new Product(5,"Tiger",70,14000,
"Bia này đỉnh nhất sài thành nè","Heineken Châu Á Thái Bình Dương"));
        products.put(6,
                new Product(6,"Heniken",50,20000,
"Bia này đắt lắm huhu","Tập đoàn Heniken"));
        products.put(7,
                new Product(7,"Larue",50,12000,
"Bia này đỉnh nhất đè nẽng","Nhà máy bia Heniken Việt Nam"));
        products.put(8,
                new Product(8,"Bo huc",20,13000,
"Cái này uống dzo là muốn húc","Công ty RedBull"));
        products.put(9,
                new Product(9,"Number One",30,10000,
"Cái này y cái trên","Công ty Tân Hiệp Phát"));
        products.put(10,
                new Product(10,"Revive",90,10000,
"Uống cái này dô cho bù miếng muối nè","Suntory PepsiCo"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(),product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id,product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public Product findByName(String name) {
        List<Product> list = findAll();
        for(Product products : list){
            if(products.getName().equalsIgnoreCase(name)){
                return products;
            }

        }
        return null;
    }
}
