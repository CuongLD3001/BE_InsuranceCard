CREATE TABLE [dbo].[chat](
    [id] [int] PRIMARY KEY,
    [content] [nvarchar](50) NULL,
    [send_date] [datetime] NULL,
    [staff_id] [int] NULL,
    [customer_id] [int] NULL
    );

CREATE TABLE [dbo].[compensation](
    [id] [int] PRIMARY KEY,
    [images] [nvarchar](50) NULL,
    [accident_address] [nvarchar](50) NULL,
    [accident_time] [nvarchar](50) NULL,
    [payment] [float] NULL,
    [contract_id] [int] NULL,
    [status] [nvarchar](50) NULL,
    [customer_id] [int] NULL,
    [manager_id] [int] NULL,
    [staff_id] [int] NULL
    );

CREATE TABLE [dbo].[contract](
    [id] [int] PRIMARY KEY,
    [pattern] [nvarchar](50) NULL,
    [typeID] [int] NULL,
    [start_date] [datetime] NULL,
    [end_date] [datetime] NULL,
    [status] [nvarchar](50) NULL,
    [manager_id] [int] NULL,
    [staff_id] [int] NULL,
    [customer_id] [int] NULL
    );

CREATE TABLE [dbo].[contract_type](
    [id] [int] PRIMARY KEY,
    [name] [nvarchar](50) NULL,
    [vehicle_type] [nvarchar](50) NULL,
    [price] [float] NULL,
    [insurance_level] [float] NULL,
    [description] [nvarchar](50) NULL,
    [manager_id] [int] NULL
    );

CREATE TABLE [dbo].[customer](
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
    [manager_id] [int] NULL
    );

CREATE TABLE [dbo].[manager](
    [id] [int] PRIMARY KEY,
    [username] [nvarchar](50) NULL,
    [password] [nvarchar](50) NULL,
    [role] [nvarchar](50) NULL
    );

CREATE TABLE [dbo].[staff](
    [id] [int] PRIMARY KEY,
    [username] [nvarchar](50) NULL,
    [password] [nvarchar](50) NULL,
    [role] [nvarchar](50) NULL,
    [manager_id] [int] NULL
    );