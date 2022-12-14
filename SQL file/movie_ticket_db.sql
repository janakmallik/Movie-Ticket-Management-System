
CREATE DATABASE movie_ticket_v1

USE movie_ticket_v1

--MOVIE TABLE
CREATE TABLE mv_va(
	[id] [int] IDENTITY(1,1) PRIMARY KEY,
	[m_nam] [varchar](50) NOT NULL,
	[m_pr] [float] NOT NULL,
	--AUTO SPECIAL ID GENERATOR
	[mv_id]  AS ('MVE'+right('00'+CONVERT([varchar](8),[id],0),(8))) PERSISTED NOT NULL,
	[m_sta] [varchar](50) NULL,
(


--SEAT TABLE
CREATE TABLE h_s(
	[hall_1] [varchar](50) PRIMARY KEY, 
(


-- CUSTOMER TABLE
CREATE TABLE cs_va(
	[c_email] [varchar](50) NOT NULL,
	[b_nm] [int] NULL,
	[cs_id] [int] IDENTITY(1,1) PRIMARY KEY,
(

-- ADMIN TABLE	
CREATE TABLE ad_va(
	[nam] [varchar](50) NOT NULL,
	[unam] [varchar](50) PRIMARY KEY,
	[pass] [varchar](50) NOT NULL,
(

--TICKET TABLE
CREATE TABLE ti_va(
	[id] [int] IDENTITY(1,1) PRIMARY KEY,
	--AUTO SPECIAL ID GENERATOR
	[t_id]  AS ('tik'+right('00'+CONVERT([varchar](8),[id],(0)),(8))) PERSISTED NOT NULL,
	[c_mail] [varchar](50) NOT NULL,
	[m_id] [varchar](50) FOREIGN KEY REFERENCES MV_VA(id) NOT NULL ,
	[t_dt] [date] NOT NULL,
	[t_sta] [varchar](50) NOT NULL,
	[t_h] [varchar](50) NULL,
	[t_st] [varchar](50) FOREIGN KEY REFERENCES h_s(hall_1) NULL,
	[mv_id] [int] NULL,
	[cs_id] [int] FOREIGN KEY REFERENCES cs_va(cs_id) NOT NULL,
	[ad_id] [varchar](50) FOREIGN KEY REFERENCES ad_va(unam) NOT NULL,
(
