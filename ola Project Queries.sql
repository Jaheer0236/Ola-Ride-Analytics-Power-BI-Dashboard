
CREATE VIEW Successful_bookings AS
SELECT *FROM bookings
WHERE Booking_status="Success";

CREATE VIEW Average_distance_by_Customers AS
SELECT Vehicle_Type,AVG(Ride_Distance) AS
Avg_distance FROM bookings
GROUP BY Vehicle_Type;
select *from Average_distance_by_Customers;

SELECT Vehicle_Type ,Pickup_Location,Drop_location,SUM(Booking_Value) AS
 Avg_Value FROM bookings
 GROUP BY Vehicle_Type ,Pickup_Location,Drop_location;
 
 CREATE VIEW Canceled_rides_by_Customer AS
 SELECT COUNT(*)FROM bookings
WHERE Booking_Status="Canceled by Customer";

SELECT *FROM Canceled_rides_by_Customer;
CREATE VIEW Top5_Customers AS
SELECT Customer_id ,COUNT(Booking_id) AS total_rides
FROM Bookings
GROUP BY Customer_id 
ORDER BY total_rides DESC limit 10;

CREATE VIEW Rides_Canceled_by_Customers_dueto_P_C_issues AS
 SELECT COUNT(*) FROM bookings
 WHERE Canceled_Rides_by_Driver="Personal & Car related issue";
 
 
 CREATE VIEW max_min_ratings_vehicles AS
SELECT  Vehicle_Type ,MAX(Customer_Rating) AS max_rating,
MIN(Customer_Rating) AS min_rating 
FROM bookings
GROUP BY Vehicle_Type;

SELECT *FROM bookings
WHERE Payment_Method="UPI";

CREATE VIEW Avg_Customer_Ratings AS
SELECT Vehicle_type,AVG(Customer_Rating)
FROM bookings
GROUP BY Vehicle_Type;

SELECT SUM(Booking_Value)
FROM bookings
WHERE Incomplete_Rides="No";
 
 SELECT  Booking_ID, Incomplete_Rides_Reason 
 FROM bookings
 WHERE Incomplete_Rides="Yes";
 USE ola;
