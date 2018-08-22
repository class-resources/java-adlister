//DaoFactory provides access to DAO. It ensures that only single instance of ListProducts is created.

import java.util.List;

public class DaoFactory {


    private static Products productsDao;


    //The 1st time getProductsDao is called, an instance of ListProducts is created, stored as a class property, and returned from the method.
    //the 2nd time getProductsDao is called, the existing instance will be re-used.
    public static Products getProductsDao() {
        if (productsDao == null) {
            productsDao = new ListProducts();
        }
        return productsDao;
    }
}
