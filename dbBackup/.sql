--------------------------------------------------------
--  ������ ������ - ������-8��-14-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table GAMES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."GAMES" 
   (	"USERNUM" NUMBER, 
	"CHARACTER_NUM" NUMBER, 
	"GAME_RANK" NUMBER, 
	"DAMAGE_TO_PLAYER" NUMBER, 
	"DAMAGE_FROM_PLAYER" NUMBER, 
	"TEAM_RECOVER" NUMBER, 
	"MMR_GAIN" NUMBER, 
	"PLAYER_KILL" NUMBER, 
	"PLAYER_DEATHS" NUMBER, 
	"PLAYER_ASSISTANT" NUMBER, 
	"TEAM_KILL" NUMBER, 
	"CC_TIME_TO_PLAYER" NUMBER, 
	"GAME_ID" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."USERS" 
   (	"ID" VARCHAR2(20 BYTE), 
	"PWD" VARCHAR2(20 BYTE), 
	"NICKNAME" VARCHAR2(20 BYTE), 
	"UPDATETIME" VARCHAR2(20 BYTE), 
	"USERNUM" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.GAMES
SET DEFINE OFF;
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,7,5123,9865,328,-24,0,1,3,4,14.000001,37838091);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,16,4,13379,15864,2920,-9,3,3,1,4,15.450001,37837332);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,16,7,10097,13056,2684,-18,3,2,1,4,6.566667,37836616);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,16,5,5970,6583,2260,-15,0,1,2,3,5.4833336,37836049);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,16,5,9581,8318,2934,-14,0,3,2,3,4.9500003,37835319);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,16,1,19998,10993,1799,96,10,1,2,13,9.666667,37563047);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,16,5,3299,7057,4633,-25,0,2,0,0,4.4500003,37562512);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,16,3,28241,15576,3340,43,5,2,3,8,21.233334,37561529);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,17,2,22621,23780,0,22,3,4,1,6,0,37560560);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,8,2283,5139,232,-29,0,1,1,1,2.8000002,37560299);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,45,4,6960,21701,1900,-10,0,3,3,3,17.266668,37293855);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,4,4729,10077,0,-14,1,2,1,2,6.516667,37293161);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,8,1130,3640,0,-30,0,1,0,0,2.7,37292841);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,45,6,3298,5434,228,-7,1,1,2,3,7.1333337,37292473);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,16,7,3948,3968,714,-26,0,1,0,1,4.9333334,37292105);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,45,1,11760,30445,2473,95,1,2,6,10,20.800001,37291100);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,17,5,24952,5424,0,-6,3,1,3,6,0,37290309);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,45,1,11758,13997,2645,120,6,0,6,15,10.533334,37289261);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,45,4,9112,19945,1032,25,2,1,6,8,12.950001,37288608);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,45,3,6802,11656,0,3,0,1,3,3,7.05,37288152);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,16,7,6743,6574,2554,-24,1,3,2,3,5.216667,37838806);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,7,526,3960,90,-30,0,1,0,0,1.4666667,37838485);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,45,5,7981,13181,1562,1,0,2,5,7,13.800001,37287716);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,45,3,9589,23228,513,32,4,1,4,9,13.816668,37268674);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,1,14795,37645,713,88,2,3,6,9,28.96667,37267187);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,5,10672,20751,524,-5,0,2,3,3,14.816668,37228715);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,45,1,5974,14155,2222,94,1,1,8,11,17.466667,37227430);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,5,10109,12896,95,-8,3,2,2,5,17.883335,37226446);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,30,8,1077,5029,0,-22,0,1,3,3,27.066668,37225928);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,16,2,10074,4530,4544,43,3,1,3,6,6.016667,37224673);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,17,1,40479,15600,0,162,8,1,7,16,0,37223147);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,4,5822,18817,358,-2,1,3,2,4,16.35,37186089);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,63,4,8931,19164,0,-10,1,5,1,2,7.0000005,37185020);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,60,6,3047,6975,0,-16,0,3,2,2,2.7500002,37184169);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,17,3,19960,11953,0,12,1,3,0,1,0,37182753);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,8,1723,3944,341,-25,0,1,0,1,3.016667,37182263);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,4,8998,20072,580,22,2,2,3,7,15.900001,37157997);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,17,2,19793,4281,0,63,3,1,5,11,0,37156778);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,8,2900,6945,97,-25,0,2,0,1,3.7000003,37156339);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,23,3,18384,18246,395,30,2,1,5,7,8.450001,37155184);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,5,12174,21460,801,6,3,3,4,8,19.233334,37095891);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,17,6,21964,11108,0,-12,1,4,2,3,0,37094938);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,5,10178,18611,496,28,3,1,8,11,29.71667,37094120);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,6,3403,6058,234,-19,0,1,0,1,9.883334,37055471);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,23,2,14888,15376,1316,134,6,3,3,10,14.950001,37054616);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,26,4,15457,16870,0,-7,0,4,2,3,1.5500001,37053789);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,29,6,6236,14052,514,-4,1,2,3,5,19.133335,37053256);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,17,5,18700,13817,0,15,3,2,4,7,0,37052538);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,4,9112,15182,133,-50,0,2,1,1,17.383335,37051919);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,26,8,2107,2385,0,-17,0,1,0,0,0.5166667,37051611);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,7,11864,23006,465,-13,0,2,3,5,34.56667,37049224);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,4,8527,16125,413,-9,1,1,1,2,17.016668,37048551);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,17,7,7103,8595,0,-11,1,2,3,5,0,37047801);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,7,1760,5040,213,-25,1,1,0,1,6.5833335,37047371);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,26,7,1312,2182,0,-22,0,1,0,3,0,37047063);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,29,7,3876,16842,754,-22,0,4,1,2,21.733334,37046625);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,17,1,26280,8382,0,160,5,1,5,10,0,37029862);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,1,17119,27436,1660,155,2,2,10,18,30.350002,37028558);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,45,4,7500,20208,2007,-8,0,5,1,2,16.866667,37027502);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,17,3,18276,8363,0,2,1,2,0,1,0,37026233);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,6,4332,8091,50,-3,1,2,3,6,17.433334,36996059);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,17,4,18556,14320,0,43,2,2,6,9,0,36995203);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,4,2,18155,22257,2674,43,1,4,3,6,10.450001,36994152);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,3,14029,31491,1571,61,0,3,10,10,30.133335,36993121);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,23,4,6897,6142,274,27,5,2,2,9,7.6166673,36992390);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,4,4,11986,22106,1259,29,1,2,4,7,12.716667,36991245);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,5,6,6825,6873,0,-8,2,2,0,2,4.4333334,36990574);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,29,6,3488,7655,786,4,1,1,3,4,14.016667,36989921);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,71,7,689,3602,0,-22,0,1,0,0,1.6000001,36989507);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,1,7,1389,4220,0,-20,0,1,0,1,0,36989022);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,4,1,5097,10853,563,70,1,1,5,7,3.9500003,36988042);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,4,2,13194,22339,0,111,2,1,12,14,12.883334,36986822);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,29,3,3240,7695,462,15,0,1,4,4,20.416668,36985894);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,45,3,8142,20040,1613,48,0,2,5,8,12.450001,36928009);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,23,2,20413,13614,1354,112,7,2,5,16,19.483334,36926836);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,2,15587,22827,1172,91,6,2,4,13,18.1,36925775);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,45,6,8736,25926,1079,-4,1,3,2,3,13.366668,36896698);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,23,7,9758,13239,54,-12,0,2,1,2,18.166668,36896054);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,1,17975,29351,346,149,7,1,5,14,23.133335,36894786);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,16,1,14500,8723,5167,195,6,0,6,14,14.500001,36862211);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,2,23577,39522,2216,127,3,3,12,17,43.45,36860885);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,4,8810,14734,547,30,2,1,3,6,15.933334,36859970);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,1,30747,42597,1005,148,7,3,11,19,47.683334,36813777);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,25,1,23695,20864,0,119,3,3,5,11,15.250001,36812702);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,13,5,5819,16477,367,35,1,1,3,8,8.416667,36812029);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,74,6,7305,20485,414,-7,0,4,0,0,24.366669,36811426);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,2,15442,28934,1068,68,1,1,3,6,32.983334,36810454);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,5,11123,18828,750,16,2,2,2,4,13.6,36809784);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,45,2,11523,14506,470,83,0,1,8,10,19.683334,36281735);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,25,6,4828,3241,0,73,1,1,0,3,2.2833335,36281111);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,16,2,23752,16022,3395,143,5,2,4,11,17.533335,36279817);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,53,2,14118,19845,663,126,5,1,5,13,19.45,36278811);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,36,3,29474,13457,0,64,2,3,5,7,8,36277689);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,62,2,26909,15449,14505,127,3,2,9,12,15.333334,36276701);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,25,1,17157,13016,0,144,5,1,5,12,16.466667,36275606);
Insert into SYSTEM.GAMES (USERNUM,CHARACTER_NUM,GAME_RANK,DAMAGE_TO_PLAYER,DAMAGE_FROM_PLAYER,TEAM_RECOVER,MMR_GAIN,PLAYER_KILL,PLAYER_DEATHS,PLAYER_ASSISTANT,TEAM_KILL,CC_TIME_TO_PLAYER,GAME_ID) values (4883193,36,1,23678,6692,0,185,5,0,8,14,8.133334,36274691);
REM INSERTING into SYSTEM.USERS
SET DEFINE OFF;
Insert into SYSTEM.USERS (ID,PWD,NICKNAME,UPDATETIME,USERNUM) values ('asdfasdf','asdfasdf','�ð�����82',null,'3754521');
Insert into SYSTEM.USERS (ID,PWD,NICKNAME,UPDATETIME,USERNUM) values ('qwerqwer','qwerqwer','�ð�����86',null,'4883193');
--------------------------------------------------------
--  DDL for Index GAMES_PK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."GAMES_PK1" ON "SYSTEM"."GAMES" ("GAME_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index USERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."USERS_PK" ON "SYSTEM"."USERS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table GAMES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."GAMES" MODIFY ("USERNUM" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GAMES" MODIFY ("GAME_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GAMES" MODIFY ("CHARACTER_NUM" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GAMES" MODIFY ("GAME_RANK" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GAMES" MODIFY ("DAMAGE_TO_PLAYER" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GAMES" MODIFY ("DAMAGE_FROM_PLAYER" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GAMES" MODIFY ("TEAM_RECOVER" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GAMES" MODIFY ("MMR_GAIN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GAMES" MODIFY ("PLAYER_KILL" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GAMES" MODIFY ("PLAYER_DEATHS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GAMES" MODIFY ("PLAYER_ASSISTANT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GAMES" MODIFY ("TEAM_KILL" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GAMES" MODIFY ("CC_TIME_TO_PLAYER" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GAMES" ADD CONSTRAINT "GAMES_PK" PRIMARY KEY ("GAME_ID")
  USING INDEX (CREATE UNIQUE INDEX "SYSTEM"."GAMES_PK1" ON "SYSTEM"."GAMES" ("GAME_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" )  ENABLE;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."USERS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."USERS" MODIFY ("PWD" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."USERS" MODIFY ("NICKNAME" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."USERS" ADD CONSTRAINT "USERS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."USERS" MODIFY ("USERNUM" NOT NULL ENABLE);