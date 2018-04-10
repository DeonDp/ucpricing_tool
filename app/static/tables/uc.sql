create database myUC;
use myUC;

CREATE TABLE IF NOT EXISTS handset (
    harid int NOT NULL AUTO_INCREMENT,
    description varchar(255),
    unitcost decimal(5,2),
    supportcost decimal(5,2),
    ttype varchar(255),
    PRIMARY KEY (harid)
);

CREATE TABLE IF NOT EXISTS gateway (
    gateid int NOT NULL AUTO_INCREMENT,
    description varchar(255),
    unitcost decimal(10,2),
    supportcost decimal(10,2),
    userlimit int,
    PRIMARY KEY (gateid)
);



CREATE TABLE IF NOT EXISTS customer
(
    custid int NOT NULL AUTO_INCREMENT,
    quantity int,
    fob int,
    cif int,
    halsubtotal decimal(5,2),
    mrc decimal(5,2),
    capitalcost decimal(5,2),
    marginal decimal(5,2),
    PRIMARY KEY (custid)
);

CREATE TABLE IF NOT EXISTS licensein 
(
    lid int not null AUTO_INCREMENT,
    description varchar(255),
    mrc decimal(5,2),
    PRIMARY KEY (lid)
    
);

CREATE TABLE IF NOT EXISTS customerlicense 
(
    custid int not null,
    lid int not null,
    quantity int,
    subtotal decimal(5,2),
    PRIMARY KEY (custid,lid)
);

CREATE TABLE IF NOT EXISTS UCtoolUser
(
    uid int NOT NULL AUTO_INCREMENT,
    firstname varchar(255),
    lastname varchar(255),
    uname varchar(255),
    password varchar(255),
    PRIMARY KEY (uid)
);


INSERT INTO handset  (description, unitcost, supportcost, ttype) VALUES ("AudioCodes IP 405",47.11,2.67, "Regular");
INSERT INTO handset  (description, unitcost, supportcost, ttype) VALUES ("Polycom VVX 300",74.39,11.46, "Regular");
INSERT INTO handset  (description, unitcost, supportcost, ttype) VALUES ("Polycom VVX 310",105.12,11.46, "Regular");
INSERT INTO handset  (description, unitcost, supportcost, ttype) VALUES ("Polycom VVX 400",124.32,11.46, "Mid-Range");
INSERT INTO handset  (description, unitcost, supportcost, ttype) VALUES ("Polycom VVX 410",143.52,11.46, "Mid-Range");
INSERT INTO handset  (description, unitcost, supportcost, ttype) VALUES ("Polycom VVX 500",181.95,18.15, "Executive");
INSERT INTO handset  (description, unitcost, supportcost, ttype) VALUES ("Polycom VVX 600",229.92,18.15, "Executive");
INSERT INTO handset  (description, unitcost, supportcost, ttype) VALUES ("Polycom SoundStation IP 5000",287.52,11.46, "Conference");
INSERT INTO handset  (description, unitcost, supportcost, ttype) VALUES ("Polycom SoundStation IP 7000",684.72,11.46,"Conference");
INSERT INTO handset  (description, unitcost, supportcost, ttype) VALUES ("Polycom Plug and Play Camera",102.61,0, "Accessory");
INSERT INTO handset  (description, unitcost, supportcost, ttype) VALUES ("Polycom Expansion Module (Paper Based)",83.52,0, "Accessory");
INSERT INTO handset  (description, unitcost, supportcost, ttype) VALUES ("Polycom Expansion Module (Color)",178.98,0,"Accessory");
INSERT INTO handset  (description, unitcost, supportcost, ttype) VALUES ("Blackwire C315/ USB Corded Monoaural Headset",56.16,0.00,"Accessory");
INSERT INTO handset  (description, unitcost, supportcost, ttype) VALUES ("Blackwire C325/ USB Corded Binaural Headset",60.17,0.00,"Accessory");
INSERT INTO handset  (description, unitcost, supportcost, ttype) VALUES ("Blackwire 520 / Over the head Corded USB headset, Binaural",80.23,0.00,"Accessory");
INSERT INTO handset  (description, unitcost, supportcost, ttype) VALUES ("Blackwire 720 / Over the head Corded USB headset, Binaural",120.35,0.00,"Accessory");
INSERT INTO handset  (description, unitcost, supportcost, ttype) VALUES ("HW261N + 10' Coiled cable, QD to (2) 3. 5 MM  Stereo Jack plugs",97.87,0.00,"Accessory");

INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("MediaPack 112 (2FXS)",131.51,21.81,25);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("MediaPack 114 (4FXS)",255.48,41.23,25);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("MediaPack 118 (8FXS)",455.35,73.34,25);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("MediaPack 124 (24FXS)",998.67,101.22,25);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("MediaPack 114 (4FXO)",280.97,27.05,25);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("MediaPack 118 (8FXO)",497.06,74.92,25);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("MediaPack 114 (2FXS/2FXO)",267.49,41.71,25);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("MediaPack 118 (4FXS/4FXO)",474.56,74.13,25);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("Mediant 500 1 E1/T1",640.50,44.23,500);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("Mediant 800 60 SBC ses",3971.74,625.41,800);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("Mediant 800 1 E1/T1 + 30 SBC ses",3775.51,485.33,800);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("Mediant 800 2 E1/T1",2524.13,205.44,800);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("Mediant 1000 1 E1/T1",2712.64,371.04,1000);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("Mediant 1000 1 E1/T1 + SAS (600 users)",3527.27,365.67,800);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("Mediant 1000 2 E1/T1",3686.09,504.19,1000);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("Mediant 1000 2 E1/T1 + SAS (600 users)",4570.97,532.77,1000);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("Mediant 1000 2 E1/T1 + 30 SBC ses + 100 users survivability",5984.38,662.79,1000);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("SW/M500/MSBR/ESBC/5",247.04,27.17,500);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("SW/M500/MSBR/ESBC/10",368.80,40.57,500);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("SW/M500/MSBR/ESBC/25",732.90,80.62,500);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("SW/M500/MSBR/ESBC/30",860.54,94.66,500);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("SW/M500/MSBR/ESBC/100",2787.68,306.64,500);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("SW/M500/MSBR/ESBC/120",3260.60,358.67,500);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("SW/M500/MSBR/ESBC/250",6631.38,729.45,500);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("SW/M800/ESBC/5",279.30,28.84,800);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("SW/M800/ESBC/10",477.75,53.79,800);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("SW/M800/ESBC/20",845.25,86.66,800);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("SW/M800/ESBC/25",1029.00,111.13,800);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("SW/M800/ESBC/30",1212.75,140.70,800);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("SW/M800/ESBC/50",1837.50,197.29,800);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("SW/M800/ESBC/60",2168.25,238.87,800);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("SW/M800/ESBC/100",3601.50,403.76,800);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("SW/M800/ESBC/120",4299.75,511.14,800);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("SW/M800/ESBC/200",6982.50,838.60,800);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("SW/M800/ESBC/250",8452.50,972.44,800);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("SW/M1K/ESBC/5",314.05,34.55,1000);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("SW/M1K/ESBC/25",1154.44,126.99,1000);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("SW/M1K/ESBC/60",2401.24,264.14,1000 );
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("SW/M1K/ESBC/100",3991.15,439.03,1000);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("SW/M500/MSBR/ESBC-REG/50 (50 SIP registrations)",87.84,9.66,500);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("SW/M800/ESBC-REG/50 ( 50 SIP registrations)",73.50,14.34,800);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("SW/M1K-ESBC-REG/100 (100 SIP Registrations)",165.09,18.16,1000);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("SW/M500/SAS (up to 200 users)",276.36,32.31,500);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("SW/M800/SAS (up to 200 users)",276.36,28.28,800);
INSERT INTO gateway (description, unitcost, supportcost, userlimit) VALUES ("SW/M1KB/SAS (up to 600 users)",367.50,38.19,1000);



INSERT INTO licensein (description,mrc) VALUES ("Standard License(Analog phones)",5.95);
INSERT INTO licensein (description,mrc) VALUES ("Standard License",7.95);
INSERT INTO licensein (description,mrc) VALUES ("Business License",12.00);
INSERT INTO licensein (description,mrc) VALUES ("Enterprise License",16.00);



INSERT INTO switches (PartNumber,Name,Description,UnitListPrice) VALUES ("Enterprise License",16.00);

Part Number Name    Description Unit List Price
SG300-10MPP-K9-NA   Cisco SG300-10 port Cisco SG300-10MPP 10-port Gigabit Max PoE+ Managed Switch    $                                                                                              45.24 
SG300-28MP-K9-NA    Cisco SG300-28 port Cisco SG300-28MP 28-port Gigabit Max-PoE Managed Switch  $                                                                                            100.89 
SG300-52MP-K9-NA    Cisco SG300-52 port Cisco SG 300-52MP 52-port Gigabit Max-PoE Managed Switch     $                                                                                            186.31 
"EX2200-C-12P-2G
EX-RMK2"    Juniper EX2200-12 port  "Juniper EX2200-C compact, fanless switch with 12-port 10/100/1000BaseT (12-ports PoE+) and 2 Dual-Purpose (10/100/1000BaseT or SFP) uplink ports (optics not included)
Rack Mount Kit for EX2200-C"     $                                                                                              83.84 
"EX2200-24P-4G
EX-RMK2"    Juniper EX2200-24 port  Juniper EX 2200, 24-port 10/100/1000BaseT (24-ports PoE+) with 4 SFP uplink ports (optics not included)  $                                                                                            131.29 
"EX2200-48P-4G
EX-RMK2"    Juniper EX2200-48 port  Juniper EX 2200, 48-port 10/100/1000BaseT (48-ports PoE+) with 4 SFP uplink ports (optics not included)  $                                                                                            215.85 


