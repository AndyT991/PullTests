﻿
CREATE TABLE tools(
id INTEGER NOT NULL,
"name" VARCHAR(20) NOT NULL,
calibration_date VARCHAR(10),
CONSTRAINT tools_pk PRIMARY KEY(id)
);


CREATE TABLE operator(
id INTEGER NOT NULL,
"name" VARCHAR(15),
department VARCHAR(20),
CONSTRAINT operator_pk PRIMARY KEY (id)
);

CREATE TABLE pulltests(
id INTEGER NOT NULL,
tool_id INTEGER NOT NULL, 
operator_id INTEGER NOT NULL,
pull_count INTEGER NOT NULL,
pull_value INTEGER NOT NULL,
date VARCHAR(10),
CONSTRAINT pulltests_pk PRIMARY KEY (id),
CONSTRAINT pulltests_tool_id_fkey FOREIGN KEY (tool_id)
	REFERENCES tools (id) MATCH SIMPLE ON UPDATE
	NO ACTION ON DELETE NO ACTION,
CONSTRAINT pulltests_operator_id FOREIGN KEY(operator_id)
	REFERENCES operator (id) MATCH SIMPLE ON UPDATE
	NO ACTION ON DELETE NO ACTION 
);