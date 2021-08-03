package servlet;

import domain.Cellline;
import service.ICelllineService;
import service.CelllineServiceImpl;

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
        ICelllineService celllineService = new CelllineServiceImpl();
        String query = request.getParameter("query");
        List<Cellline> celllines_matched = celllineService.find(query);
        request.setAttribute("celllines_matched",celllines_matched);
        request.getRequestDispatcher("/jsp/results.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
