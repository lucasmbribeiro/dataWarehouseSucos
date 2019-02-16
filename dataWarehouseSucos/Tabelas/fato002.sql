CREATE TABLE [dbo].[fato002]
(
		[Cod_Cliente] NVARCHAR(50) NOT NULL , 
    [Cod_Produto] NVARCHAR(50) NOT NULL, 
    [Cod_Fabrica] NVARCHAR(50) NOT NULL, 
    [Cod_Dia] NVARCHAR(50) NOT NULL, 
    [Frete] FLOAT NULL, 
    PRIMARY KEY ([Cod_Cliente], [Cod_Dia], [Cod_Fabrica], [Cod_Produto]), 
    CONSTRAINT [FK_fato002_dimCliente] FOREIGN KEY (Cod_Cliente) REFERENCES dimCliente(Cod_Cliente), 
    CONSTRAINT [FK_fato002_dimProduto] FOREIGN KEY (Cod_produto) REFERENCES dimProduto(Cod_Produto),
	CONSTRAINT [FK_fato002_dimFabrica] FOREIGN KEY (Cod_Fabrica) REFERENCES dimFabrica(Cod_Fabrica),
	CONSTRAINT [FK_fato002_dimTempo] FOREIGN KEY (Cod_Dia) REFERENCES dimTempo(Cod_Dia)
)
