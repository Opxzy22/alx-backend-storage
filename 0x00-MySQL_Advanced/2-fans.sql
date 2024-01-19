-- select the origin and fans column in the table
-- calculate the sum of fans for each group of row with the same origin

SELECT origin, SUM(fans) AS nb_fans
FROM metal_bands
GROUP BY 1
ORDER BY 2 DESC;
