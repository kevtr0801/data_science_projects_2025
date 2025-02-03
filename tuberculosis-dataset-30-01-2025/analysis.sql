CREATE TABLE staging.tuberculosis(
country VARCHAR(50),
    year INT,
    tb_incidence_rate FLOAT,
    population INT,
    hiv_prevalence FLOAT,
    treatment_success_rate FLOAT,
    mortality_rate FLOAT,
    urban_population_percentage FLOAT,
    smoking_rate FLOAT,
    alcohol_consumption FLOAT,
    healthcare_expenditure_per_capita FLOAT,
    primary_healthcare_access FLOAT,
    age_group VARCHAR(20),
    gender VARCHAR(10),
    hiv_coinfection_rate FLOAT,
    bcg_vaccination_coverage FLOAT,
    multidrug_resistance_rate FLOAT,
    unemployment_rate FLOAT,
    gdp_per_capita FLOAT,
    life_expectancy FLOAT,
    tb_screening_coverage FLOAT,
    rural_population_percentage FLOAT
);


SELECT * FROM staging.tuberculosis
LIMIT 10;

--- Summary stats
-- avg. incident rate
SELECT country, t.year, 
    ROUND(CAST(AVG(tb_incidence_rate) AS NUMERIC), 4) AS avg_tb_incidence_rate
FROM staging.tuberculosis t
GROUP BY country, t.year
ORDER BY t.year;

-- urban vs rural impact
SELECT 
    AVG(urban_population_percentage) AS avg_urban_pop, 
    AVG(rural_population_percentage) AS avg_rural_pop, 
    AVG(tb_incidence_rate) AS avg_tb_rate
FROM staging.tuberculosis;


-- high risk countries
-- List countries with high TB incidence and low treatment success rates
SELECT 
    country, 
    year, 
    tb_incidence_rate, 
    treatment_success_rate
FROM staging.tuberculosis
WHERE tb_incidence_rate > 100 AND treatment_success_rate < 80
ORDER BY tb_incidence_rate DESC, treatment_success_rate ASC;


SELECT 
    country, 
    year, 
    tb_incidence_rate, 
    treatment_success_rate, 
    mortality_rate, 
    hiv_prevalence
FROM staging.tuberculosis
WHERE tb_incidence_rate > 100 
  AND treatment_success_rate < 80 
  AND mortality_rate > 15
ORDER BY tb_incidence_rate DESC, treatment_success_rate ASC;
