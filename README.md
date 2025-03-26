# sql-challenge

PROMPT
It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

## Background

I used [QuickDBD](quickdatabasediagrams.com) to draw up a quick [schema](EmployeeSQL/quickdbd-diagram.png) of the data, exported it to create six tables in PostgreSQL, and imported six corresponding CSVs. Ran into many problems at first until we remembered to remove the serial id column during the imports.

## Resources
- S/O to Ethan Donoho 