SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total,
	CASE
	WHEN total < 2.00 THEN 'Baseline Purchase'
	WHEN total BETWEEN 2.00 AND 6.99 THEN 'Low Purchase'
	WHEN total BETWEEN 7.00 AND 15.00 THEN 'Target'
	ELSE 'Top Performer'
	END AS PurchaseType
FROM
	Invoice
WHERE
	PurchaseType = 'Top Performer'
ORDER BY
	BillingCity