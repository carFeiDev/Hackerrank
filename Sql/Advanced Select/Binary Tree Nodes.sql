-- You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.
-- ______________________________
-- |  Column     | Type         |    
-- |_____________|______________|
-- |    N        | Integer      |
-- |    P        | Integer      |
-- |_____________|______________|

-- Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

-- Root: If node is root node.
-- Leaf: If node is leaf node.
-- Inner: If node is neither root nor leaf node.


SELECT N, CASE WHEN P IS NULL THEN 'Root' 
WHEN(SELECT COUNT(*) FROM BST WHERE P = T.N) > 0 THEN 'Inner'
ELSE 'Leaf'
END
FROM BST T
ORDER BY N;
