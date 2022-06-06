USE Myproject_2;

CREATE VIEW TRAIN_DATA AS
SELECT train_details.TRAIN_NO,train_details.TRAIN_NAME,
train_dept_date.DEPT_DATE,train_dept_time.UP_STATION,
train_dept_time.DEPT_TIME,train_arvl_time.DOWN_STATION,
train_arvl_time.ARVL_TIME
FROM myproject_2.train_details LEFT JOIN  myproject_2.train_dept_date
ON train_details.TRAIN_NO=train_dept_date.TRAIN_NO
LEFT JOIN myproject_2.train_dept_time
ON train_details.TRAIN_NO=train_dept_time.TRAIN_NO
LEFT JOIN myproject_2.train_arvl_time
ON train_details.TRAIN_NO=train_arvl_time.TRAIN_NO;

SELECT * FROM myproject_2.TRAIN_DATA;



CREATE VIEW DETAILS_FLIGHT AS
SELECT flight_dept_date.FLIGHT_ID,flight_journey_hr.FLIGHT_SERVICES_PROVIDER,
flight_dept_date.FLIGHT_DEPT_DATE,flight_journey_hr.UP_STATION,flight_dept_time.DEPT_TIME,
flight_journey_hr.DOWN_STATION,flight_arvl_time.ARVL_TIME,flight_journey_hr.JOURNEY_HR
FROM 
myproject_2.flight_dept_date LEFT JOIN myproject_2.flight_journey_hr
ON flight_dept_date.FLIGHT_ID=flight_journey_hr.FLIGHT_ID
LEFT JOIN myproject_2.flight_dept_time
ON flight_dept_date.FLIGHT_ID=flight_dept_time.FLIGHT_ID
LEFT JOIN myproject_2.flight_arvl_time
ON flight_dept_date.FLIGHT_ID=flight_arvl_time.FLIGHT_ID;

SELECT * FROM  myproject_2.DETAILS_FLIGHT;
