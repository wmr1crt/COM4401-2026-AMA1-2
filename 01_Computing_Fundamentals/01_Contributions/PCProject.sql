CREATE TABLE EmployeRoles (
    RoleID INT PRIMARY KEY,
    RoleName VARCHAR(50) NOT NULL,
    StaffCount INT NOT NULL,
    BudgetPerUnit DECIMAL(8,2) NOT NULL
);

CREATE TABLE WorkstationBuilds (
  BuildID INT PRIMARY KEY,
  BuildName VARCHAR(50) NOT NULL,
  RoleID INT,
  FOREIGN KEY (RoleID)
    REFERENCES EmployeRoles(RoleID)
);

  


INSERT INTO EmployeRoles VALUE (001, '3D Renderer', 2, 999999.99);
INSERT INTO WorkstationBuilds VALUE (1, '3D Renderer PC', 001);





SELECT * FROM EmployeRoles;
SELECT * FROM WorkstationBuilds;
