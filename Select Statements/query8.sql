/*
https://www.hackerrank.com/challenges/binary-search-tree-1/problem?isFullScreen=true

You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.

Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node.

*/

SELECT n, 
       CASE 
           WHEN p IS NULL THEN 'Root'   -- If `p` (parent) is NULL, it's the root node
           WHEN n IN (SELECT p FROM bst) THEN 'Inner'  -- If `n` appears as a parent in `bst`, it's an inner node
           ELSE 'Leaf'   -- If `n` is not a parent and not the root, it's a leaf node
       END 
FROM bst
ORDER BY n;
