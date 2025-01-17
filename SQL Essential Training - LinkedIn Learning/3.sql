SELECT
	c.FirstName,
	c.LastName,
	i.InvoiceId,
	i.CustomerId,
	i.InvoiceDate,
	i.total
FROM
	Invoice AS i
INNER JOIN
	Customer as c
ON
	i.CustomerId = c.CustomerId
ORDER BY
	c.CustomerId