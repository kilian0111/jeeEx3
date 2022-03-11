package com.example.testjee;

import bean.Inscris;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.http.*;


@WebServlet(name = "helloServlet", value = "/")
public class Controller extends HttpServlet {
    private Integer tarifReference = 10;

    public void init() {

    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Inscris inscris = null;
        request.setAttribute("inscris", inscris);
        request.getRequestDispatcher("form.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Inscris inscris = new Inscris();
        inscris.setNom(request.getParameter("nom"));
        inscris.setPrenom(request.getParameter("prenom"));
        inscris.setCateg(request.getParameter("categorie"));
        String buttonClick = request.getParameter("valider");
        switch (inscris.getCateg()){
            case "Adulte":
                inscris.setPrix(tarifReference * 1.20);
                break;
            case "Etudiant" :
                inscris.setPrix((tarifReference * 0.8) * 1.20);
                break;
            case "Enfant" :
                inscris.setPrix((tarifReference /2) * 1.20);
                break;
        }

        request.setAttribute("inscris", inscris);
        if(buttonClick.equals("recapituler") ){

        }else{
            request.getRequestDispatcher("form2.jsp").forward(request,response);
        }
        request.getRequestDispatcher("form2.jsp").forward(request,response);
    }

    public void destroy() {
    }
}
