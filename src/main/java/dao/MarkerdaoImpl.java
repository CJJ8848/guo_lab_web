

package dao;

import dbutils.DBUtils;
import domain.Markers;

import java.sql.Array;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class MarkerdaoImpl implements IMarkerdao {
    private static final Logger log = LoggerFactory.getLogger(MarkerdaoImpl.class);

    public MarkerdaoImpl() {
    }

    public boolean exist(String CelllineName,  String Marker, String tableName) {
        AtomicBoolean exists = new AtomicBoolean(false);
        DBUtils.execSQL((connection) -> {
            try {
                String sql = "select * from ? where CelllineName=? and Marker=?";
                PreparedStatement preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1, tableName);
                preparedStatement.setString(2, CelllineName);
                preparedStatement.setString(3, Marker);
                ResultSet resultSet = preparedStatement.executeQuery();
                if (resultSet.next()) {
                    exists.set(true);
                }
            } catch (SQLException var6) {
                log.info("", var6);
            }

        });
        return exists.get();
    }


    public void renew(String CelllineName, String Marker, List<Integer> Record, String tableName) {
        DBUtils.execSQL((connection) -> {
            try {
                String sql = "select Record from ? where CelllineName=? and Marker=?";
                PreparedStatement preparedStatement = connection.prepareStatement(sql);
                preparedStatement.setString(1, tableName);
                preparedStatement.setString(2, CelllineName);
                preparedStatement.setString(3, Marker);
                ResultSet resultSet = preparedStatement.executeQuery();
                List<Integer> QueryRecord = (ArrayList) resultSet.getArray(1);

                if (!Record.equals(QueryRecord)) { //判断新输入的record内容是否跟表里的内容重复
                    //求新输入的和表里的record的交集,保存在list2
                    ArrayList<Integer> list1=new ArrayList<Integer>();
                    ArrayList<Integer> list2=new ArrayList<Integer>();
                    for(int i:Record)
                        list1.add(i);
                    for(int i:QueryRecord)
                        list2.add(i);
                    list1.removeAll(list2);
                    list2.addAll(list1);

                    String sql2 = "update ? set Record=? where CelllineName=? and Marker=?";
                    PreparedStatement preparedStatement2 = connection.prepareStatement(sql2);
                    preparedStatement2.setString(1, tableName);
                    preparedStatement2.setArray(2, (Array) list2); //不知道java的array能不能直接传入表里？
                    preparedStatement2.setString(3, CelllineName);
                    preparedStatement2.setString(4, Marker);
                    preparedStatement2.execute();

                } else System.out.println("Record is duplicated!");

            } catch (SQLException var6) {
                log.info("", var6);
            }

        });
    }




    public void deposit(Markers markers, String TableName) {
        MarkerdaoImpl markerdao = new MarkerdaoImpl();
        String CelllineName = markers.getCelllineName();
        String Marker = markers.getMarker();
        List<Integer> Record = markers.getRecord();
        System.out.println("test1");
        if (!Record.isEmpty())  {
            System.out.println("test2");
            if (!markerdao.exist(CelllineName, Marker, TableName)) {
                System.out.println("test3");
                DBUtils.execSQL((connection) -> {
                    try {
                        System.out.println("deposit start");
                        PreparedStatement preparedStatement = connection.prepareStatement("insert into ? values (?,?,?,?,?)");
                        preparedStatement.setString(1, TableName);
                        preparedStatement.setString(2, CelllineName);
                        preparedStatement.setString(3, Marker);
                        preparedStatement.setBoolean(4, markers.isAmelX());
                        preparedStatement.setBoolean(5, markers.isAmelY());

                        //Array sqlArray = connection.createArrayOf("Integer", new List[]{Record});
                        preparedStatement.setArray(6, null);
                        System.out.println("new one");
                        preparedStatement.execute();
                        System.out.println("deposit done");
                    } catch (SQLException var3) {
                        log.info("", var3);
                    }
                });
            } else markerdao.renew(CelllineName, Marker, Record, TableName);

        }

    }

    @Override
    public List<Markers> find(String query) {
        return null;
    }

}
