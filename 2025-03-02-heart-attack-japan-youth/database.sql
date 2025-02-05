/* Create and export table */ 

CREATE TABLE japan_heart_attack (
    age INTEGER NOT NULL,
    gender VARCHAR(10) CHECK (gender IN ('Male', 'Female')) NOT NULL,
    region VARCHAR(50) CHECK (region IN ('Urban', 'Rural')) NOT NULL,
    smoking_history VARCHAR(3) CHECK (smoking_history IN ('Yes', 'No')) NOT NULL,
    diabetes_history VARCHAR(3) CHECK (diabetes_history IN ('Yes', 'No')) NOT NULL,
    hypertension_history VARCHAR(3) CHECK (hypertension_history IN ('Yes', 'No')) NOT NULL,
    cholesterol_level FLOAT NOT NULL,
    physical_activity VARCHAR(10) CHECK (physical_activity IN ('Low', 'Moderate', 'High')) NOT NULL,
    diet_quality VARCHAR(10) CHECK (diet_quality IN ('Poor', 'Average', 'Good')) NOT NULL,
    alcohol_consumption VARCHAR(10) CHECK (alcohol_consumption IN ('Low', 'Moderate', 'High','None')) NOT NULL,
    stress_levels FLOAT NOT NULL,
    bmi FLOAT NOT NULL,
    heart_rate FLOAT NOT NULL,
    systolic_bp FLOAT NOT NULL,
    diastolic_bp FLOAT NOT NULL,
    family_history VARCHAR(3) CHECK (family_history IN ('Yes', 'No')) NOT NULL,
    heart_attack_occurrence VARCHAR(3) CHECK (heart_attack_occurrence IN ('Yes', 'No')) NOT NULL
);

-- DROP TABLE japan_heart_attack;

SELECT * FROM japan_heart_attack;