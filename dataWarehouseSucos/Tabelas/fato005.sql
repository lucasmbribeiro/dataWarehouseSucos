CREATE TABLE [dbo].[fato005]
(
    [Cod_Produto] NVARCHAR(50) NOT NULL, 
    [Cod_Fabrica] NVARCHAR(50) NOT NULL, 
    [Cod_Dia] NVARCHAR(50) NOT NULL, 
    [Meta_Custos] FLOAT NULL, 
    PRIMARY KEY ( [Cod_Dia], [Cod_Fabrica], [Cod_Produto]), 
    CONSTRAINT [FK_fato005_dimProduto] FOREIGN KEY (Cod_produto) REFERENCES dimProduto(Cod_Produto),
	CONSTRAINT [FK_fato005_dimFabrica] FOREIGN KEY (Cod_Fabrica) REFERENCES dimFabrica(Cod_Fabrica),
	CONSTRAINT [FK_fato005_dimTempo] FOREIGN KEY (Cod_Dia) REFERENCES dimTempo(Cod_Dia)
)
