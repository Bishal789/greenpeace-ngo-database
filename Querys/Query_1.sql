CREATE DATABASE IF NOT EXISTS Bidari;
Show databases;
Use Bidari;

CREATE TABLE Volunteers (
    VolunteerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DOB DATE,
    Region VARCHAR(50),
    Email VARCHAR(100) UNIQUE
);

CREATE TABLE Campaigns (
    CampaignID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Focus VARCHAR(50),
    StartDate DATE NOT NULL,
    EndDate DATE,
    FundraisingGoal DECIMAL(10, 2),
    CONSTRAINT chk_dates CHECK (EndDate IS NULL OR EndDate > StartDate)
);

CREATE TABLE Donors (
    DonorID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    DonationAmount DECIMAL(10, 2),
    DonationDate DATE NOT NULL
);

CREATE TABLE Resources (
    ResourceID INT PRIMARY KEY,
    ResourceType VARCHAR(50),
    Location VARCHAR(100),
    Status ENUM('Stable', 'Threatened', 'Depleting', 'Recovering', 'Monitored')
);

CREATE TABLE Impacts (
    ImpactID INT PRIMARY KEY,
    ImpactType VARCHAR(100),
    Severity ENUM('Mild', 'Moderate', 'Severe', 'High'),
    AffectedRegion VARCHAR(100)
);

CREATE TABLE Volunteer_Campaign (
    VolunteerID INT,
    CampaignID INT,
    PRIMARY KEY (VolunteerID, CampaignID),
    FOREIGN KEY (VolunteerID) REFERENCES Volunteers(VolunteerID),
    FOREIGN KEY (CampaignID) REFERENCES Campaigns(CampaignID)
);

CREATE TABLE Donor_Campaign (
    DonorID INT,
    CampaignID INT,
    PRIMARY KEY (DonorID, CampaignID),
    FOREIGN KEY (DonorID) REFERENCES Donors(DonorID),
    FOREIGN KEY (CampaignID) REFERENCES Campaigns(CampaignID)
);

CREATE TABLE Campaign_Resource (
    CampaignID INT,
    ResourceID INT,
    PRIMARY KEY (CampaignID, ResourceID),
    FOREIGN KEY (CampaignID) REFERENCES Campaigns(CampaignID),
    FOREIGN KEY (ResourceID) REFERENCES Resources(ResourceID)
);

CREATE TABLE Impact_Resource (
    ImpactID INT,
    ResourceID INT,
    PRIMARY KEY (ImpactID, ResourceID),
    FOREIGN KEY (ImpactID) REFERENCES Impacts(ImpactID),
    FOREIGN KEY (ResourceID) REFERENCES Resources(ResourceID)
);
