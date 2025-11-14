package org.elvis.proyectocompraventa.controllers.controllers;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.elvis.proyectocompraventa.controllers.models.Categoria;
import org.elvis.proyectocompraventa.controllers.services.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

@WebServlet("/categoria")
public class CategoriaServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String accion=req.getParameter("accion");
        Connection conn = (Connection) req.getAttribute("conn");
        CategoriaService servicios = new CategoriaServiceJdbcImplement(conn);
        //List<Categoria> categorias = servicios.listar();
        if ("listar".equalsIgnoreCase(accion)){
            List<Categoria> categorias= servicios.listar();
            enviarComoJson(resp, categorias);
            return;
        }

        List<Categoria> categorias =servicios.listar();

        LoginService auth= new LoginServiceSessionImplement();
        Optional<String>usernameOptional=auth.getUserName(req);

        req.setAttribute("categorias", categorias);
        req.setAttribute("username",usernameOptional);
        getServletContext().getRequestDispatcher("/categoria.jsp").forward(req, resp);


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Connection conn = (Connection) req.getAttribute("conn");
        CategoriaService service = new CategoriaServiceJdbcImplement(conn);

        Long idCategoria=Long.parseLong(req.getParameter("idCategoria"));
        String nombre = req.getParameter("nombre");
        String descripcion = req.getParameter("descripcion");



        Categoria categoria = new Categoria();
       /* if (idCategoria !=null && !idCategoria.trim().isEmpty()){
            categoria.setIdCategoria(idCategoria);

        }*/
    }

    private void enviarComoJson(HttpServletResponse response, List<Categoria> categorias)throws IOException{
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        //Armar JSON
        JsonObject responseJson=new JsonObject();
        responseJson.add("data", new Gson().toJsonTree(categorias));
        //
        response.getWriter().write(responseJson.toString());
    }
}
