CREATE TABLE Categories (
    category_id VARCHAR PRIMARY KEY,
    category VARCHAR(255)
);

select * from categories

drop table categories

CREATE TABLE Subcategories (
    subcategory_id VARCHAR PRIMARY KEY,
    subcategory VARCHAR(255)
);

select * from subcategories

drop table subcategories

CREATE TABLE Contacts (
    contact_id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255)
);

select * from contacts

drop table contacts

CREATE TABLE Campaigns (
    cf_id INTEGER PRIMARY KEY,
    contact_id INTEGER REFERENCES Contacts(contact_id),
    company_name VARCHAR(255),
    description TEXT,
    goal NUMERIC,
    pledged NUMERIC,
    outcome TEXT,
    backers_count INTEGER,
    country VARCHAR(255),
    currency VARCHAR(255),
    launch_date DATE,
    end_date DATE,
    category_id VARCHAR REFERENCES Categories(category_id),
    subcategory_id VARCHAR REFERENCES Subcategories(subcategory_id)
);

select * from campaigns

drop table campaigns
