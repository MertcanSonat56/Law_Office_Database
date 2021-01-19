Create DataBase Lawofficeinformationsystem
Go
Use Lawofficeinformationsystem
Go 
Create Table Administrators 
(
  AdminsId Int Identity,
  Name Varchar(50)  Not Null,
  SurName Varchar(50)  Not Null,
  parola Varchar(50) Not Null,
  Constraint PK_Admins_Id Primary Key(AdminsId)
)
 
Go
Create Table judge
(
  judgesId Int Identity,
  Name Varchar(50) Not Null,
  SurName Varchar(50) Not Null,
  parola Varchar(50) Not Null,
  email Varchar(50) Not Null
  Constraint PK_judges_Id Primary Key(judgesId)
)
 
Go
Create Table Lawyer
(
  LawyerId Int Identity,
  Name Varchar(50)   Not Null,
  SurName Varchar(50)  Not Null,
  Parola Varchar(50) Not Null,
  Branch Varchar(50) Not Null,
  email Varchar(50) Not Null
  Constraint PK_Lawyer_Id Primary Key(LawyerId)
)

Go
Create Table Customer
(
  CustomersId Int Identity,
  Name Varchar(50) Not Null,
  Surname Varchar(50) Not Null,
  Constraint PK_Customers_Id Primary Key(CustomersId)
)

Go
Create Table Casedocument
(
  CaseFilesId Int Identity,
  Issue Varchar(500) Not Null,
  Constraint PK_CaseFiles_Id Primary Key(CaseFilesId)
)
  
Go
Create Table Claimant
(
 ClaimantId Int Identity,
 Name Varchar(50) Not Null,
 Surname Varchar(50) Not Null,
 email Varchar(50) Not Null
 Constraint PK_Claimant_Id Primary Key(ClaimantId)
)

Go
Create Table Accountant
(
  AccountantId Int Identity,
  Name Varchar(50) Not Null,
  Surname Varchar(50) Not Null,
  Constraint PK_Accountant_Id Primary Key(AccountantId) 
)

Go
Create Table Defendant 
(
   defendantId Int Identity,
   Name Varchar(50) Not Null,
   Surname Varchar(50) Not Null,
   Constraint PK_defendant_Id Primary Key(defendantId) 
)
 
Go
Create Table Witness
(
    WitnessId Int Identity,
	Name Varchar(50),
	Surname Varchar(50),
	Constraint PK_Witness_Id Primary Key(WitnessId)
)

Go
Create Table Lawsuit
(
  LawsuitId Int Identity,
  ClaimantId Int,
  CaseFilesId Int,
  ClaimantName Varchar(50),
  Result Varchar(100) Not Null,
  CaseSubject Varchar(100) Not Null,
  Constraint PK_Lawsuit_Id Primary Key(LawsuitId),
  Constraint FK_Lawsuit_ClaimantId Foreign Key(ClaimantId) References Claimant(ClaimantId),
  Constraint FK_Lawsuit_CaseFilesId Foreign Key(CaseFilesId) References Casedocument(CaseFilesId)
)
 
Go
Create Table Users
(
   UserId Int Identity,
   AdminsId Int,
   CustomersId Int,
   LawyerId Int,
   judgesId Int,
   AccountantId Int,
   Constraint PK_User_No Primary Key(UserId),
   Constraint FK_Users_AdminsId Foreign Key(AdminsId) References Administrators(AdminsId),
   Constraint FK_Users_CustomersId Foreign Key(CustomersId) References Customer(CustomersId),
   Constraint FK_Users_LawyerId Foreign Key(LawyerId) References Lawyer(LawyerId),
   Constraint FK_Users_judgesId Foreign Key(judgesId) References judge(judgesId),
   Constraint FK_Users_AccountantId Foreign Key(AccountantId) References Accountant(AccountantId)
)
Go
  Create Table Info 
(
   InfoId Int Identity,
   Name Varchar(100) Not Null,
   UserId Int,
   Constraint PK_Info_Id Primary Key(InfoId),
   Constraint FK_Info_UserId Foreign Key(UserId) References Users(UserId)
)
Go
Create Table Court
(
  CourtsId Int Identity,
  judesName Varchar(50) Not Null,
  LawyerName Varchar(50) Not Null,
  Lawsuitno Varchar(50) Not Null,
  ClaimantName Varchar(50) Not Null,
  DefandantName Varchar(50) Not Null,
  WitnessName Varchar(50) Not Null,
  CourtCause Varchar(100) Not Null,
  StartTime DateTime,
  EndTime DateTime,
  judgesId Int,
  LawyerId Int,
  LawsuitId Int,
  ClaimantId Int,
  defendantId Int,
  WitnessId Int,
  Constraint PK_Courts_Id Primary Key(CourtsId),
  Constraint FK_Court_LawyerId Foreign Key(LawyerId) References Lawyer(LawyerId),
  Constraint FK_Court_judgesId Foreign Key(judgesId) References judge(judgesId),
  Constraint FK_Court_LawsuitId Foreign Key(LawsuitId) References Lawsuit(LawsuitId),
  Constraint FK_Court_ClaimantId Foreign Key(ClaimantId) References Claimant(ClaimantId),
  Constraint FK_Court_defendantId Foreign Key(defendantId) References  Defendant(defendantId),
  Constraint FK_Court_WitnessId Foreign Key(WitnessId) References  Witness(WitnessId)
)

Go  