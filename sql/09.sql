/*
 * Count the number of movies that contain each type of special feature.
 * Order the results alphabetically be the special_feature.
 * HINT:
 * Use `unnest(special_features)` in a subquery.
 */

SELECT unnest(special_features) AS special_features, count(*)
FROM film
GROUP BY unnest(special_features)
ORDER BY unnest(special_features) ASC;
