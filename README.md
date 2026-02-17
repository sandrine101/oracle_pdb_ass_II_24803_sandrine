# oracle_pdb_ass_II_24803_sandrine1. Assignment Overview

This assignment focuses on practical implementation of Oracle Multitenant Architecture. The main objective was to demonstrate hands-on skills in managing Pluggable Databases (PDBs) within a Container Database (CDB) environment.

The assignment consists of:

Creation of a new Pluggable Database (PDB)

User creation inside the PDB

Creation and deletion of a temporary PDB

Configuration and access of Oracle Enterprise Manager (OEM)

Professional documentation using GitHub

This practical work strengthens foundational Oracle database administration skills required for future PL/SQL development.

🔹 2. Oracle Environment Used

Oracle Database Version: Oracle Database 19c

Architecture: Multitenant (CDB + PDB)

Administrative Access: SYSDBA

Tools Used: SQL*Plus / SQL Developer

Web Interface: Oracle Enterprise Manager (EM Express)

🔹 3. Task 1 – Create a New Pluggable Database
Objective

To create and configure a new Pluggable Database following the exact naming conventions provided.

Work Performed

Connected to the Container Database (CDB) as SYSDBA.

Created a new PDB using the required naming format.

Opened the PDB to make it operational.

Saved the PDB state for automatic opening after restart.

Switched from the root container (CDB$ROOT) to the created PDB.

Created a new user inside the PDB.

Granted required privileges for future PL/SQL usage.

Verified successful PDB creation and user creation.

Outcome

The PDB was successfully created and opened.
The user was successfully created inside the PDB and is ready for future laboratory sessions.

🔹 4. Task 2 – Create and Delete a Temporary PDB
Objective

To demonstrate complete lifecycle management of a Pluggable Database.

Work Performed

Created a temporary PDB using the specified naming convention.

Verified its existence using database commands.

Confirmed it was accessible and properly created.

Closed the PDB before deletion.

Dropped the PDB including its data files.

Verified that the PDB was completely removed.

Outcome

The temporary PDB was successfully created and permanently deleted without leaving residual data files.

This demonstrates proper database administration and cleanup procedures.

🔹 5. Task 3 – Oracle Enterprise Manager (OEM)
Objective

To configure and access Oracle Enterprise Manager for monitoring and administration.

Work Performed

Accessed Oracle Enterprise Manager through a web browser.

Logged in using administrative credentials.

Verified that the created PDB appeared in the dashboard.

Confirmed that the database environment was correctly configured.

Ensured the created user was visible.

Outcome

Oracle Enterprise Manager was successfully accessed and used to monitor the Oracle environment.

🔹 6. Challenges Faced and Solutions
1. PDB Not Opening Automatically

After creating the PDB, it did not open automatically after restart.

Solution:
Saved the PDB state to ensure it remains open after database restart.

2. User Creation Error

Initially attempted to create the user in the root container (CDB$ROOT).

Solution:
Switched the session to the correct PDB before creating the user.

3. Unable to Drop Temporary PDB

Oracle returned an error when trying to delete the PDB.

Solution:
Closed the PDB first before performing the drop operation including data files.

4. OEM Access Issue

Oracle Enterprise Manager was not accessible at first attempt.

Solution:
Verified that the database was running and confirmed the correct EM Express URL and port.

🔹 7. Screenshots

The screenshots/ folder contains:

PDB creation command and output

PDB open state verification

User creation inside the PDB

Temporary PDB creation

Temporary PDB deletion

OEM dashboard

All screenshots clearly show the commands executed and the results.

🔹 8. Integrity Statement

I confirm that this assignment was completed individually.
All database operations were executed by me in my Oracle environment.
All screenshots provided in this repository are original and reflect my own work.
