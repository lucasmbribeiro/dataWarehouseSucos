CREATE TABLE [dbo].[dimProduto]
(
	[Cod_Produto] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [Desc_Produto] NVARCHAR(200) NULL, 
    [Atr_Tamanho] NVARCHAR(200) NULL, 
    [Atr_Sabor] NVARCHAR(200) NULL, 
    [Cod_Marca] NVARCHAR(50) NULL, 
    CONSTRAINT [FK_dimProduto_dimMarca] FOREIGN KEY (Cod_Marca) REFERENCES dimMarca(Cod_Marca)
)
