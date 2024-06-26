SELECT TOP 3 e.EmployeeID, e.FirstName
FROM Employees AS e
LEFT JOIN EmployeesProjects ep ON e.EmployeeID = ep.EmployeeID
WHERE ep.EmployeeID IS NULL
ORDER BY e.EmployeeID 

-- The idea is to use a LEFT JOIN to find employees who are not linked to 
-- any projects and then filter out the employees who have projects assigned.
-- If an employee does not have any projects, there will be no matching 

-- A LEFT JOIN returns all records from the left table (in this case, employees), and the matched records from the right table (employee_projects). 
	-- If there is no match, the result is NULL from the right table.

-- Filters out the employees who have associated projects. 
-- The LEFT JOIN ensures that if there is no matching project for an employee, ep.EmployeeID will be NULL.