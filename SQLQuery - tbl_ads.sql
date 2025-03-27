CREATE TABLE tbl_ads (
    ad_id INT IDENTITY(1,1) PRIMARY KEY,  
    an_id INT NOT NULL,  -- Koppling till annonsören
    ad_varans_pris DECIMAL(10,2) NOT NULL,  -- Pris på varan
    ad_rubrik NVARCHAR(200) NOT NULL,  
    ad_innehall NVARCHAR(MAX) NOT NULL,  
    ad_annonspris DECIMAL(10,2) NOT NULL CHECK (ad_annonspris IN (0, 40)),  -- 0 kr för prenumeranter, 40 kr för företag
    ad_skapad DATETIME DEFAULT GETDATE(),  
    FOREIGN KEY (an_id) REFERENCES tbl_annonsorer(an_id) ON DELETE CASCADE
);

