package br.DevBros.Noobies.Vendas;

import java.sql.Date;

public class Venda {
    
    private int codProduto;
    private int codVenda;    
    private String cpfCliente;
    private Date dataCompra; 
    private String nomeFuncionario;    
    private String filial;
    private String nomeProduto;
    private int quantidade;
    private double valorTotal;
    private String formaPgto;
    private int codFuncionario;

    public Venda(int codVenda, String cpfCliente, Date dataCompra, String nomeFuncionario, String filial, String nomeProduto, int quantidade, float valorTotal, String formaPgto) {
        this.codVenda = codVenda;
        this.cpfCliente = cpfCliente;
        this.dataCompra = dataCompra;
        this.nomeFuncionario = nomeFuncionario;
        this.filial = filial;
        this.nomeProduto = nomeProduto;
        this.quantidade = quantidade;
        this.valorTotal = valorTotal;
        this.formaPgto = formaPgto;
    }

    public Venda() {    
    }

    public int getCodProduto() {
        return codProduto;
    }

    public void setCodProduto(int codProduto) {
        this.codProduto = codProduto;
    }

    public Date getDataCompra() {
        return dataCompra;
    }

    public void setDataCompra(Date dataCompra) {
        this.dataCompra = dataCompra;
    }

    public int getCodVenda() {
        return codVenda;
    }

    public void setCodVenda(int codVenda) {
        this.codVenda = codVenda;
    }

    public String getCpfCliente() {
        return cpfCliente;
    }

    public void setCpfCliente(String cpfCliente) {
        this.cpfCliente = cpfCliente;
    }

    public String getNomeFuncionario() {
        return nomeFuncionario;
    }

    public void setNomeFuncionario(String nomeFuncionario) {
        this.nomeFuncionario = nomeFuncionario;
    }

    public String getFilial() {
        return filial;
    }

    public void setFilial(String filial) {
        this.filial = filial;
    }

    public String getNomeProduto() {
        return nomeProduto;
    }

    public void setNomeProduto(String nomeProduto) {
        this.nomeProduto = nomeProduto;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public double getValorTotal() {
        return valorTotal;
    }

    public void setValorTotal(double valorTotal) {
        this.valorTotal = valorTotal;
    }

    public String getFormaPgto() {
        return formaPgto;
    }

    public void setFormaPgto(String formaPgto) {
        this.formaPgto = formaPgto;
    }

    void setCodFuncionario(int codFuncionario) {
        this.codFuncionario = codFuncionario;
    }

    public int getCodFuncionario() {
        return codFuncionario;
    }

}
