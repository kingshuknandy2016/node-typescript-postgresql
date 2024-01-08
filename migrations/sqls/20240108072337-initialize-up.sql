CREATE TABLE employee_schema."business_unit_master" (
  "bu_id" serial,
  "name" varchar(50),
  PRIMARY KEY ("bu_id")
);

CREATE TABLE employee_schema."bu_employee_relation" (
  "bu_emp_id" serial,
  "employee_id" int,
  "bu_id" int,
  PRIMARY KEY ("bu_emp_id")
);

CREATE TABLE employee_schema."employee_master" (
  "employee_id" serial,
  "name" varchar(50),
  "email" varchar(50),
  "contact_num" varchar(50),
  "designation" varchar(50),
  "role" varchar(50),
  PRIMARY KEY ("employee_id")
);