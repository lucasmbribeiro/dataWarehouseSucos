CREATE TABLE [dbo].[dimMarca]
(
	[Cod_Marca] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [Desc_Marcar] NVARCHAR(200) NULL, 
    [Cod_Categoria] NVARCHAR(50) NULL, 
    CONSTRAINT [FK_dimMarca_dimCategoria] FOREIGN KEY (Cod_Categoria) REFERENCES dimCategoria (Cod_Categoria)
)
