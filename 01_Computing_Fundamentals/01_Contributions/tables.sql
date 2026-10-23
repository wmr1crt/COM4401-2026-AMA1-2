-- 1. Create EmployeeRoles
CREATE TABLE EmployeeRoles (
    RoleID INT PRIMARY KEY AUTO_INCREMENT,
    RoleName VARCHAR(50) NOT NULL,
    StaffCount INT,
    Tasks VARCHAR(255),
    BudgetPerUnit DECIMAL(8, 2)
);
INSERT INTO EmployeeRoles (RoleName,StaffCount,Tasks,BudgetPerUnit)
Values(
"Administrative Assistant", 3,
"Email, documents, spreadsheets, web systems, online meetings, and basic customer records.",
950.00),
("Project Manager", 2,
"Reports, meetings, project planning, reviewing drawings, dashboards, and client communication.",
1300.00),
("Architect/CAD Designer", 5,
"CAD drawings, 2D drafting, 3D modelling, large design files, multiple monitors, and design reviews.",
2500.00),
("3D Visualisation Specialist", 2,
"Rendering, 3D visualisation, large models, high-resolution textures, media output, and client visual presentations.",
3750.00);
select * from EmployeeRoles;

-- 2. Create WorkstationBuilds
CREATE TABLE WorkstationBuilds (
    BuildID INT PRIMARY KEY AUTO_INCREMENT,
    RoleID INT NOT NULL,
    BuildName VARCHAR(100) NOT NULL,
    Source VARCHAR(255),
    FOREIGN KEY (RoleID) REFERENCES EmployeeRoles(RoleID)
);
INSERT INTO WorkstationBuilds(RoleID,BuildName,Source)
Values(1,"Administrative Assistant",
  "https://uk.buildcores.com/builds/1DjIz9hFc?share=true "),
  (4,"3D Visualisation PC",
  "https://uk.buildcores.com/builds/oxD7YeLQJ?share=true"),
  (3,"Architect/CAD Designer","https://uk.buildcores.com/setup/-QwKHRg5f"),
  (2,"https://www.buildcores.com/setup/BNCp2NL8s","Project Manager");

  select * from WorkstationBuilds;

-- 3. Create Recommendations
CREATE TABLE Recommendations (
    RecommendationID INT PRIMARY KEY AUTO_INCREMENT,
    RoleID INT NOT NULL,
    Justification TEXT,
    Approved BOOLEAN,
    Notes TEXT,
    FOREIGN KEY (RoleID) REFERENCES EmployeeRoles(RoleID)
);
INSERT INTO Recommendations(RoleID,Justification,Approved)
Values(1,"This build is built with reliability and cost efficiency in mind.  
It's powered by the 6 core AMD Ryzen 5 5600G as it has 6 cores to hande multi tasking with ease.  
Supported by 32gb of DDR4 ram and a NVMe 2.0 SSD the system will be able to multitask across office applications, spreadsheets and web software seamlessly.  
The ASUS Prime B550 provides a platform of stability with built in network card allowing connecting to the network be easy wired or not.  
The 80 PLUS platinum supply ensures running costs are kept down while also providing surge protection to keep files safe. finally the combination CPU cooler,  
ARTIC 412 case fans and the Lian Li case as a collective will keep the internal temperatures low and the noise whisper quiet during meetings.",0), 
 
(4,"This build focuses on Graphical and Computational preformance.
The 20 core Intel i7 14700KF should have enough parallel prosesing power for rending programs and multi tasking.
32gb of ddr5 RAM shoudl be sufficent for such multitasking, and memory intensive programs.
The MSI PRO Z790-P Motherboard has plenty of IO for further storage expansion, fast 2.5GB networkig for internet and possible NAS file transfers will be faster!
The main budget cost went into the RTX 5080 withh 16GB of vram, as 3D rendering is the focus, this GPU should provide adiquet horsepower to such workloads.
A basic heatsink cooler is used for reliability and cost.
1 small m.2 is use for the operatinng OS esuring fast load times,
the second larger m.2 contains active project files and computer programs,
and finaly the slower SATA drive is used for arcived work/lesser used files/programs.
A reliable COrsair RM750x power supply was chosen for its 100w headroom.
Finally a cheep smart-lookig Corsair case was chosen with 2 extra Arctic fans for a 3-in-2-out air flow configuration to keep the build cool anf quiet.",0),
    
(3,"This build focuses on performance and efficiency.
    Powered by the AMD Ryzen 7 9700x, this CPU allows for the performance to work at its best capacity when creating, navigating and editing drawings.
    Supported by 32GB DDR5 RAM, it will be able to utilise a multitude of different softwares and collaborative applications simultaneously. Additionally, 
    it has a 1TB NVMe SSD which is essential in a professional Design environment. 
    The Thermalright Peerless Assassin 120 SE allows for the CPU to run at maximum efficiency due to the essential cooling that it will need.
    The NVIDIA RTX 4070 12GB provides smooth performance and easy use of navigation. It will also be able to handle detailed models and rendering tasks. 
    Additionally to this, its also cost effective.",0),
    
(2,"This build is built to be cost effective and reliable enough to run softwares.
    The Glass side panel lets the user to see through and look at the components and offers space for standard motherboards and full sized graphics cards.
    This Case is also affordable at 19.98.
    The Intel Core Ultra 6 offers strong perforamnce and handles demanding games and applications,it also allows you to run games alongside applications such as 
    discord and recording software.
    This strong processing perforamnce provides modern cpu feature and supports DDR5 memory.
    The cost is 509.26 which is cost efficient for the component.
    The Motherboard ASRock Steel Legend B860 DDR5 supports compatible Intel Core Ultra desktop processors.
    The expansion options offer connectivity for storage,graphics,USB devices and other peripherals.
    At 149.99 it also helps keep motherboard spending under control and allow the budget to go to other components such as the GPU
    The GPU is one of the most important components in this build as it renders the images,textures,lighting and effects you see in performance.
    It is  Gigabyte GeForce RTX 5070 WINDFORCE OC SFF GDDR&.
    The 23GB of GDDR7 VRAM provides a dedicated graphics memory for gameing textures and demanding graphics workloadds.
    The NVIDIA software support is usefull for steaming and video editing with other GPU accelerated applications.
    It is also the most expensive component of this build at 799.99
     The RAM Crucial Pro Black 32GB DDR5 is also an important component as it stores the data the CPU needs to access quickly whilst applications are running,
    the two 16B memory gives me 32GB in total.
    This specific 2 RAMS makes it easier to multitask such as running games,browsers,voicechat,and backround applications simultanously.
    The 309.00 pricetage is very expensive for a 32GB DDR5 kit for ordinary market conditions but is still good enough to make this build work.
    The CPU cooler is a Thermalright Assassin 120mm Silver is a good component needed as this cooler is suitable for reasonable cooling without excessive noise
    It is also at an affordable price at only 17.90 which helps keep costs down.
    The storage is a Westernn Digital Green SN350 m.2 SDD 2 TB which is an important component needed for storing many files.
    The 2TB capacity allows me to install numerous modern softwares without constantly deleting old oneds for space and allows more than enough space for
    storing files and videos
    The SSD is also a better component than the HDD because it enables faster loading times compared to traditional hard drives.
    It also has a simple installation and sits directly on the motherboard.
    The 246.00 price tag is also a good price for a 2TB stoage device.
    The power supply is a Themal Smart Certified 700W is also a good component as it provides a 700W capacity which allows a reasonable amount of rated 
    power for a desktop pc with an RTX 5070
    It is also bidget friendly at 54.99 and keeps the inital build cost down.
    This quality PSU helps ensure reliable operation when the CPU and GPU are under heavy load.
    The Case fans are darkFlash INF34 ARGB PWM 2x120mm Black and gives the user additional options for directing airflow through the case.
    The compatible PWM fans can adjust their speed based on temperature,balancing cooling perforamnce and noise.
    It can also help bring cool air into the case and remove warm air.",0);

select * from Recommendations;

-- 4. Create BuildItems
CREATE TABLE BuildItems (
    ItemID INT PRIMARY KEY AUTO_INCREMENT,
    BuildID INT NOT NULL,
    HardwareCategory VARCHAR(50),
    ItemName VARCHAR(100) NOT NULL,
    Specification VARCHAR(150),
    Cost DECIMAL(8, 2),
    FOREIGN KEY (BuildID) REFERENCES WorkstationBuilds(BuildID)    
);
INSERT INTO BuildItems(BuildID,HardwareCategory,ItemName,Specification,Cost)

Values(1,"RAM","Corsair Vengeance LPX 32GB (2x16GB) DDR4 3200 CL16 Black","DDR4 3200MHz",199.99), 
(1,"CPU","AMD Ryzen 5600G","AM4 socket, 6 Core, 12 Threads, 3.6GHz/4.2GHz, also has iGPU capabilities",116.99), 
(1,"GPU","ASRock Intel Arc B570 Challenger 10GB GDDR6 OC","N/a",269.99), 
(1,"STORAGE","ADATA XPG GAMMIX S50 Lite 2TB M.2 SSD PCIe 4.0 NVMe","2TB M.2",158.99), 
(1,"Motherboard","ASUS Prime B550-Plus WiFi","AM4 socket, built in wireless adapter",43.97), 
(1,"Case","Lian Li A3-mATX Micro ATX Mini Tower Black / Brown Wood Mesh Side Panel","Four sounds dampening plates",19.98), 
(1,"Power Supply","Xbe quiet! Straight Power 12 Black 750W Fully Modular 80+ Platinum","750W",19.99), 
(1,"Fan","ARCTIC P12 120mm Black","10,000 hour guarantee",2.99), 
(1,"CPU Cooler","AMD Wraith Stealth Socket AM4","AM4 Socket, 190W",35.24), 
    
(2,"RAM","Corsair Vengeance RGB 32GB","DDR5 6000MHz",449.99),
(2,"CPU","Intel Core i7 14700KFIntel Core i7 14700KF","20 Core, 28 Thread,3.4/5.5GHz",324.97),
(2,"GPU","MSI GeForce RTX 5080 16G GAMING TRIO OC","16GB vRAM",1399.95),
(2,"STORAGE","Kingston KC3000 512GB SSD","M.2 PCIe 4.0 NVMe",124.99),
(2,"STORAGE","Kingston KC3000 2TB SSD","M.2 PCIe 4.0 NVMe",305.96),
(2,"STORAGE","SanDisk SSD PLUS 2TB SSD","2.5inch SATA 6.0 Gb/s",263.19),
(2,"Power Supply","Corsair RM750x"," 750W Fully Modular 80+ Gold Certified",134.99),
(2,"CPU Cooler","ARCTIC Freezer 36","Heatsink",22.99),
(2,"Case","Corsair 3200D RS","Black",59.99),
(2,"Fans","ARCTIC P14 Pro","2x , 140mm Black",13.96),

(3,"case","BGears Mid Tower Black Glass Side Panel","B-voguish ATX",19.98),
(3,"CPU","Intel Core Ultra 6","285KF",509.26),
(3,"Motherboard","ASRock Steel Legend B860","DDR5 ATX",149.99),
(3,"GPU","Windforce OC SFF GeForce RTX 5070","12GB GDDR7",799.99),
(3,"RAM","Crucial Pro Black","2X16GB",309.99),
(3,"CPU Cooler","Theramalright Assassin","120mm Silver",17.90),
(3,"Storage","Western Digital Green SN350","2TB SSD m.2",246.00),
(3,"Power Supply","Thermal Smart Certified","700W",54.99),
(3,"Case Fan","darkFlash INF34 ARGB PWM","3X 120mm Black",38.42),
(4,"????","???","????",0.00);

select * from BuildItems;


-- Query 2: Just the names and budgets
SELECT RoleName, BudgetPerUnit FROM EmployeeRoles;


-- Query 3: The higher-budget roles
SELECT RoleName, BudgetPerUnit 
FROM EmployeeRoles 
WHERE BudgetPerUnit > 1000;


-- Query 4: Roles by team size
SELECT RoleName, StaffCount 
FROM EmployeeRoles 
ORDER BY StaffCount DESC;


-- Query 5: Find one build's items
SELECT * FROM BuildItems 
WHERE BuildID = 1;

-- Query 6: Count the items in a build
SELECT COUNT(*) AS TotalItems 
FROM BuildItems 
WHERE BuildID = 1;


-- Query 7: Total cost of one build
SELECT SUM(Cost) AS TotalHardwareCost 
FROM BuildItems 
WHERE BuildID = 1;


-- Query 8: Cost of every build
SELECT BuildID, SUM(Cost) AS TotalCost 
FROM BuildItems 
GROUP BY BuildID 
ORDER BY TotalCost DESC;


-- Query 9: Which role is each build for?
SELECT WorkstationBuilds.BuildID, WorkstationBuilds.BuildName, EmployeeRoles.RoleName 
FROM WorkstationBuilds 
JOIN EmployeeRoles ON WorkstationBuilds.RoleID = EmployeeRoles.RoleID;


-- Query 10: Items with their build and role
SELECT BuildItems.ItemName, WorkstationBuilds.BuildName, EmployeeRoles.RoleName 
FROM BuildItems
JOIN WorkstationBuilds ON BuildItems.BuildID = WorkstationBuilds.BuildID
JOIN EmployeeRoles ON WorkstationBuilds.RoleID = EmployeeRoles.RoleID;


-- Query 11: Spend per role (Challenge)
SELECT EmployeeRoles.RoleName, SUM(BuildItems.Cost) AS TotalHardwareCost 
FROM EmployeeRoles
JOIN WorkstationBuilds ON EmployeeRoles.RoleID = WorkstationBuilds.RoleID
JOIN BuildItems ON WorkstationBuilds.BuildID = BuildItems.BuildID
GROUP BY EmployeeRoles.RoleName;
