package service;

import domain.Cellline;
import domain.Cellline;

import java.util.List;

public interface ICelllineService {
    public void deposit(Cellline cellline);
    public List<Cellline> find(String query);
}
