package com.jetbrains.MyWebApp;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/myServlet")
public class MyServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        out.write("<html>");
        out.write("<head><title>Waste registration</title></head>");
        out.write("<body>");

        String name = request.getParameter("name");
        float amount = Float.parseFloat(request.getParameter("amount"));
        String location = request.getParameter("waste_location");

        System.out.println("Information: " + name + " " + amount + " " + location);
        String validationRegex = "^[a-zA-Z\\s]+";
        if(name.matches(validationRegex)) {
            Waste garbage = new Waste();
            garbage.setName(name);
            garbage.setAmount(amount);
            garbage.setLocation(location);

            EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
            EntityManager em = emf.createEntityManager();
            em.getTransaction().begin();
            em.persist(garbage);
            em.getTransaction().commit();

            out.write("<h1>Saved!</h1>");

            out.write("<table border ='1'>");
            out.write("<tr>");
            out.write("<th>Waste type  </th>");
            out.write("<th>Location</th>");
            out.write("<th>Amount</th>");
            out.write("</tr>");

            List<Waste> wastes = em
                    .createQuery("Select w from Waste w", Waste.class)
                    .getResultList();
            for (Waste w: wastes) {
                out.write("<tr>");
                out.write("<td>" + w.getName() +"</td>");
                out.write("<td>" + w.getLocation() +"</td>");
                out.write("<td>" + w.getAmount() +"</td>");
                out.write("</tr>");
            }
            out.write("</table>");
        } else {
            out.write("<h1>Sorry, there is an error in the input data, use characters </h1>");
        }

        out.write("<br><a href=\"index.jsp\">Back to the form</a>");
        out.write("</body></html>");
    }

    public void destroy() {
    }
}