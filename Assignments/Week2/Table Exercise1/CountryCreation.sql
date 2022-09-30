-- schema
CREATE TABLE Countries (
    CountryName VARCHAR(64) NOT NULL,
    ISO VARCHAR(2) NOT NULL,
    ISONumeric INT NOT NULL,
    Capital VARCHAR(64) NOT NULL,
    CurrencyCode VARCHAR(3) NOT NULL,
    PRIMARY KEY(CountryName)
)
;

-- data
INSERT INTO Countries
    (CountryName, ISO, ISONumeric, Capital, CurrencyCode)
VALUES
  	('Australia', 'AU', 36, 'Canberra', 'AUD'),
    ('Germany', 'DE', 276, 'Berlin', 'EUR'),
    ('India', 'IN', 356, 'New Delhi', 'INR'),
    ('Laos', 'LA', 418, 'Vientiane', 'LAK'),
    ('United States', 'US', 840, 'Washington', 'USD'),
    ('Zimbabwe', 'ZW', 716, 'Harare', 'ZWL')
;




