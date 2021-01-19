Create Proc SP_LoginAdministrators 
   @Name Varchar(50),
   @parola Varchar(50)
As

     Declare @ReturnValue Int 
    IF exists (Select * From Administrators Where Name = @Name and parola = @parola)
	 Begin
	 Select @ReturnValue = 1
		Return @ReturnValue
	End
	 ELSE IF exists (Select * From Administrators Where Name = @Name)
	Begin
		Select @ReturnValue = -1
		Return @ReturnValue
	End
	ELSE
	BEGIN
  Select @ReturnValue = 0
  Return @ReturnValue
	END
Create Proc SP_InsertAdministrators 
(
  @AdminsId Int,
  @Name Varchar(50),
  @SurName Varchar(50),
  @parola Varchar(50)
)
As
Begin
Insert Into Administrators(Name, Surname, parola)
Values(@Name, @Surname, @parola)	 
End
Create Proc SP_DeleteAdministrators 
(
  @AdminsId  Int
)
As
Begin
   Delete From Administrators Where AdminsId = @AdminsId
End
Create Proc SP_GetAdministrators
(
  @Id Int
)
As
Select * From Administrators Where AdminsId = @Id
Create Proc SP_LoginLawyer
  @Name Varchar(50),
  @parola Varchar(50)
As
   Declare @ReturnValue Int 
 IF exists(Select * From Lawyer Where Name = @Name And Parola = @parola)
   Begin
		Select @ReturnValue = 1
		Return @ReturnValue
	End
	ELSE IF exists(Select * From Lawyer where Name = @Name)
	Begin
		Select @ReturnValue = -1
		Return @ReturnValue
	End
	ELSE
	BEGIN
  Select @ReturnValue = 0
  Return @ReturnValue
	END
Create Proc SP_InsertJudge
(
  @judgesId Int,
  @Name Varchar(50),
  @Surname Varchar(50),
  @parola Varchar(50),
  @email Varchar(50)
)
As
Begin
      Insert Into judge (Name, SurName, parola, email)
	  Values (@Name, @Surname, @parola, @email)
End
Create Proc SP_UpdateJudge
(
  @judgesId Int,
  @Name Varchar(50),
  @Surname Varchar(50),
  @parola Varchar(50),
  @email Varchar(50)
)
As
Begin
  Update judge 
  Set Name = @Name, SurName = @Surname, parola = @parola, email = @email
  Where judgesId = @judgesId
End
Create Proc SP_DeleteJudge
(
    @judgesId Int
)
As
Begin
   Delete From judge Where judgesId = @judgesId
End
Create Proc SP_GetJudge
(
  @Id Int
)
As
Select * From judge Where judgesId = @Id
Create Proc SP_InsertLawyer
(
  @LawyerId Int,
  @Name Varchar(50),
  @SurName Varchar(50),
  @Parola Varchar(50),
  @Branch Varchar(50),
  @email Varchar(50)
)
As
Begin
      Insert Into Lawyer (Name, SurName, parola, Branch, email)
	  Values (@Name, @Surname, @parola, @Branch, @email)
End
Create Proc SP_UpdateLawyer
(
  @LawyerId Int,
  @Name Varchar(50),
  @SurName Varchar(50),
  @Parola Varchar(50),
  @Branch Varchar(50),
  @email Varchar(50)
)
As
Begin
  Update Lawyer
  Set Name = @Name, SurName = @Surname, parola = @parola, Branch= @Branch, email = @email
  Where LawyerId = @LawyerId
End
Create Proc SP_DeleteLawyer
(
   @lawyerId Int
)
As
Begin
   Delete From Lawyer Where LawyerId = @lawyerId
End
Create Proc SP_GetLawyer
(
  @LawyerId Int
)
As
Select * From Lawyer Where LawyerId = @LawyerId
Create Proc SP_InsertCasedocument
(
   @CaseFilesId Int,
   @Issue Varchar(500)
)
As
Begin
      Insert Into Casedocument (Issue)
	  Values (@Issue)
End
Create Proc SP_UpdateCasedocument
(
  @CaseFilesId Int,
  @Issue Varchar(500)
)
As
Begin
  Update Casedocument
  Set Issue = @Issue
  Where CaseFilesId = @CaseFilesId
End
Create Proc SP_DeleteCasedocument
(
    @CaseFilesId Int
)
As
Begin
   Delete From Casedocument Where CaseFilesId = @CaseFilesId
End
Create Proc SP_GetCasedocument
(
  @Id Int
)
As
Select * From Casedocument Where CaseFilesId = @Id
Create Proc SP_InsertClaimant
(
  @ClaimantId Int,
  @Name Varchar(50),
  @Surname Varchar(50),
  @email Varchar(50)
)
As
Begin
    Insert Into Claimant (Name, Surname, email)
	Values (@Name, @Surname, @email)
End
Create Proc SP_UpdateClaimant
(
  @ClaimantId Int,
  @Name Varchar(50),
  @Surname Varchar(50),
  @email Varchar(50)
)
As
Begin
  Update Claimant
  Set Name = @Name, SurName = @Surname, email = @email
  Where ClaimantId = @ClaimantId
End
Create Proc SP_DeleteClaimant
(
  @ClaimantId Int
)
As
Begin 
   Delete From Claimant Where ClaimantId = @ClaimantId
End
Create Proc SP_GetClaimant
(
  @Id Int
)
As
Select * From Claimant Where ClaimantId = @Id
Create Proc SP_GetAccountant
(
  @Id Int
)
As
Select * From Accountant Where AccountantId = @Id
Create Proc SP_DeleteAccountant
(
  @AccountantId Int
)
As
Begin
   Delete From Accountant Where AccountantId = @AccountantId 
End
Create Proc SP_InsertAccountant
(
  @AccountantId Int,
  @Name Varchar(50),
  @Surname Varchar(50)
)
As
Begin
Insert Into Accountant(Name, Surname)
Values(@Name, @Surname)	 
End
Create Proc SP_UpdateAccountant
(
  @AccountantId Int,
  @Name Varchar(50),
  @Surname Varchar(50)
)
As
Begin
  Update Accountant
  Set   Name = @Name, Surname = @Surname 
  Where AccountantId = @AccountantId
End
Create Proc SP_GetDefendant 
(
  @Id Int
)
As
Select * From Defendant Where defendantId = @Id
Create Proc SP_DeleteDefendant 
(
  @defendantId Int
)
As
Begin
   Delete From Defendant Where defendantId = @defendantId
End
Create Proc SP_InsertDefendant 
(
  @defendantId Int,
  @Name Varchar(50),
  @Surname Varchar(50)
)
As
Begin
Insert Into Defendant(Name, Surname)
Values(@Name, @Surname)	 
End
Create Proc SP_UpdateDefendant
(
  @defendantId Int,
  @Name Varchar(50),
  @Surname Varchar(50)
)
As
Begin
  Update Defendant
  Set   Name = @Name, Surname = @Surname 
  Where defendantId = @defendantId
End
Create Proc SP_InsertWitness
(
  @WitnessId Int,
  @Name Varchar(50),
  @Surname Varchar(50)
)
As
Begin
Insert Into Witness(Name, Surname)
Values(@Name, @Surname)	 
End
Create Proc SP_GetWitness
(
  @Id Int
)
As
Select * From Witness Where WitnessId = @Id
Create Proc SP_DeleteWitness
(
  @WitnessId Int
)
As
Begin
   Delete From Witness Where WitnessId = @WitnessId
End
Create Proc SP_GetLawsuit
(
   @Id Int
)
As
Select * From Lawsuit Where LawsuitId = @Id
Create Proc SP_DeleteLawsuit
(
  @LawsuitId Int
)
As
Begin
   Delete From Lawsuit Where LawsuitId = @LawsuitId
End
Create Proc SP_InsertLawsuit
(
  @LawsuitId Int,
  @ClaimantName Varchar(50), 
  @Result Varchar(100),
  @CaseSubject Varchar(100)
)
As
Begin
      Insert Into Lawsuit(Result, CaseSubject)
	  Values (@Result, @CaseSubject)
End
Create Proc SP_UpdateLawsuit
(
  @LawsuitId Int,
  @ClaimantName Varchar(50),
  @Result Varchar(100),
  @CaseSubject Varchar(100)
)
As
Begin
  Update Lawsuit
  Set    ClaimantName = @ClaimantName,  Result = @Result, CaseSubject = @CaseSubject
  Where LawsuitId = @LawsuitId
End
Create Proc SP_GetCourt
(
  @Id Int
)
As
Select * From Court Where CourtsId = @Id
Create Proc SP_DeleteCourt
(
  @CourtsId Int
)
As
Begin
   Delete From Court Where CourtsId = @CourtsId
End
Create Proc SP_InsertCourt
(
  @judesName Varchar(50),
  @LawyerName Varchar(50), 
  @Lawsuitno Varchar(50),
  @ClaimantName Varchar(50),
  @DefandantName Varchar(50),
  @WitnessName Varchar(50),
  @CourtCause Varchar(100)
)
As
Begin
 Insert Into Court(judesName, LawyerName, Lawsuitno, ClaimantName, DefandantName, WitnessName, CourtCause)
 Values (@judesName, @LawyerName, @Lawsuitno, @ClaimantName, @DefandantName, @WitnessName, @CourtCause)
End
Create Proc SP_UpdateCourt
(
  @CourtsId int,
  @judesName Varchar(50),
  @LawyerName Varchar(50), 
  @Lawsuitno Varchar(50),
  @ClaimantName Varchar(50),
  @DefandantName Varchar(50),
  @WitnessName Varchar(50),
  @CourtCause Varchar(100)
)
As
Begin
  Update Court
  Set  judesName = @LawyerName,  Lawsuitno = @Lawsuitno,    ClaimantName =  @ClaimantName,  DefandantName = @DefandantName,  WitnessName  = @WitnessName, CourtCause = @CourtCause
  Where CourtsId = @CourtsId
End