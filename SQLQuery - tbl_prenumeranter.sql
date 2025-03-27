CREATE TABLE tbl_prenumeranter (
    pr_id INT IDENTITY(1,1) PRIMARY KEY,  -- unikt ID
    pr_personnummer VARCHAR(12) NOT NULL,  --  format YYYYMMDDXXXX
    pr_fornamn NVARCHAR(50) NOT NULL,  
    pr_efternamn NVARCHAR(50) NOT NULL, 
    pn_telefon VARCHAR(20) NOT NULL,
    pr_utdelningsadress NVARCHAR(100) NOT NULL,  
    pr_postnummer VARCHAR(10) NOT NULL,
    pn_ort NVARCHAR(50) NOT NULL
);
