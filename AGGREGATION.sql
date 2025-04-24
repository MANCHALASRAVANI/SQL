---- AGGREGATE FUNCTIONS ----

SELECT   user_id,SUM(amount) as total_amount 
from orders 
group by user_id;

SELECT   user_id,AVG(amount) as avg_amount 
from orders
group by user_id;

---- CREATE VIEW ----
CREATE VIEW user_total_orders AS
SELECT user_id, SUM(amount) AS total_amount
FROM Orders
GROUP BY user_id;

SELECT * FROM user_total_orders;


----- INDEX ---

SELECT * FROM Orders WHERE user_id = 1;

