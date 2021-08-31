package dao;

import domain.Cellline;
import domain.Markers;
import org.slf4j.Marker;

import java.util.List;

public interface IMarkerdao {
    public void deposit(Markers markers, String TableName);
    public List<Markers> find(String query);
}
