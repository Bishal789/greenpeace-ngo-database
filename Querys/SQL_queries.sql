SELECT d.DonorID, CONCAT(d.FirstName, ' ', d.LastName) AS DonorName, dc.CampaignID, c.Name AS CampaignName, d.DonationAmount
FROM Donors d
JOIN Donor_Campaign dc ON d.DonorID = dc.DonorID
JOIN Campaigns c ON dc.CampaignID = c.CampaignID
WHERE dc.CampaignID = 17
ORDER BY d.DonationAmount DESC
LIMIT 10;


SELECT Volunteers.VolunteerID, CONCAT(Volunteers.FirstName, ' ', Volunteers.LastName) AS FullName, 
COUNT(Volunteer_Campaign.CampaignID) AS CampaignCount
FROM Volunteer_Campaign
JOIN Volunteers ON Volunteer_Campaign.VolunteerID = Volunteers.VolunteerID
GROUP BY Volunteers.VolunteerID, Volunteers.FirstName;


SELECT * FROM Campaigns
WHERE AmountRaised < FundraisingGoal
  AND (EndDate > CURRENT_DATE);


SELECT Donors.DonorID, Donors.FirstName, COUNT(Donor_Campaign.CampaignID) AS Donated_Count
FROM Donor_Campaign
JOIN Donors ON Donor_Campaign.DonorID = Donors.DonorID
GROUP BY Donors.DonorID, Donors.FirstName
HAVING Donated_Count > 1;

SELECT Donors.DonorID, Donors.FirstName, ROUND(AVG(Donors.DonationAmount), 2) AS AvgDonationAmount
FROM Donor_Campaign
JOIN Donors ON Donor_Campaign.DonorID = Donors.DonorID
GROUP BY Donors.DonorID, Donors.FirstName;

SELECT i.ImpactID, i.ImpactType, COUNT(DISTINCT cr.CampaignID) AS Campaigns_Affected
FROM Impacts i
JOIN Impact_Resource ir ON i.ImpactID = ir.ImpactID
JOIN Campaign_Resource cr ON ir.ResourceID = cr.ResourceID
GROUP BY i.ImpactID, i.ImpactType;

SELECT DISTINCT v.VolunteerID, CONCAT(v.FirstName, ' ', v.LastName) AS VolunteerName
FROM Volunteers v
JOIN Volunteer_Campaign vc ON v.VolunteerID = vc.VolunteerID
JOIN Campaigns c ON vc.CampaignID = c.CampaignID
WHERE c.AmountRaised > 1000;

SELECT r.ResourceID, r.ResourceType, COUNT(DISTINCT cr.CampaignID) AS CampaignCount
FROM Resources r
JOIN Campaign_Resource cr ON r.ResourceID = cr.ResourceID
GROUP BY r.ResourceID, r.ResourceType
ORDER BY CampaignCount DESC
LIMIT 10;


SELECT Campaigns.CampaignID, Campaigns.Name, Campaigns.AmountRaised,COUNT(DISTINCT Volunteer_Campaign.VolunteerID) AS TotalVolunteers,
       COUNT(DISTINCT Donor_Campaign.DonorID) AS TotalDonors FROM Campaigns
JOIN Volunteer_Campaign ON Campaigns.CampaignID = Volunteer_Campaign.CampaignID
JOIN Donor_Campaign ON Campaigns.CampaignID = Donor_Campaign.CampaignID
GROUP BY Campaigns.CampaignID, Campaigns.Name, Campaigns.AmountRaised
HAVING TotalVolunteers > 0 AND TotalDonors > 0
ORDER BY TotalVolunteers DESC
LIMIT 3;




