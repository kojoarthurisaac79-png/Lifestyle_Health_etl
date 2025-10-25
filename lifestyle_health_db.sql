USE lifestyle_health_db;
SHOW COLUMNS FROM lifestyle_health_db;

ALTER TABLE lifestyle_health_db
ADD COLUMN id INT NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;

SELECT * FROM lifestyle_health_db LIMIT 10;

SELECT * FROM lifestyle_health_db WHERE id=1 AND age=61;

SELECT DISTINCT profession FROM lifestyle_health_db;

SELECT age, bmi, health_risk FROM lifestyle_health_db;

SELECT COUNT(*) AS total_records FROM lifestyle_health_db;

SELECT * FROM lifestyle_health_db WHERE smoking = 'Yes';

SELECT * FROM lifestyle_health_db WHERE bmi > 25;

SELECT * FROM lifestyle_health_db WHERE married = 'Yes' AND alcohol = 'Yes';

SELECT COUNT(*) AS high_risk_count FROM lifestyle_health_db WHERE health_risk = 'High';

SELECT * FROM lifestyle_health_db ORDER BY bmi DESC;

SELECT AVG(sleep) AS avg_sleep FROM lifestyle_health_db;

SELECT MAX(bmi) AS max_bmi, MIN(bmi) AS min_bmi FROM lifestyle_health_db;

SELECT health_risk, COUNT(*) AS total FROM lifestyle_health_db GROUP BY health_risk;

SELECT profession, AVG(bmi) AS avg_bmi FROM lifestyle_health_db GROUP BY profession;

SELECT COUNT(*) AS high_risk_smokers 
FROM lifestyle_health_db 
WHERE smoking = 'Yes' AND health_risk = 'High';

SELECT * FROM lifestyle_health_db WHERE sleep < 5 AND bmi > 35;

SELECT sugar_intake, COUNT(*) AS count FROM lifestyle_health_db GROUP BY sugar_intake;

SELECT AVG(age) AS avg_age_non_smokers FROM lifestyle_health_db WHERE smoking = 'No';

SELECT * FROM lifestyle_health_db ORDER BY bmi DESC LIMIT 5;

SELECT profession, COUNT(*) AS count 
FROM lifestyle_health_db 
GROUP BY profession 
ORDER BY count DESC 
LIMIT 3;

SELECT id,married, health_risk, AVG(bmi) AS avg_bmi
FROM lifestyle_health_db
GROUP BY id, married, health_risk LIMIT 5;

SELECT 
  (COUNT(CASE WHEN exercise = 'Regular' THEN 1 END) / COUNT(*)) * 100 AS percent_regular_exercise
FROM lifestyle_health_db;

SELECT profession, AVG(bmi) AS avg_bmi
FROM lifestyle_health_db
GROUP BY profession
ORDER BY avg_bmi DESC
LIMIT 3;

SELECT * FROM lifestyle_health_db
WHERE smoking = 'Yes' OR alcohol = 'Yes' OR sugar_intake = 'High';

SELECT health_risk, AVG(sleep) AS avg_sleep
FROM lifestyle_health_db
GROUP BY health_risk;

SELECT * FROM lifestyle_health_db WHERE health_risk = 'Low' AND exercise = 'None';

CREATE VIEW profession_summary AS
SELECT profession, AVG(bmi) AS avg_bmi, AVG(sleep) AS avg_sleep
FROM lifestyle_health_db
GROUP BY profession;

SELECT * FROM profession_summary;

SELECT * FROM lifestyle_health_db
WHERE bmi > (SELECT AVG(bmi) FROM lifestyle_health_db);

SELECT age, AVG(bmi) AS avg_bmi
FROM lifestyle_health_db
GROUP BY age
ORDER BY age;


DELETE FROM lifestyle_health_db WHERE sleep IS NULL AND bmi IS NULL;








