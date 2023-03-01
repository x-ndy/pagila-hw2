/*
 * Management wants to advertise to actors,
 * and needs a list of all actors who are not also customers.
 *
 * Assume that if an entry in the customer and actor table share a first_name and last_name,
 * then they represent the same person.
 * Then select all actors who are not also customers.
 *
 * HINT:
 * This can be solved using either a LEFT JOIN or the NOT IN operator.
 */

SELECT a.last_name, a.first_name
FROM actor a
LEFT JOIN customer c ON a.last_name = c.last_name AND a.first_name = c.first_name
WHERE c.customer_id IS NULL
ORDER BY a.last_name, a.first_name;              
