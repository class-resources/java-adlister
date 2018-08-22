import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CreateProductServlet", urlPatterns = "/create")
public class CreateProductServlet extends HttpServlet {

//    In doPost, we access the values the user submitted, and use those values to create a new Product object.
// Notice that we have to use Double.parseDouble, as all values we obtain from the user are strings.
// Keep in mind that the string argument passed to request.getParameter must match up with the name attribute
// defined on the inputs in our html.

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Products productsDao = DaoFactory.getProductsDao();
        // create a new product based on the submitted data
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        Product product = new Product(name, price);
        // persist the new product
        productsDao.insert(product);
        response.sendRedirect("/products");
    }


//    In the doGet method, we simply show the corresponding JSP file.
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("create.jsp").forward(request, response);

    }
}
