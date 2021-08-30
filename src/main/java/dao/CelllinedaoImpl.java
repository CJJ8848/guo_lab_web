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
                preparedStatement.setString(4, cellline.getD1S1677());
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
                PreparedStatement preparedStatement = connection.prepareStatement("select * from dbforstr.STRs where dbforstr.STRs.Name=?");
                ResultSet resultSet = preparedStatement.executeQuery();
                while (resultSet.next()) {
                    String id = resultSet.getString("id");
                    String Name = resultSet.getString("Name");
                    String D1S1677 = resultSet.getString("D1S1677");
                    String F13B = resultSet.getString("F13B");
                    String PseudoF13B = resultSet.getString("PseudoF13B");
                    String D2S441 = resultSet.getString("D2S441");
                    String TPOX = resultSet.getString("TPOX");
                    String D3S1359 = resultSet.getString("D3S1359");
                    String D4S2408 = resultSet.getString("D4S2408");
                    String CSF1PO = resultSet.getString("CSF1PO");
                    String D5S818 = resultSet.getString("D5S818");
                    String D6S1043 = resultSet.getString("D6S1043");
                    String F13A01 = resultSet.getString("F13A01");
                    String D7SS820 = resultSet.getString("D7SS820");
                    String D8S1113 = resultSet.getString("D8S1113");
                    String D9S938 = resultSet.getString("D9S938");
                    String D9S926 = resultSet.getString("D9S926");
                    String D10S1248 = resultSet.getString("D10S1248");
                    String D11S4463 = resultSet.getString("D11S4463");
                    String TH01 = resultSet.getString("TH01");
                    String D12S375 = resultSet.getString("D12S375");
                    String VWA = resultSet.getString("VWA");
                    String D13S317 = resultSet.getString("D13S317");
                    String D14S306 = resultSet.getString("D14S306");
                    String D15S817 = resultSet.getString("D15S817");
                    String D16S539 = resultSet.getString("D16S539");
                    String D17S974 = resultSet.getString("D17S974");
                    String D18S51 = resultSet.getString("D18S51");
                    String D19S253 = resultSet.getString("D19S253");
                    String D20S482 = resultSet.getString("D20S482");
                    String D21S1409 = resultSet.getString("D21S1409");
                    String D22S873 = resultSet.getString("D22S873");
                    String Amelogenin_chrX = resultSet.getString("Amelogenin_chrX");
                    String Amelogenin_chrY = resultSet.getString("Amelogenin_chrY");



                    Cellline cellline = new Cellline(id, Name, D1S1677,F13B,PseudoF13B,D2S441,TPOX,D3S1359,D4S2408,CSF1PO,D5S818,D6S1043,F13A01,D7SS820,D8S1113,D9S938,D9S926,D10S1248,D11S4463,TH01,D12S375,VWA,D13S317,D14S306,D15S817,D16S539,D17S974,D18S51,D19S253,D20S482,D21S1409,D22S873,Amelogenin_chrX,Amelogenin_chrY);
                    celllines.add(cellline);
                }
            } catch (SQLException e) {
                log.info("", e);
            }
        });
        return celllines;
    }
}