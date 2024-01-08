/* Replace with your SQL commands */
INSERT INTO employee_schema.business_unit_master(name)
	VALUES ( 'hr'),('marketing'),('admin'),('reliability');

WITH designation_list AS (
    SELECT '{"Engineer", "Project Manager", "Lead","Architect"}'::TEXT[] designation
),
role_list AS (
    SELECT '{"Associate", "Senior", "Tech Lead"}'::TEXT[] role
)

INSERT INTO employee_schema.employee_master(
	employee_id, name, email, contact_num, designation, role)
	SELECT num, 
        'Employee ' || num as name ,
        'employee' || num || '@gmail.com',
        floor(random()*10000000000) as random_integer, 
        designation[1 + mod(num, array_length(designation, 1))],
        role[1 + mod(num, array_length(role, 1))]
	FROM designation_list,role_list , generate_series(1, 10) as num ;

With bu_id_list AS (
    SELECT '{1, 2, 3 , 4}'::INT[] bu_id
)

INSERT INTO employee_schema.bu_employee_relation( employee_id, bu_id)
   SELECT num,
    bu_id[1 + mod(num, array_length(bu_id, 1))]
   FROM bu_id_list , generate_series(1, 10) as num