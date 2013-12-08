CREATE FEDERATION Tenant_Fed (TID uniqueidentifier range)
 GO

--// Connect to the f  ederation member
--// FILTERING=OFF means that we are working with all the atomic units in
--// this federation member
USE FEDERATION Tenant_Fed (TID = '3c3e83a9-886e-4820-9b8d-608b5479e1d9') WITH FILTERING=OFF, RESET
GO

-- '3c3e83a9-886e-4820-9b8d-608b5479e1d9'

CREATE TABLE [dbo].[Products] (
    [Id] [uniqueidentifier] NOT NULL default newid(),
    [TenantId] [uniqueidentifier] NOT NULL,
    [Name] [nvarchar](max) NOT NULL,
    [Category] [nvarchar](max) NOT NULL,
    [Description] [nvarchar](max),
    [Price] [decimal](18, 2) NOT NULL,
    CONSTRAINT [PK_dbo.Products] PRIMARY KEY ([Id],[TenantId])
)FEDERATED ON (TID = TenantId)