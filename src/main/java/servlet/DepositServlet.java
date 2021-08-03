package servlet;

import domain.Cellline;
import service.CelllineServiceImpl;
import service.ICelllineService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/deposit")
public class DepositServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ICelllineService celllineService = new CelllineServiceImpl();
        String id = request.getParameter("id");
        String TPOX = request.getParameter("TPOX");
        String d2S441 = request.getParameter("d2S441");
        String d3S1358 = request.getParameter("d3S1358");
        String d5S818 = request.getParameter("d5S818");
        Cellline cellline = new Cellline(id,TPOX,d2S441,d3S1358,d5S818);
        celllineService.deposit(cellline);
        request.getRequestDispatcher("/jsp/deposit_success.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
