package org.elvis.proyectocompraventa.controllers.services;

import org.elvis.proyectocompraventa.controllers.models.Categoria;

import java.util.List;
import java.util.Optional;

public interface CategoriaService {
    List<Categoria> listar();
    Optional<Categoria> porId(Long id);
    void guardar(Categoria categoria);
}
