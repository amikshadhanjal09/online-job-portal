JOBCONNECT - REBUILT FUNCTIONAL JAVA SWING JOB PORTAL
==================================================

RUNNING ON MAC
1. Extract the ZIP completely.
2. Open the JobConnect folder.
3. Right-click Run-Mac.command and choose Open, or run it in Terminal.

RUNNING ON WINDOWS
1. Extract the ZIP completely.
2. Double-click Run-Windows.bat.

Requires Java JDK 17+ and internet on the first run (the launch scripts
will download SQLite JDBC and SLF4J driver files into the lib folder).
The application stores changes in the included jobconnect.db file.

FIRST PAGE
- Login
- Create Account (Candidate or Recruiter)

CANDIDATE FEATURES
- Browse jobs and search by job title, company, or location
- View full job descriptions
- Apply to a job (prevents duplicate applications)
- View application statuses
- Withdraw submitted applications
- Edit profile name and password

RECRUITER FEATURES
- Post jobs
- View, edit, and delete own jobs
- View applicants and their names/email addresses
- Change application status (Pending, Shortlisted, Selected, Rejected)
- Edit profile name and password

BOTH
- Role-specific dashboards and live totals
- Logout

DEMO DATA INCLUDED IN jobconnect.db
4 candidates, 2 recruiters, 4 job postings, 6 applications.

DEMO CANDIDATE LOGIN
Email: aarav.candidate@jobconnect.demo
Password: demo123
Account Type: Candidate

DEMO RECRUITER LOGIN
Email: rohan.recruiter@jobconnect.demo
Password: demo123
Account Type: Recruiter

Additional sample accounts (all password demo123):
Candidates:
  priya.candidate@jobconnect.demo
  kabir.candidate@jobconnect.demo
  ananya.candidate@jobconnect.demo
Recruiters:
  neha.recruiter@jobconnect.demo

Project files:
- JobConnect.java : one-file Java source code
- jobconnect.db : populated SQLite database
- Run-Mac.command / Run-Windows.bat : startup scripts

College demo note: Passwords are stored as plaintext for simplicity. This is
not suitable for production use or real user credentials.
