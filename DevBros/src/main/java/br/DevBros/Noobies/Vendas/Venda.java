package br.DevBros.Noobies.Vendas;

public class Venda {
    
    private int COD_PRODUTO;
    private int COD_VENDA;    
    private long CPF_CLIENTE;
    private String DATA_COMPRA; 
    private String NOME_FUNCIONARIO;    
    private String FILIAL;
    private String NOME_PRODUTO;
    private String QUANTIDADE;
    private float VALOR_TOTAL;
    private String FORMA_PGTO;
    private int COD_FUNCIONARIO;

    public Venda(int COD_VENDA, long CPF_CLIENTE, String DATA_COMPRA, String NOME_FUNCIONARIO, String FILIAL, String NOME_PRODUTO, String QUANTIDADE, float VALOR_TOTAL, String FORMA_PGTO) {
        this.COD_VENDA = COD_VENDA;
        this.CPF_CLIENTE = CPF_CLIENTE;
        this.DATA_COMPRA = DATA_COMPRA;
        this.NOME_FUNCIONARIO = NOME_FUNCIONARIO;
        this.FILIAL = FILIAL;
        this.NOME_PRODUTO = NOME_PRODUTO;
        this.QUANTIDADE = QUANTIDADE;
        this.VALOR_TOTAL = VALOR_TOTAL;
        this.FORMA_PGTO = FORMA_PGTO;
    }

    Venda() {
    
    }

    public int getCOD_PRODUTO() {
        return COD_PRODUTO;
    }

    public void setCOD_PRODUTO(int COD_PRODUTO) {
        this.COD_PRODUTO = COD_PRODUTO;
    }

    public String getDATA_COMPRA() {
        return DATA_COMPRA;
    }

    public void setDATA_COMPRA(String DATA_COMPRA) {
        this.DATA_COMPRA = DATA_COMPRA;
    }

    public int getCOD_VENDA() {
        return COD_VENDA;
    }

    public void setCOD_VENDA(int COD_VENDA) {
        this.COD_VENDA = COD_VENDA;
    }

    public long getCPF_CLIENTE() {
        return CPF_CLIENTE;
    }

    public void setCPF_CLIENTE(long CPF_CLIENTE) {
        this.CPF_CLIENTE = CPF_CLIENTE;
    }

    public String getNOME_FUNCIONARIO() {
        return NOME_FUNCIONARIO;
    }

    public void setNOME_FUNCIONARIO(String NOME_FUNCIONARIO) {
        this.NOME_FUNCIONARIO = NOME_FUNCIONARIO;
    }

    public String getFILIAL() {
        return FILIAL;
    }

    public void setFILIAL(String FILIAL) {
        this.FILIAL = FILIAL;
    }

    public String getNOME_PRODUTO() {
        return NOME_PRODUTO;
    }

    public void setNOME_PRODUTO(String NOME_PRODUTO) {
        this.NOME_PRODUTO = NOME_PRODUTO;
    }

    public String getQUANTIDADE() {
        return QUANTIDADE;
    }

    public void setQUANTIDADE(String QUANTIDADE) {
        this.QUANTIDADE = QUANTIDADE;
    }

    public float getVALOR_TOTAL() {
        return VALOR_TOTAL;
    }

    public void setVALOR_TOTAL(float VALOR_TOTAL) {
        this.VALOR_TOTAL = VALOR_TOTAL;
    }

    public String getFORMA_PGTO() {
        return FORMA_PGTO;
    }

    public void setFORMA_PGTO(String FORMA_PGTO) {
        this.FORMA_PGTO = FORMA_PGTO;
    }

    void setCOD_FUNCIONARIO(int COD_FUNC) {
        this.COD_FUNCIONARIO = COD_FUNC;
    }

    public int getCOD_FUNCIONARIO() {
        return COD_FUNCIONARIO;
    }
    
    
}
