
-- SQRT(SQUARE(X1-X2) + SQUARE(Y1-Y2)) AS Length: This is where the calculation of the length between two points (X1, Y1) and (X2, Y2) happens. Here's how it works:
-- 
-- SQUARE(X1-X2): This calculates the square of the difference between the X coordinates of the two points.
-- 
-- SQUARE(Y1-Y2): This calculates the square of the difference between the Y coordinates of the two points.
-- 
-- SQUARE(X1-X2) + SQUARE(Y1-Y2): This calculates the sum of the squares of the differences in both X and Y coordinates.
-- 
-- SQRT(...): Finally, the square root of the sum of squares is calculated, resulting in the length of the line between the two points.

SELECT Id,
 SQRT(SQUARE(X1-X2) + SQUARE(Y1-Y2))
 AS Length
 FROM Lines