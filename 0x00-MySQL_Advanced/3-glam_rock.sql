-- select band_name and compute the lifespan by split - formed
-- if split is null substitute it with 2022
-- where all bands with Glam rock in the column "style"
SELECT band_name, (IFNULL(split, 2022) - formed) AS lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%'
ORDER BY lifespan DESC;
