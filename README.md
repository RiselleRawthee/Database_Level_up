
<!-- PROJECT LOGO -->
<br />
<div align="center">
  <img src="images/Logo.png" alt="Logo" width="80" height="80">

<h3 align="center">Safety Checker App</h3>

  <p align="center">
    //nutshell project description
  </p>
</div>

<!-- ABOUT THE PROJECT -->
## About The Project
// Add some detail about the app...

### Built With

* [MySQL](https://www.mysql.com/)

### Cloud Instance

* [AWS](https://bbd-internal-sso.awsapps.com/start#)

<!-- ERD UPLOAD -->
### Entity Relational Diagram
<div align="center">
  <img src="images/ERD%20SCA.jpeg" alt="Logo" width="75%" height="80%">
  <br>
  <a href="https://lucid.app/lucidchart/3326c5b9-fbfb-4ffe-98ad-022898f7359c/edit?invitationId=inv_c450066e-eef9-4871-a48c-836f6552484b&page=0_0#">
  View ERD on Lucid_Chart</a>
</div>

<!-- GETTING STARTED -->
## Getting Started

If you wish to test out the code and run the DB instance, please follow the instructions below

### Prerequisites

* Cloud Formation Stack Endpoint

  _If you wish to run on a cloud service_
  
  _e.g. [AWS](https://bbd-internal-sso.awsapps.com/start#)_

* Application To Run Endpoint

  _Any front-end application that allows you to connect to the DB on the cloud or to run create a local DB_

  _e.g. [Microsoft SQL Server Management Studio](https://docs.microsoft.com/en-us/sql/ssms/download-sql-servermanagement-studio-ssms?view=sql-server-ver15)_

### Running the scripts

1. Create DB: run the file to create DB and its tables
  ```sh
  SCA_DB_script.sql
  ```

2. Load on the inital table data
  ```sh
  starter_data.sql
  ```

3. Run bulk record data script
  ```sh
  secondary_bulk_insert_script.sql
  ```
4. Execute the queries 
  ```sh
  [List file names]
  ```

<!-- MEET THE TEAM -->
## Development Team

- [ ] [Amy Pegram](https://github.com/AmyPegramBBD)
- [ ] [Andrew Bodenstein](https://github.com/AndrewBB-BBD)
- [ ] [Nikita Smal](https://github.com/nikitasmal)
- [ ] [Phumzile Nkosi](https://github.com/PhumzileNkosi)
- [ ] [Riselle Rawthee](https://github.com/RiselleRawthee)
- [ ] [Sandhya I. Singh](https://github.com/ms-si-Singh)

<!-- REFERENCES -->
## References

* [The Hive](https://the-hive.bbd.co.za/)
* [Pluralsight](https://app.pluralsight.com/)
* [MySQL documentation](https://dev.mysql.com/doc/)
