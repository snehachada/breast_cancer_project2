DROP TABLE IF EXISTS tumor
CREATE TABLE tumor(
	id INTEGER PRIMARY KEY,
	diagnosis CHAR,
	radius_mean FLOAT,
	texture_mean FLOAT,
	perimeter_mean FLOAT,
	area_mean FLOAT,
	smoothness_mean FLOAT,
	compactness_mean FLOAT,
	concavity_mean FLOAT,
	concave_points_mean FLOAT,
	symmetry_mean FLOAT,
	fractal_dimension_mean FLOAT,
	radius_se FLOAT,
	texture_se FLOAT,
	perimeter_se FLOAT,
	area_se FLOAT,
	smoothness_se FLOAT,
	compactness_se FLOAT,
	concavity_se FLOAT,
	concave_points_se FLOAT,
	symmetry_se FLOAT,
	fractal_dimension_se FLOAT,
	radius_worst FLOAT,
	texture_worst FLOAT,
	perimeter_worst FLOAT,
	area_worst FLOAT,
	smoothness_worst FLOAT,
	compactness_worst FLOAT,
	concavity_worst FLOAT,
	concave_points_worst FLOAT,
	symmetry_worst FLOAT,
	fractal_dimension_worst FLOAT
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