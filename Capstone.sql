SELECT * FROM donation_data;
SELECT * FROM donor_data;

-- How much is the total donation?
SELECT CONCAT('$', SUM(donation)) AS "Total Donation" 
FROM donation_data;

-- What is the total donation by gender?
SELECT gender, SUM(donation) AS "Total Donation"
FROM donation_data 
GROUP BY gender;

-- Show the total donation and number of donations by gender
SELECT gender, SUM(donation) AS "Total Donation", 
COUNT(donation) AS "Numbers of Donation"
FROM donation_data 
GROUP BY gender;

-- Total donation made by frequency of donation
SELECT d.donation_frequency, COUNT(c.donation) AS "Numbers of Donation" 
FROM donation_data c
JOIN donor_data d ON c.id=d.id
GROUP BY d.donation_frequency;

-- Total donation and number of donation by Job field
SELECT job_field, SUM(donation) AS "Total Donation",
COUNT(donation) AS "Numbers of Donation"
FROM donation_data 
GROUP BY job_field;

-- Total donation and number of donations above $200
SELECT 
    SUM(donation) AS "Total Donation", 
    COUNT(*) AS "Number of Donations Above $200"
FROM 
    donation_data
WHERE 
    donation > 200;

-- Total donation and number of donations below $200
SELECT 
    SUM(donation) AS "Total Donation", 
    COUNT(*) AS "Number of Donations Above $200"
FROM 
    donation_data
WHERE 
    donation < 200;
	
--Which top 10 states contributes the highest donations
SELECT state, SUM(donation) AS "Total Donation"
FROM donation_data 
GROUP BY state
ORDER BY "Total Donation" DESC
LIMIT 10;

-- Which top 10 states contributes the least donations
SELECT state, SUM(donation) AS "Total Donation"
FROM donation_data 
GROUP BY state
ORDER BY "Total Donation"
LIMIT 10;

-- What are the top 10 cars driven by the highest donors
SELECT d.first_name, d.last_name, d.donation, c.car
FROM donation_data d
JOIN donor_data c ON d.id=c.id
ORDER BY donation DESC
LIMIT 10;