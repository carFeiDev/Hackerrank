SELECT C.Company_code, C.Founder,
    COUNT(DISTINCT L.Lead_manager_code),
    COUNT(DISTINCT S.Senior_manager_code),
    COUNT(DISTINCT M.Manager_code),
    COUNT(DISTINCT E.Employee_code)
FROM Company AS C
INNER JOIN Lead_Manager AS L ON C.Company_code = L.Company_code
INNER JOIN Senior_Manager AS S ON L.Lead_manager_code = S.Lead_manager_code
INNER JOIN Manager AS M ON M.Senior_manager_code = S.Senior_manager_code
INNER JOIN Employee AS E ON E.Manager_code = M.Manager_code
GROUP BY C.Company_code, C.Founder
ORDER BY C.Company_code;