USE [telco_customer_chun]
GO

/****** Object:  Table [dbo].[DimContract]    Script Date: 10/22/2024 7:36:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimContract](
	[Contract] [varchar](20) NULL,
	[PaperlessBilling] [varchar](3) NULL,
	[PaymentMethod] [varchar](50) NULL,
	[contract_id] [int] NOT NULL,
 CONSTRAINT [contract_id_PK] PRIMARY KEY CLUSTERED 
(
	[contract_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

