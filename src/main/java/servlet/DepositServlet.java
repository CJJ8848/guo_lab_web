package servlet;

import domain.Cellline;
import domain.Markers;
import service.CelllineServiceImpl;
import service.ICelllineService;
import service.IMarkerService;
import service.MarkerServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet("/deposit")
public class DepositServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IMarkerService markerService = new MarkerServiceImpl();
        String cellline = request.getParameter("deposit-cellline");
        String id = request.getParameter("id");
        String TPOX = request.getParameter("deposit-TPOX");
        String amelx = request.getParameter("deposit-Amelogenin_chrX");
        String amely = request.getParameter("deposit-Amelogenin_chrX");
        Boolean x = false;
        Boolean y = false;
        if (amelx == "x"){
            x = true;
        }
        if ( amely == "y"){
            y = true;
        }
        String[] single = TPOX.split(",");
        ArrayList<Integer> record = new ArrayList<>();
        for (String i:single){
            int in = Integer.parseInt(i);
            record.add(in);
        }
        Markers markers = new Markers(cellline,"TPOXtest",x,y,record);
        System.out.println("x"+amelx);
        System.out.println(cellline);
        System.out.println(x);
        System.out.println(y);
        System.out.println(record);
        System.out.println("???");
        markerService.deposit(markers,"homosapiens");
        ///Cellline cellline = new Cellline(id,TPOX,d2S441,d3S1358,d5S818);
        ///celllineService.deposit(cellline);
        request.getRequestDispatcher("/jsp/header.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
