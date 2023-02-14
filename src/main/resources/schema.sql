CREATE TABLE [dbo].[Chat](
    [id] [int] PRIMARY KEY,
    [content] [nvarchar](50) NULL,
    [send_date] [datetime] NULL,
    [staff_id] [int] NULL,
    [customer_id] [int] NULL,
    CONSTRAINT [FK_Chat_Customer] FOREIGN KEY([customer_id]) REFERENCES [dbo].[Customer] ([id]),
    CONSTRAINT [FK_Chat_Staff] FOREIGN KEY([staff_id]) REFERENCES [dbo].[Staff] ([id])
    );

CREATE TABLE [dbo].[Compensation](
    [id] [int] PRIMARY KEY,
    [images] [nvarchar](50) NULL,
    [accident_address] [nvarchar](50) NULL,
    [accident_time] [nvarchar](50) NULL,
    [payment] [float] NULL,
    [contract_id] [int] NULL,
    [status] [nvarchar](50) NULL,
    [customer_id] [int] NULL,
    [manager_id] [int] NULL,
    [staff_id] [int] NULL,
    CONSTRAINT [FK_Compensation_Admin] FOREIGN KEY([manager_id]) REFERENCES [dbo].[Manager] ([id]),
    CONSTRAINT [FK_Compensation_Customer] FOREIGN KEY([customer_id]) REFERENCES [dbo].[Customer] ([id]),
    CONSTRAINT [FK_Compensation_Staff] FOREIGN KEY([staff_id]) REFERENCES [dbo].[Staff] ([id])
    );

CREATE TABLE [dbo].[Contract](
    [id] [int] PRIMARY KEY,
    [pattern] [nvarchar](50) NULL,
    [typeID] [int] NULL,
    [start_date] [datetime] NULL,
    [end_date] [datetime] NULL,
    [status] [nvarchar](50) NULL,
    [manager_id] [int] NULL,
    [staff_id] [int] NULL,
    [customer_id] [int] NULL,
    CONSTRAINT [FK_Contract_Admin] FOREIGN KEY([manager_id]) REFERENCES [dbo].[Manager] ([id]),
    CONSTRAINT [FK_Contract_ContractType] FOREIGN KEY([typeID]) REFERENCES [dbo].[ContractType] ([id]),
    CONSTRAINT [FK_Contract_Customer] FOREIGN KEY([customer_id]) REFERENCES [dbo].[Customer] ([id]),
    CONSTRAINT [FK_Contract_Staff] FOREIGN KEY([staff_id]) REFERENCES [dbo].[Staff] ([id])
    );

CREATE TABLE [dbo].[ContractType](
    [id] [int] PRIMARY KEY,
    [name] [nvarchar](50) NULL,
    [vehicle_type] [nvarchar](50) NULL,
    [price] [float] NULL,
    [insurance_level] [float] NULL,
    [description] [nvarchar](50) NULL,
    [manager_id] [int] NULL,
    CONSTRAINT [FK_ContractType_Manager] FOREIGN KEY([manager_id]) REFERENCES [dbo].[Manager] ([id])
    );

CREATE TABLE [dbo].[Customer](
    [id] [int] PRIMARY KEY,
    [username] [nvarchar](50) NULL,
    [password] [nvarchar](50) NULL,
    [name] [nvarchar](50) NULL,
    [gmail] [nvarchar](50) NULL,
    [phone] [nvarchar](50) NULL,
    [address] [nvarchar](50) NULL,
    [ci] [nvarchar](50) NULL,
    [is_active] [bit] NULL,
    [role] [nvarchar](50) NULL,
    [manager_id] [int] NULL,
    CONSTRAINT [FK_Customer_Admin] FOREIGN KEY([manager_id]) REFERENCES [dbo].[Manager] ([id])
    );

CREATE TABLE [dbo].[Manager](
    [id] [int] PRIMARY KEY,
    [username] [nvarchar](50) NULL,
    [password] [nvarchar](50) NULL,
    [role] [nvarchar](50) NULL,

    );

CREATE TABLE [dbo].[Staff](
    [id] [int] PRIMARY KEY,
    [username] [nvarchar](50) NULL,
    [password] [nvarchar](50) NULL,
    [role] [nvarchar](50) NULL,
    [manager_id] [int] NULL,
    CONSTRAINT [FK_Staff_Admin] FOREIGN KEY([manager_id]) REFERENCES [dbo].[Manager] ([id])
    );