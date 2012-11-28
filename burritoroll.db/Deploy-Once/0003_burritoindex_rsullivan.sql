-- <Migration ID="84bd42b2-0cd7-416c-b252-3df8fafa80f6" />



Print 'Create Index [IX_burriton_name] on [dbo].[burritos]'
GO
CREATE NONCLUSTERED INDEX [IX_burriton_name]
	ON [dbo].[burritos] ([name])
GO


