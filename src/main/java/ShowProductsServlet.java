import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


//mapped to URL(/products); when you enter localhost:8080/products, doGet will be triggered.
@WebServlet(name = "ShowProductsServlet.java", urlPatterns = "/products")
public class ShowProductsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Use the factory to get the dao object
        Products productsDao = DaoFactory.getProductsDao();
        // Use a method on the dao to get all the products
        List<Product> products = productsDao.all();
        // Pass the data to the jsp
        request.setAttribute("products", products);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }



}
