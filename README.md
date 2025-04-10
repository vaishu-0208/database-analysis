# database-analysis
# Task 3: SQL for Data Analysis – Data Analyst Internship

Submitted by: Vaishnavi V

This task focuses on using SQL to extract insights and analyze data from a self-created e-commerce database. It demonstrates knowledge of SELECT queries, JOINs, GROUP BY, subqueries, aggregate functions, views, and query optimization.

---

Dataset Description

I created a simple e-commerce schema with the following tables:
- `users`: Contains user details
- `products`: List of items available for sale
- `orders`: Tracks user orders
- `order_details`: Line items for each order
- `payments`: Records payment details

Sample users include **Vaishnavi, Murali, Shree, Anupama**, and **Amit**.

---

Tools Used

- SQL Online IDE

---

SQL Concepts Demonstrated

SELECT, WHERE, ORDER BY, GROUP BY
- Filtered users by country
- Sorted names alphabetically
- Counted orders per user

JOINS (INNER, LEFT, RIGHT)
- Displayed user names with their order dates using INNER JOIN
- Used LEFT JOIN to show all users, even those without orders

Subqueries
- Found users whose spending is above average

Aggregate Functions
- Calculated total revenue
- Calculated average spending per user

Views
- Created a `user_summary` view showing total orders and revenue per user

Query Optimization
- Added indexes on `user_id` and `product_id` for faster joins
---

Learnings

- Practiced real-world SQL querying skills
- Understood data relationships using JOINs
- Learned how to optimize performance using indexes
- Gained hands-on experience creating and analyzing relational datasets

