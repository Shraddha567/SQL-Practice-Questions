-- 🔹 Question 1

-- You are given a table called Employees

-- employee_id | employee_name | department | salary | status
-- 1 | Amit | IT | 80000 | Active  
-- 2 | Neha | HR | 40000 | Inactive  
-- 3 | Rahul | IT | 60000 | Active  
-- 4 | Priya | Finance | 50000 | Active  
-- 5 | Karan | HR | 70000 | Active  
-- 👉 Task:

-- Write a query to retrieve all employees who:

-- Belong to the IT department AND salary > 70000
-- OR are Active in HR department
-- 👉 Output columns:

-- employee_id, employee_name, department, salary, status

-- 🔹 Question 2

-- You are given a table called Orders

-- order_id | customer_name | order_amount | payment_status | country
-- 1 | John | 12000 | Paid | USA  
-- 2 | Alice | 5000 | Pending | India  
-- 3 | Bob | 20000 | Paid | USA  
-- 4 | Charlie | 7000 | Pending | UK  
-- 5 | David | 15000 | Paid | India  
-- 👉 Task:

-- Retrieve all orders where:

-- Order amount > 10000 AND country = 'USA'
-- OR payment_status = 'Pending' AND country = 'India'
-- 👉 Output columns:

-- order_id, customer_name, order_amount, payment_status, country

-- 🔹 Question 3

-- You are given a table called Students

-- student_id | student_name | stream | marks | result
-- 1 | Asha | Science | 85 | Pass  
-- 2 | Rohan | Commerce | 65 | Pass  
-- 3 | Meera | Science | 45 | Fail  
-- 4 | Arjun | Arts | 70 | Pass  
-- 5 | Kavya | Commerce | 90 | Pass  
-- 👉 Task:

-- Retrieve students who:

-- Belong to Science stream AND marks > 50
-- OR are Pass in Commerce stream
-- 👉 Output columns:

-- student_id, student_name, stream, marks, result

-- 🔹 Question 4

-- You are given a table called Flights

-- flight_id | airline | price | destination | status
-- 1 | Indigo | 6000 | Delhi | On Time  
-- 2 | Air India | 12000 | Mumbai | Delayed  
-- 3 | SpiceJet | 8000 | Delhi | On Time  
-- 4 | Vistara | 15000 | Bangalore | On Time  
-- 5 | Indigo | 5000 | Mumbai | Cancelled  
-- 👉 Task:

-- Retrieve flights where:

-- Destination = Delhi AND price > 7000
-- OR airline = Indigo AND status = 'Cancelled'
-- 👉 Output columns:

-- flight_id, airline, price, destination, status

-- Q1: Employees filter
SELECT *
FROM Employees
WHERE 
(department = 'IT' AND salary > 70000)
OR (department = 'HR' AND status = 'Active');

-- Q2: Orders filter
SELECT *
FROM Orders
WHERE 
(country = 'USA' AND order_amount > 10000)
OR (payment_status = 'Pending' AND country = 'India');

-- Q3: Students filter
SELECT *
FROM Students 
WHERE 
(stream = 'Science' AND marks > 50)
OR (stream = 'Commerce' AND result = 'Pass');

-- Q4: Flights filter
SELECT *
FROM Flights
WHERE 
(destination = 'Delhi' AND price > 7000)
OR (airline = 'Indigo' AND status = 'Cancelled');