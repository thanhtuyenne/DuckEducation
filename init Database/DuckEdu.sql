CREATE TABLE dbo.tb_Login(
username NVARCHAR(50) PRIMARY KEY,
[password] NVARCHAR(50) NOT NULL
);

CREATE TABLE dbo.tb_TypeUser(
ID INT PRIMARY KEY,
[name] NVARCHAR(50) NOT NULL
);

CREATE TABLE dbo.tb_User(
ID NVARCHAR(32) PRIMARY KEY,
[id_typeuser] INT NOT NULL,
CONSTRAINT fk_typeUser FOREIGN KEY (id_typeuser)
REFERENCES tb_TypeUser (ID)
);

CREATE TABLE dbo.tb_Admin(
ID_Admin NVARCHAR(32) PRIMARY KEY,
[name] NVARCHAR(50) NOT NULL,
dob DATE NOT NULL,
[address] NVARCHAR(50) NOT NULL,
email NVARCHAR(50) NOT NULL,
CONSTRAINT fk_ID_Admin FOREIGN KEY (ID_Admin)
REFERENCES dbo.tb_User (ID)
);

CREATE TABLE dbo.tb_Subject(
ID NVARCHAR(10) PRIMARY KEY,
[name] NVARCHAR(50) NOT NULL,
maxState INT NOT NULL,
img_certificate nvarchar(200) not NULL

);
CREATE TABLE dbo.tb_Teacher(
ID_Teacher NVARCHAR(32) PRIMARY KEY,
ID_Subject NVARCHAR(10) NULL,
[name] NVARCHAR(50) NOT NULL,
dob DATE NOT NULL,
[address] NVARCHAR(50) NOT NULL,
email NVARCHAR(50) NOT NULL,
CONSTRAINT fk_ID_Teacher FOREIGN KEY (ID_Teacher)
REFERENCES dbo.tb_User (ID),
CONSTRAINT fk_ID_Subject FOREIGN KEY (ID_Subject)
REFERENCES dbo.tb_Subject (ID)
);

CREATE TABLE dbo.tb_Student(
ID_Student NVARCHAR(32) PRIMARY KEY,
[name] NVARCHAR(50) NOT NULL,
dob DATE NOT NULL,
[address] NVARCHAR(50) NOT NULL,
email NVARCHAR(50) NOT NULL,
CONSTRAINT fk_ID_Student FOREIGN KEY (ID_Student)
REFERENCES dbo.tb_User (ID)
);

CREATE TABLE dbo.tb_Supporter(
ID_Supporter NVARCHAR(32) PRIMARY KEY,
[name] NVARCHAR(50) NOT NULL,
dob DATE NOT NULL,
[address] NVARCHAR(50) NOT NULL,
email NVARCHAR(50) NOT NULL,
CONSTRAINT fk_ID_Supporter FOREIGN KEY (ID_Supporter)
REFERENCES dbo.tb_User (ID)
);

CREATE TABLE dbo.tb_Question(
ID INT PRIMARY KEY,
ID_Supject NVARCHAR(10) NOT NULL,
question NVARCHAR(500) NOT NULL,
[state] INT NOT NULL,
CONSTRAINT fk_ID_Subject_Question FOREIGN KEY (ID_Supject)
REFERENCES dbo.tb_Subject (ID)
);

CREATE TABLE dbo.tb_Answer(
ID_Question INT NOT NULL,
answer NVARCHAR(500) NOT NULL,
isAnswer BIT NOT NULL,
CONSTRAINT fk_ID_Question FOREIGN KEY (ID_Question)
REFERENCES dbo.tb_Question (ID)
);

CREATE TABLE dbo.tb_Subject_Profile(
ID_Student NVARCHAR(32) NOT NULL,
ID_Supject NVARCHAR(10) NOT NULL,
[state] INT NOT NULL,
finish BIT NOT NULL,
PRIMARY KEY(ID_Student,ID_Supject)
);

INSERT into tb_TypeUser VALUES('0','admin')
INSERT into tb_TypeUser VALUES('1','supporter')
INSERT into tb_TypeUser VALUES('2','teacher')
INSERT into tb_TypeUser VALUES('3','student')