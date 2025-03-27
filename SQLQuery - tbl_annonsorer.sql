CREATE TABLE tbl_annonsorer (
    an_id INT IDENTITY(1,1) PRIMARY KEY,  
    an_typ VARCHAR(20) NOT NULL CHECK (an_typ IN ('Prenumerant', 'Företag')),  
    pn_id INT NULL,  -- sparar prenumerationsnumret om det är en prenumerant
    an_namn NVARCHAR(100) NOT NULL,  
    an_orgnummer VARCHAR(20) NULL,  
    an_telefon VARCHAR(20) NOT NULL,  
    an_utdelningsadress NVARCHAR(100) NULL, 
    an_postnummer VARCHAR(10) NULL,  
    an_ort NVARCHAR(50) NULL,  
    an_faktura_utdelningsadress NVARCHAR(100) NULL,  
    an_faktura_postnummer VARCHAR(10) NULL,  
    an_faktura_ort NVARCHAR(50) NULL
);
