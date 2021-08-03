package dao;
import domain.Cellline;
import java.util.List;

public interface ICelllinedao {
    public void deposit(Cellline cellline);
    public List<Cellline> find(String query);
}
