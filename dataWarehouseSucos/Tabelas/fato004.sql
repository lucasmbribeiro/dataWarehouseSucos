CREATE TABLE [dbo].[fato004]
(
	[Cod_Cliente] NVARCHAR(50) NOT NULL , 
    [Cod_Produto] NVARCHAR(50) NOT NULL, 
    [Cod_Organizacional] NVARCHAR(50) NOT NULL, 
    [Cod_Dia] NVARCHAR(50) NOT NULL, 
    [Meta_Faturamento] FLOAT NULL, 
    PRIMARY KEY ([Cod_Cliente], [Cod_Dia], [Cod_Organizacional], [Cod_Produto]), 
    CONSTRAINT [FK_fato004_dimCliente] FOREIGN KEY (Cod_Cliente) REFERENCES dimCliente(Cod_Cliente), 
    CONSTRAINT [FK_fato004_dimProduto] FOREIGN KEY (Cod_produto) REFERENCES dimProduto(Cod_Produto),
	CONSTRAINT [FK_fato004_dimOrganizacional] FOREIGN KEY (Cod_Organizacional) REFERENCES dimOrganizacional(Cod_Filho),
	CONSTRAINT [FK_fato004_dimTempo] FOREIGN KEY (Cod_Dia) REFERENCES dimTempo(Cod_Dia)
)
