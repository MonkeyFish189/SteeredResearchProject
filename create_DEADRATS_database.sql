create database DEADRATS;
use DEADRATS;

DROP TABLE IF EXISTS gene_id_and_name;
create table gene_id_and_name
  (gene_id VARCHAR(20) NOT NULL PRIMARY KEY,
 gene_name VARCHAR(20));
 LOAD DATA INFILE '/var/lib/mysql-files/gene_id_and_name.csv' INTO TABLE gene_id_and_name
  FIELDS TERMINATED BY ',' IGNORE 1 LINES;

DROP TABLE IF EXISTS rn4_FPKM;
create table rn4_FPKM
  (gene_id VARCHAR(20) NOT NULL PRIMARY KEY,
  CTRL1_FPKM FLOAT,
  CTRL1_FPKM_lo FLOAT,
  CTRL1_FPKM_hi FLOAT,
	CTRL2_FPKM FLOAT,
  CTRL2_FPKM_lo FLOAT,
  CTRL2_FPKM_hi FLOAT,
    AFL4_FPKM FLOAT,
  AFL4_FPKM_lo FLOAT,
  AFL4_FPKM_hi FLOAT,
      AFL6_FPKM FLOAT,
  AFL6_FPKM_lo FLOAT,
  AFL6_FPKM_hi FLOAT,
      AFL8_FPKM FLOAT,
  AFL8_FPKM_lo FLOAT,
  AFL8_FPKM_hi FLOAT);
LOAD DATA INFILE '/var/lib/mysql-files/rn4_FPKM.csv' INTO TABLE rn4_FPKM
  FIELDS TERMINATED BY ',' IGNORE 1 LINES;

DROP TABLE IF EXISTS rn6_FPKM;
create table rn6_FPKM
  (gene_id VARCHAR(20) NOT NULL PRIMARY KEY,
  CTRL1_FPKM FLOAT,
  CTRL1_FPKM_lo FLOAT,
  CTRL1_FPKM_hi FLOAT,
	CTRL2_FPKM FLOAT,
  CTRL2_FPKM_lo FLOAT,
  CTRL2_FPKM_hi FLOAT,
    AFL4_FPKM FLOAT,
  AFL4_FPKM_lo FLOAT,
  AFL4_FPKM_hi FLOAT,
      AFL6_FPKM FLOAT,
  AFL6_FPKM_lo FLOAT,
  AFL6_FPKM_hi FLOAT,
      AFL8_FPKM FLOAT,
  AFL8_FPKM_lo FLOAT,
  AFL8_FPKM_hi FLOAT);
LOAD DATA INFILE '/var/lib/mysql-files/rn6_FPKM.csv' INTO TABLE rn6_FPKM
  FIELDS TERMINATED BY ','IGNORE 1 LINES;
  
DROP TABLE IF EXISTS rn4_stats;
create table rn4_stats
  (gene_id VARCHAR(20) NOT NULL PRIMARY KEY,
  logFC FLOAT,
  P FLOAT,
  adjP FLOAT,
	t FLOAT,
  B FLOAT,
  dif_ex VARCHAR(5));
LOAD DATA INFILE '/var/lib/mysql-files/rn4_stats.csv' INTO TABLE rn4_stats
  FIELDS TERMINATED BY ','IGNORE 1 LINES;
  
DROP TABLE IF EXISTS rn6_stats;
create table rn6_stats
  (gene_id VARCHAR(20) NOT NULL PRIMARY KEY,
  logFC FLOAT,
  P FLOAT,
  adjP FLOAT,
	t FLOAT,
  B FLOAT,
  dif_ex VARCHAR(5));
LOAD DATA INFILE '/var/lib/mysql-files/rn6_stats.csv' INTO TABLE rn6_stats
  FIELDS TERMINATED BY ','IGNORE 1 LINES;

DROP TABLE IF EXISTS GO_terms;
create table GO_terms
  (gene_id VARCHAR(20) NOT NULL PRIMARY KEY,
 gene_name VARCHAR(20),
 GO_Bio TEXT,
 GO_Cell TEXT,
 GO_Mol TEXT);
 LOAD DATA INFILE '/var/lib/mysql-files/GO_terms.csv' INTO TABLE GO_terms
  FIELDS TERMINATED BY ',' IGNORE 1 LINES;