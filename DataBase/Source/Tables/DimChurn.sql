USE [telco_customer_chun]
GO

/****** Object:  Table [dbo].[DimChurn]    Script Date: 10/22/2024 7:36:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimChurn](
	[ChurnID] [int] IDENTITY(1,1) NOT NULL,
	[ChurnStatus] [varchar](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[ChurnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
