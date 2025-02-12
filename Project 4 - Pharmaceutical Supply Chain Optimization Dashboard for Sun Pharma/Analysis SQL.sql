select * from suppliers;
select * from sales;
select * from customer_feedback;
select * from inventory;
select * from shipments;
select * from production_order;


-- list all suppliers sorted by their quality rating:

SELECT Supplier_Name, Lead_Time_Days, Quality_Rating
FROM Suppliers
ORDER BY Quality_Rating DESC;

-- List suppliers with the shortest lead time (sorted ascending):

SELECT Supplier_Name, Lead_Time_Days
FROM Suppliers
ORDER BY Lead_Time_Days ASC;

-- finding total available stock per product:

SELECT Product_Name, SUM(Quantity_Available) AS Total_Stock
FROM Inventory
GROUP BY Product_Name;

-- list all production orders and their status:

SELECT production_order.ï»¿Order_ID, Inventory.Product_Name, production_order.Quantity_Ordered, production_order.Status
FROM production_order
JOIN Inventory ON production_order.Product_ID = Inventory.ï»¿Product_ID;

-- list all shipments that have been delivered... 

SELECT Shipping_Date, Delivery_Date, Shipping_Cost, Delivery_Status
FROM Shipments
WHERE Delivery_Status = 'Delivered';

