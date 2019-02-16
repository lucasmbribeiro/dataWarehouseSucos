CREATE TABLE [dbo].[fato001]
(
	[Cod_Cliente] NVARCHAR(50) NOT NULL , 
    [Cod_Produto] NVARCHAR(50) NOT NULL, 
    [Cod_Organizacional] NVARCHAR(50) NOT NULL, 
    [Cod_Fabrica] NVARCHAR(50) NOT NULL, 
    [Cod_Dia] NVARCHAR(50) NOT NULL, 
    [Faturamento] FLOAT NULL, 
    [Imposto] FLOAT NULL, 
    [Custo_Varialvel] FLOAT NULL, 
    [Quantidade_Vendida] FLOAT NULL, 
    [Unidade_Vendida] FLOAT NULL, 
    PRIMARY KEY ([Cod_Cliente], [Cod_Dia], [Cod_Fabrica], [Cod_Organizacional], [Cod_Produto]), 
    CONSTRAINT [FK_fato001_dimCliente] FOREIGN KEY (Cod_Cliente) REFERENCES dimCliente(Cod_Cliente), 
    CONSTRAINT [FK_fato001_dimProduto] FOREIGN KEY (Cod_produto) REFERENCES dimProduto(Cod_Produto),
	CONSTRAINT [FK_fato001_dimOrganizacional] FOREIGN KEY (Cod_Organizacional) REFERENCES dimOrganizacional(Cod_Filho),
	CONSTRAINT [FK_fato001_dimFabrica] FOREIGN KEY (Cod_Fabrica) REFERENCES dimFabrica(Cod_Fabrica),
	CONSTRAINT [FK_fato001_dimTempo] FOREIGN KEY (Cod_Dia) REFERENCES dimTempo(Cod_Dia)
)
