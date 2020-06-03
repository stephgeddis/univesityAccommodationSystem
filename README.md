# univesityAccommodationSystem
SQL- Based Accommodation System

Project Brief

Queen’s Accommodation (QA) enables new employees joining Queen’s University Belfast to settle in
quickly by providing them high-quality accommodation in the vicinity of the university. QA also
arranges for accommodation for guest visitors to the university who come for short periods of stay at
Belfast. QA owns several buildings, each of which have a distinct address including post code. There
are several apartments within each of those buildings. Each apartment in a given building is assigned
an apartment number that is unique within that building (but not necessarily across different
buildings). QA wants to keep track of the number of bedrooms, the number of bathrooms and the total
area (in square feet) for each apartment. The system manages information for different kinds of
people. As of now, QA manages two disjoint categories of people: tenants and employees. For each
person, the system would maintain emergency contact information, specifically, the name and contact
number of a person to be contacted. Each person is identified by a unique ID, and has information
consisting of their first name and last name.
For each tenant, it is necessary to record their bank account number, since rent needs to be collected
every month. For each employee, the application will keep track of their monthly salary. Employees
may be managers or technicians (or both). Each manager has an office located in one of the
apartments owned by QA. Each manager manages at least one apartment, and each apartment must
have a manager. For each technician, the system would keep track of the skills they have; which may
be one or more of the following: “carpentry”, “plumbing”, “electrical”.
To rent an apartment from QA, tenants must sign a lease agreement. A least agreement is a formal
contract, identified uniquely by an ID, signed by one or more tenants (as may be the case with
roommates) to lease an apartment. It includes the start date and expected duration of occupation (in
terms of number of months), as well as the monthly rent charged for the apartment. The lease
agreement is also signed by any one of the managers at QA. The system keeps track of all (expired
and live) lease agreements signed so far. Similarly, even if a tenant ceases to be one, her details are
not purged from the system in anticipation of future custom.

Using Project 

Open any SQL development kit such as mySQL or mySQLDevelopment
Run the scripts in the following order:
1. createdb45 
2. insertdb45

After this you can choose to either run the queries to return data via the 
querydb45 sql files.

Or clean the database entries by running the cleandb45 to drop tables and data.

You can also add your own custom data by manually entering the data.
