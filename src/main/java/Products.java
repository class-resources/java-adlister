import java.util.List;

//This interface describes the operations that our application can perform with products.


public interface Products {


    List<Product> all(); // get all the product records
    void insert(Product product); // persist new product to the database

}
