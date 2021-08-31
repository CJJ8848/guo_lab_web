
package domain;

import java.util.ArrayList;

public class Markers {

    private String CelllineName;
    private String Marker;
    private boolean AmelX;
    private boolean AmelY;
    private ArrayList<Integer> Record;

    public Markers(String CelllineName, String Marker, boolean AmelX, boolean AmelY, ArrayList<Integer> Record) {
        this.CelllineName = CelllineName;
        this.Marker = Marker;
        this.AmelX = AmelX;
        this.AmelY = AmelY;
        this.Record = Record;
    }

    public String getCelllineName() {
        return CelllineName;
    }

    public void setCelllineName(String celllineName) {
        CelllineName = celllineName;
    }

    public String getMarker() {
        return Marker;
    }

    public void setMarker(String marker) {
        Marker = marker;
    }

    public boolean isAmelX() {
        return AmelX;
    }

    public void setAmexlX(boolean amelX) {
        AmelX = amelX;
    }

    public boolean isAmelY() {
        return AmelY;
    }

    public void setAmelY(boolean amelY) {
        AmelY = amelY;
    }

    public ArrayList<Integer> getRecord() {
        return Record;
    }

    public void setRecord(ArrayList<Integer> record) {
        Record = record;
    }


    @Override
    public String toString() {
        return "Marker{" +
                "CelllineName='" + CelllineName + '\'' +
                ", Marker='" + Marker + '\'' +
                ", AmelX=" + AmelX +
                ", AmelY=" + AmelY +
                ", Record=" + Record +
                '}';
    }
}