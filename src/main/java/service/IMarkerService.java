package service;

import domain.Cellline;
import domain.Markers;

import java.util.List;

public interface IMarkerService {
    public void deposit(Markers markers, String TableName);
    public List<Markers> find(String query);
}
