USE [DuckEdu]
GO
/****** Object:  StoredProcedure [dbo].[pro_addAnswer]    Script Date: 29/10/2021 1:24:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_addAnswer]
    @ID_Question INT,
    @answer NVARCHAR(500),
    @isAnswer BIT
AS
BEGIN
    BEGIN
        BEGIN TRANSACTION;
        BEGIN TRY
            IF (NOT EXISTS (SELECT * FROM dbo.tb_Question WHERE ID = @ID_Question))
                RAISERROR('Question not exist!', 11, -1);
            IF (@isAnswer = 0)
                IF (NOT EXISTS
                (
                    SELECT *
                    FROM dbo.tb_Answer
                    WHERE ID_Question = @ID_Question
                          AND isAnswer = 1
                )
                   )
                    RAISERROR('Please insert your answer first!', 11, -1);
            INSERT INTO dbo.tb_Answer
            (
                ID_Question,
                answer,
                isAnswer
            )
            VALUES
            (   @ID_Question, -- ID_Question - int
                @answer,      -- answer - nvarchar(500)
                @isAnswer     -- isAnswer - bit
                );
            COMMIT TRANSACTION;
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION;
            DECLARE @Message VARCHAR(MAX) = ERROR_MESSAGE();
            RAISERROR(@Message, 11, -1) WITH LOG;
        END CATCH;
    END;
END;
--------------------------------------------------------------------------------------------------------
USE [DuckEdu]
GO
/****** Object:  StoredProcedure [dbo].[pro_addQuestion]    Script Date: 29/10/2021 1:26:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_addQuestion]
    @ID INT,
    @ID_subject NVARCHAR(10),
    @question NVARCHAR(500),
    @state INT
AS
BEGIN


    BEGIN
        BEGIN TRANSACTION;
        BEGIN TRY
            IF (NOT EXISTS (SELECT * FROM dbo.tb_Subject WHERE ID = @ID_subject))
                RAISERROR('ID_subject not exist!', 11, -1) WITH LOG;
            IF (@state >
               (
                   SELECT TOP (1)
                          maxState
                   FROM dbo.tb_Subject
                   WHERE ID = 'IOT'
                   ORDER BY ID ASC
               )
               )
                RAISERROR('state is over max state of Subject!', 11, -1) WITH LOG;
            INSERT INTO dbo.tb_Question
            (
                ID,
                ID_Supject,
                question,
                [state]
            )
            VALUES
            (   @ID,         -- ID - int
                @ID_subject, -- ID_Supject - nvarchar(10)
                @question,   -- question - nvarchar(500)
                @state       -- state - int
                );

            COMMIT TRANSACTION;
        END TRY
        BEGIN CATCH
            ROLLBACK TRANSACTION;
            DECLARE @Message VARCHAR(MAX) = ERROR_MESSAGE();
            RAISERROR(@Message, 11, -1) WITH LOG;
        END CATCH;
    END;
END;
---------------------------------------------------------------------------------------------------------
USE [DuckEdu]
GO
/****** Object:  StoredProcedure [dbo].[pro_AddSubject]    Script Date: 29/10/2021 1:27:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[pro_AddSubject]
    @ID NVARCHAR(10),
    @name NVARCHAR(50),
    @maxState INT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY

	    IF (@ID = '' OR @name = '' )
        BEGIN
            RAISERROR('Data cannt empty', 11, -1) WITH LOG;
        END;
        IF (EXISTS (SELECT * FROM dbo.tb_Subject WHERE ID = @ID))
        BEGIN
            RAISERROR('ID has already existed', 11, -1) WITH LOG;
        END;
        IF (EXISTS (SELECT * FROM dbo.tb_Subject WHERE name = @name))
        BEGIN
            RAISERROR('name has already existed', 11, -1) WITH LOG;
        END;
        IF (@maxState < 3)
        BEGIN
            RAISERROR('maxState must greater or equal 3', 11, -1) WITH LOG;
        END;

        BEGIN
            INSERT INTO dbo.tb_Subject
            VALUES
            (@ID, @name, @maxState);
        END;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        DECLARE @Message VARCHAR(MAX) = ERROR_MESSAGE();
        RAISERROR(@Message, 11, -1) WITH LOG;
    END CATCH;

END;
----------------------------------------------------------------------------------------------------
USE [DuckEdu]
GO
/****** Object:  StoredProcedure [dbo].[pro_addUser]    Script Date: 29/10/2021 1:28:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[pro_addUser]
    @ID NVARCHAR(32),
    @Username NVARCHAR(50),
    @Password NVARCHAR(50),
    @name NVARCHAR(50),
    @dob DATE,
    @address NVARCHAR(50),
    @email NVARCHAR(50),
    @typeUser INT,
    @ID_Subject NVARCHAR(10)
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
		IF(EXISTS(SELECT * FROM dbo.tb_Login WHERE username = @Username))
			BEGIN
				RAISERROR('Username has already existed',11,-1) WITH LOG 
			END
        IF (
               @Username = ''
               OR @Password = ''
               OR @name = ''
               OR @address = ''
               OR @email = ''
               OR @dob > GETDATE()
           )
        BEGIN
            RAISERROR('Data cannt empty', 11, -1) WITH LOG;
        END;
        BEGIN
				insert into dbo.tb_User
				values
				(@ID,@typeUser)
				 INSERT INTO dbo.tb_Login
                VALUES
                (@Username, @Password);

            IF (@typeUser = 0)
            BEGIN
                INSERT INTO dbo.tb_Admin
                VALUES
                (@ID, @name, @dob, @address, @email);
            END;
            ELSE IF (@typeUser = 1)
            BEGIN
                INSERT INTO dbo.tb_Supporter
                VALUES
                (@ID, @name, @dob, @address, @email);
            END;
            ELSE IF (@typeUser = 2)
            BEGIN
                INSERT INTO dbo.tb_Teacher
                VALUES
                (@ID, @ID_Subject, @name, @dob, @address, @email);
            END;
            ELSE IF (@typeUser = 3)
            BEGIN
                INSERT INTO dbo.tb_Student
                VALUES
                (@ID, @name, @dob, @address, @email);
            END;

            ELSE
            BEGIN
                RAISERROR('TypeUser must be from 0 - 3', 11, -1) WITH LOG;
            END;
        END;
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        DECLARE @Message VARCHAR(MAX) = ERROR_MESSAGE();
        RAISERROR(@Message, 11, -1) WITH LOG;
    END CATCH;
END;
-------------------------------------------------------------------------------------------------------
USE [DuckEdu]
GO
/****** Object:  StoredProcedure [dbo].[pro_Login]    Script Date: 29/10/2021 1:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[pro_Login] (@hashValue  VARCHAR(50))
As 
Begin 
SELECT * FROM tb_User 
Where ID = @hashValue
END;
-------------------------------------------------------------------------------------------------------------
USE [DuckEdu]
GO
/****** Object:  StoredProcedure [dbo].[Pro_getName]    Script Date: 29/10/2021 1:29:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Pro_getName]
@ID NVARCHAR(32)
AS
BEGIN
SELECT a.name FROM dbo.tb_Admin AS a WHERE a.ID_Admin=@ID
END
-----------------------------------------------------------------------------------
CREATE PROCEDURE dbo.pro_getEmail
 @ID NVARCHAR(32)
as
BEGIN
	declare @ID_type as int = (select top(1) id_typeuser from tb_User where ID=@ID);
	If (@ID_type = 0)
	begin
		select email from tb_Admin where ID_Admin=@ID; 
	end
	else If (@ID_type = 1)
	begin
		select email from tb_Teacher where ID_Teacher=@ID; 
	end
	else If (@ID_type = 2)
	begin
		select email from tb_Student where ID_Student=@ID; 
	end
	else
	RAISERROR('Username not exist!', 11, -1) WITH LOG;
END