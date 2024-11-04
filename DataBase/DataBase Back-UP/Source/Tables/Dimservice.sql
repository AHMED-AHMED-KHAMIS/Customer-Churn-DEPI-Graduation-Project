USE [telco_customer_chun]
GO

/****** Object:  Table [dbo].[DimService]    Script Date: 10/22/2024 7:37:16 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimService](
	[PhoneService] [varchar](25) NULL,
	[MultipleLines] [varchar](25) NULL,
	[InternetService] [varchar](25) NULL,
	[OnlineSecurity] [varchar](25) NULL,
	[OnlineBackup] [varchar](25) NULL,
	[DeviceProtection] [varchar](25) NULL,
	[TechSupport] [varchar](25) NULL,
	[StreamingTV] [varchar](25) NULL,
	[StreamingMovies] [varchar](25) NULL,
	[ServiceID] [int] NOT NULL,
 CONSTRAINT [service_id_PK] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

