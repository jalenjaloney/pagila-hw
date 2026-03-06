/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

SELECT
    s.first_name,
    s.last_name,
    SUM(p.amount) AS "sum"
FROM
    staff s
JOIN
    payment p ON s.staff_id = p.staff_id
WHERE
    EXTRACT(MONTH FROM p.payment_date) = 1
    AND EXTRACT(YEAR FROM p.payment_date) = 2020
GROUP BY
    s.first_name,
    s.last_name;
