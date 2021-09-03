package service;

import domain.Cellline;

import java.util.List;

public class CelllineServiceImpl implements ICelllineService {
    private ICelllineService dao = new CelllineServiceImpl();
    public void deposit(Cellline cellline) {
        dao.deposit(cellline);
    }
    public List<Cellline> find(String query){
        return dao.find(query);
    }
}
