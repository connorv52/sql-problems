-- Title: Recyclable and Low Fat Products
-- Problem ID: 1757
-- Difficulty: Easy
-- Source: https://leetcode.com/problems/recyclable-and-low-fat-products/
-- Author: Connor Valle
-- 
-- Schema:
-- Products(product_id INT, low_fats ENUM('Y', 'N'), recyclable ENUM('Y', 'N'))
--
-- Write a SQL query to find the ids of products that are both low fat and recyclable.
--
-- Example:
-- Input:
-- +-------------+----------+------------+
-- | product_id  | low_fats | recyclable |
-- +-------------+----------+------------+
-- | 0           | Y        | N          |
-- | 1           | Y        | Y          |
-- | 2           | N        | Y          |
-- | 3           | Y        | Y          |
-- | 4           | N        | N          |
-- +-------------+----------+------------+
-- Output:
-- +-------------+
-- | product_id  |
-- +-------------+
-- | 1           |
-- | 3           |
-- +-------------+

-- ✅ Solution:
SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y';
