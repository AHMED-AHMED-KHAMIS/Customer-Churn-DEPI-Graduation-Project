USE [telco_customer_chun]
GO

/****** Object:  Table [dbo].[FactCustomerChurn]    Script Date: 10/22/2024 7:37:39 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactCustomerChurn](
	[customerID] [varchar](50) NOT NULL,
	[tenure] [int] NULL,
	[MonthlyCharges] [float] NULL,
	[TotalCharges] [float] NULL,
	[ChurnID] [int] IDENTITY(1,1) NOT NULL,
	[contract_id] [int] NULL,
	[ServiceID] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FactCustomerChurn]  WITH CHECK ADD  CONSTRAINT [contract_ID_FK] FOREIGN KEY([contract_id])
REFERENCES [dbo].[DimContract] ([contract_id])
GO

ALTER TABLE [dbo].[FactCustomerChurn] CHECK CONSTRAINT [contract_ID_FK]
GO

ALTER TABLE [dbo].[FactCustomerChurn]  WITH CHECK ADD  CONSTRAINT [customer_id_fk] FOREIGN KEY([customerID])
REFERENCES [dbo].[DimCustomer] ([customerID])
GO

ALTER TABLE [dbo].[FactCustomerChurn] CHECK CONSTRAINT [customer_id_fk]
GO

ALTER TABLE [dbo].[FactCustomerChurn]  WITH CHECK ADD FOREIGN KEY([ChurnID])
REFERENCES [dbo].[DimChurn] ([ChurnID])
GO

ALTER TABLE [dbo].[FactCustomerChurn]  WITH CHECK ADD  CONSTRAINT [service_id_FK] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[DimService] ([ServiceID])
GO

ALTER TABLE [dbo].[FactCustomerChurn] CHECK CONSTRAINT [service_id_FK]
GO

