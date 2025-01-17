CREATE VIEW V_Tracks_InvoiceLine AS
SELECT
	ii.InvoiceId,
	ii.UnitPrice,
	ii.Quantity,
	t.Name,
	t.Composer,
	t.Milliseconds
FROM
	InvoiceLine ii
INNER JOIN
	Track t
ON
	ii.TrackId = t.TrackId