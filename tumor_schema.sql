DROP TABLE IF EXISTS tumor
CREATE TABLE tumor(
	id INTEGER PRIMARY KEY,
	diagnosis NOT NULL CHAR,
	radius_mean NOT NULL FLOAT,
	texture_mean NOT NULL FLOAT,
	perimeter_mean NOT NULL FLOAT,
	area_mean NOT NULL FLOAT,
	smoothness_mean NOT NULL FLOAT,
	compactness_mean NOT NULL FLOAT,
	concavity_mean NOT NULL FLOAT,
	concave_points_mean NOT NULL FLOAT,
	symmetry_mean NOT NULL FLOAT,
	fractal_dimension_mean NOT NULL FLOAT,
	radius_se NOT NULL FLOAT,
	texture_se NOT NULL FLOAT,
	perimeter_se NOT NULL FLOAT,
	area_se NOT NULL FLOAT,
	smoothness_se NOT NULL FLOAT,
	compactness_se NOT NULL FLOAT,
	concavity_se NOT NULL FLOAT,
	concave_points_se NOT NULL FLOAT,
	symmetry_se NOT NULL FLOAT,
	fractal_dimension_se NOT NULL FLOAT,
	radius_worst NOT NULL FLOAT,
	texture_worst NOT NULL FLOAT,
	perimeter_worst NOT NULL FLOAT,
	area_worst NOT NULL FLOAT,
	smoothness_worst NOT NULL FLOAT,
	compactness_worst NOT NULL FLOAT,
	concavity_worst NOT NULL FLOAT,
	concave_points_worst NOT NULL FLOAT,
	symmetry_worst NOT NULL FLOAT,
	fractal_dimension_worst NOT NULL FLOAT
);


DROP TABLE IF EXISTS tumor_first_set;
CREATE TABLE tumor_first_set AS
SELECT *
FROM tumor
WHERE radius_mean BETWEEN 6.5 and 10.9;

DROP TABLE IF EXISTS tumor_second_set;
CREATE TABLE tumor_second_set AS
SELECT *
FROM tumor
WHERE radius_mean BETWEEN 10.91 and 15.3;

DROP TABLE IF EXISTS tumor_third_set;
CREATE TABLE tumor_third_set AS
SELECT *
FROM tumor
WHERE radius_mean BETWEEN 15.31 and 19.7;

DROP TABLE IF EXISTS tumor_fourth_set;
CREATE TABLE tumor_fourth_set AS
SELECT *
FROM tumor
WHERE radius_mean BETWEEN 19.71 and 24.1;

DROP TABLE IF EXISTS tumor_fifth_set;
CREATE TABLE tumor_fifth_set AS
SELECT *
FROM tumor
WHERE radius_mean BETWEEN 24.11 and 28.5;