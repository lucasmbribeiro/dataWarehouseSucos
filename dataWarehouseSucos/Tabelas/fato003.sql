CREATE TABLE [dbo].[fato003]
(
    [Cod_Fabrica] NVARCHAR(50) NOT NULL, 
    [Cod_Dia] NVARCHAR(50) NOT NULL, 
    [Custo_Fixo] FLOAT NULL, 
    PRIMARY KEY ( [Cod_Dia], [Cod_Fabrica]), 
	CONSTRAINT [FK_fato003_dimFabrica] FOREIGN KEY (Cod_Fabrica) REFERENCES dimFabrica(Cod_Fabrica),
	CONSTRAINT [FK_fato003_dimTempo] FOREIGN KEY (Cod_Dia) REFERENCES dimTempo(Cod_Dia)
)
