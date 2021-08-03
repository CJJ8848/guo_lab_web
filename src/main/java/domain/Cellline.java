package domain;

public class Cellline {
    private String id;
    private String TPOX;
    private String D2S441;
    private String D3S1358;
    private String D5S818;

    public Cellline(String id, String TPOX, String d2S441, String d3S1358, String d5S818) {
        this.id = id;
        this.TPOX = TPOX;
        D2S441 = d2S441;
        D3S1358 = d3S1358;
        D5S818 = d5S818;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTPOX() {
        return TPOX;
    }

    public void setTPOX(String TPOX) {
        this.TPOX = TPOX;
    }

    public String getD2S441() {
        return D2S441;
    }

    public void setD2S441(String d2S441) {
        D2S441 = d2S441;
    }

    public String getD3S1358() {
        return D3S1358;
    }

    public void setD3S1358(String d3S1358) {
        D3S1358 = d3S1358;
    }

    public String getD5S818() {
        return D5S818;
    }

    public void setD5S818(String d5S818) {
        D5S818 = d5S818;
    }
}
