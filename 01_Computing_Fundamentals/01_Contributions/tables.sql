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
  "https://xidax.com/pages/configurator-x-6?cfg=X6-0ACM105HC102ZX126RJ1268L1269310CTQ109X810A2F601XN126QQ10C1G1031U10CXK102FD1-T01I8S-6J"),
  (4,"3D Visualisation PC",
  "https://uk.buildcores.com/builds/oxD7YeLQJ?share=true"),
  (3,"??","Architect/CAD Designer"),
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
INSERT INTO Recommendations(RoleID,Justification,Approved,Notes)
Values(1,"This build is built with reliability and cost efficiency in mind. 
It's powered by the 6 core AMD Ryzen 5 5600G as it has integrated Radeon graphics, 
removing the cost and power draw of a separate graphics card while still being  able to handle multitasking and video calls with ease. 
Supported by 8GB of XIDAX RAM and a NVMe 2.0 SSD the system will be able to multitask across office applications, spreadsheets and web software seamlessly. 
The ASUS Prime B550 provides a platform of stability with built in network card allowing connecting to the network be easy wired or not. 
The 80 PLUS Gold power supply ensures running costs are kept down while also providing surge protection to keep files safe. finally the combination CPU cooler, 
XIDAX case fans and the CiT Silent case as a collective will keep the internal temperatures low and the noise whisper quiet during meetings.",0,"add notes"),
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
Finally a cheep smart-lookig Corsair case was chosen with 2 extra Arctic fans for a 3-in-2-out air flow configuration to keep the build cool anf quiet.",0,"???"),
(3,"N/A",0,"??"),
(2,"???",0,"???");

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

Values(1,"RAM","XIDAX Ultra 8GB","DDR4 3200MHz",63.29),

(1,"CPU","AMD Ryzen 5600G","AM4 socket, 6 Core, 12 Threads, 3.6GHz/4.2GHz, also has iGPU capabilities",84.00),

(1,"GPU","Will use the CPU","N/a",0.00),

(1,"STORAGE","XIDAX NVMe SSD","1TB M.2",129.98),

(1,"Motherboard","ASUS Prime B550-Plus WiFi","AM4 socket, built in wireless adapter",108.99),

(1,"Case","CiT Silent ES Low Noise ATX Case","Four sounds dampening plates",40.47),

(1,"Power Supply","XIDAX 80PLUS GOLD Power Supply","600W",54.98),

(1,"Fan","XIDAX Standard Fans","10,000 hour guarantee",21.49),

(1,"CPU Cooler","Cooler Master Hyper 212 Spectrum V3","AM4 Socket, 190W",35.24),



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

(3,"Case Fan",darkFlash INF34 ARGB PWM","3X 120mm Black",38.42),

(4,"????","???","????",0.00);

select * from BuildItems;
