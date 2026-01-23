PREPARE GetOrderDetail FROM 'SELECT OrderID, Quantity,Cost As Cost  FROM Orders WHERE CustomerID = ?';
SET @id = 1;
EXECUTE GetOrderDetail USING @id;