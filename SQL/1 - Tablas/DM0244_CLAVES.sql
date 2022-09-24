
GO
/****** Object:  Table [dbo].[DM0244_CLAVES]    Script Date: 23/09/2022 05:20:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DM0244_CLAVES](
	[CUENTA] [varchar](10) NOT NULL,
	[NIP_VENTA] [varchar](50) NOT NULL,
	[NIP_COBRO] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DM0244_CLAVES_CUENTA] PRIMARY KEY CLUSTERED 
(
	[CUENTA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
