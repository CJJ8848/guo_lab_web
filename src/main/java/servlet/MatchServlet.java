package servlet;

import domain.Cellline;
import domain.Markers;
import service.ICelllineService;
import service.CelllineServiceImpl;
import service.IMarkerService;
import service.MarkerServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/match")
public class MatchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IMarkerService markerService = new MarkerServiceImpl();
        String query = request.getParameter("query");
        List<Markers> markersquery = markerService.find(query);
        request.setAttribute("markersquery",markersquery);
        request.getRequestDispatcher("/jsp/header.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
