SELECT
	FirstName,
	LastName,
	Address,
	FirstName ||' '|| LastName ||' '|| Address ||', '|| City ||' '||State||' '||PostalCode AS [Mailing Address],
	LENGTH(PostalCode),
	substr(postalcode,1,5) AS [5 Digit Postal Code],
	upper(firstname) AS [First Name All Caps],
	lower(lastname) AS [Last Name All Lower]
FROM
	Customer
WHERE
	COUNTRY = 'USA'