package dao;

import dao.ICelllinedao;
import domain.Cellline;
import dbutils.DBUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.swing.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CelllinedaoImpl implements ICelllinedao{
    private static final Logger log = LoggerFactory.getLogger(CelllinedaoImpl.class);
    public void deposit(Cellline cellline) {
        DBUtils.execSQL(connection -> {
            try {
                PreparedStatement preparedStatement = connection.prepareStatement("insert into drug (id, TPOX, D2S441, D3S1358, D5S818) values    (?,?,?,?,?)");
                preparedStatement.setString(1, cellline.getId());
                preparedStatement.setString(2, cellline.getTPOX());
                preparedStatement.setString(3, cellline.getD2S441());
                preparedStatement.setString(4, cellline.getD3S1358());
                preparedStatement.setString(5, cellline.getD5S818());
                preparedStatement.execute();
            } catch (SQLException e) {
                log.info("", e);
            }
        });

    }
    public List<Cellline> find(String query) {
        List<Cellline> celllines = new ArrayList<>();
        DBUtils.execSQL(connection -> {
            try {
                PreparedStatement preparedStatement = connection.prepareStatement("select id, TPOX, D2S441, D3S1358, D5S818 from drug");
                ResultSet resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    String id = resultSet.getString("id");
                    String TPOX = resultSet.getString("TPOX");
                    String D2S441 = resultSet.getString("D2S441");
                    String D3S1358 = resultSet.getString("D3S1358");
                    String D5S818 = resultSet.getString("D5S818");
                    Cellline cellline = new Cellline(id, TPOX, D2S441, D3S1358, D5S818);
                    celllines.add(cellline);
                }
            } catch (SQLException e) {
                log.info("", e);
            }
        });
        return celllines;
    }
}