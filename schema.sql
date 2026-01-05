BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "categories" (
	"categoryID"	INTEGER,
	"categoryName"	TEXT,
	"description"	TEXT,
	PRIMARY KEY("categoryID")
);
CREATE TABLE IF NOT EXISTS "customers" (
	"customerID"	TEXT,
	"companyName"	TEXT,
	"contactName"	TEXT,
	"contactTitle"	TEXT,
	"city"	TEXT,
	"country"	TEXT,
	PRIMARY KEY("customerID")
);
CREATE TABLE IF NOT EXISTS "employees" (
	"employeeID"	INTEGER,
	"employeeName"	TEXT,
	"title"	TEXT,
	"city"	TEXT,
	"country"	TEXT,
	"reportsTo"	TEXT,
	PRIMARY KEY("employeeID")
);
CREATE TABLE IF NOT EXISTS "order_details" (
	"orderID"	INTEGER,
	"productID"	INTEGER,
	"unitPrice"	INTEGER,
	"quantity"	INTEGER,
	"discount"	INTEGER,
	PRIMARY KEY("orderID","productID")
);
CREATE TABLE IF NOT EXISTS "orders" (
	"orderID"	INTEGER,
	"customerID"	TEXT,
	"employeeID"	INTEGER,
	"orderDate"	TEXT,
	"requiredDate"	TEXT,
	"shippedDate"	TEXT,
	"shipperID"	INTEGER,
	"freight"	REAL,
	PRIMARY KEY("orderID"),
	CONSTRAINT "fk_orders_customers" FOREIGN KEY("customerID") REFERENCES "customers"("customerID"),
	CONSTRAINT "fk_orders_employees" FOREIGN KEY("employeeID") REFERENCES "employees"("employeeID"),
	CONSTRAINT "fk_orders_shippers" FOREIGN KEY("shipperID") REFERENCES "shippers"("shipperID")
);
CREATE TABLE IF NOT EXISTS "products" (
	"productID"	INTEGER,
	"productName"	TEXT,
	"quantityPerUnit"	TEXT,
	"unitPrice"	INTEGER,
	"discontinued"	INTEGER,
	"categoryID"	INTEGER,
	PRIMARY KEY("productID")
);
CREATE TABLE IF NOT EXISTS "shippers" (
	"shipperID"	INTEGER,
	"companyName"	TEXT,
	PRIMARY KEY("shipperID")
);
COMMIT;
