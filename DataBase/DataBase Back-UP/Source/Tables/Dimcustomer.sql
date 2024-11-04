USE [telco_customer_chun]
GO

/****** Object:  Table [dbo].[DimCustomer]    Script Date: 10/22/2024 7:37:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimCustomer](
	[customerID] [varchar](50) NOT NULL,
	[gender] [varchar](10) NULL,
	[SeniorCitizen] [int] NULL,
	[Partner] [varchar](3) NULL,
	[Dependents] [varchar](3) NULL,
PRIMARY KEY CLUSTERED 
(
	[customerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

