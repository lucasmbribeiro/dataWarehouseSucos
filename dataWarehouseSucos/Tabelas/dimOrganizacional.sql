CREATE TABLE [dbo].[dimOrganizacional]
(
	[Cod_Filho] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [Desc_Filho] NVARCHAR(200) NULL, 
    [Cod_Pai] NVARCHAR(50) NULL, 
    [Esquerda] INT NULL, 
    [Direita] INT NULL, 
    [Nivel] INT NULL, 
    CONSTRAINT [FK_dimOrganizacional_dimOrganizacional] FOREIGN KEY (Cod_Pai) REFERENCES dimOrganizacional(Cod_Filho)
)
