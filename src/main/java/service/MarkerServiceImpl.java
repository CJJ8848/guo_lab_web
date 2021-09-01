package service;

import dao.IMarkerdao;
import dao.MarkerdaoImpl;
import domain.Cellline;
import domain.Markers;

import java.util.List;

public class MarkerServiceImpl implements IMarkerService {
    private IMarkerdao dao = new MarkerdaoImpl();
    public List<Markers> find(String query){
        return dao.find(query);
    }
    public void deposit(Markers markers, String TableName) {
        dao.deposit(markers,TableName);
    }
}
