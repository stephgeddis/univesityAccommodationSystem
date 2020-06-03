SELECT LeaseTenantSigned.LeaseID AS 'Lease ID with Most Tenants', COUNT(LeaseTenantSigned.LeaseID) AS 'Number of Tenants', Lease.Monthly_Rent AS 'Monthly Rent', (Lease.Monthly_Rent / COUNT(LeaseTenantSigned.LeaseID)) AS 'Rent per Tenant'
FROM LeaseTenantSigned
INNER JOIN Lease ON LeaseTenantSigned.LeaseID = Lease.LeaseID
GROUP BY LeaseTenantSigned.LeaseID 
ORDER by COUNT(LeaseTenantSigned.LeaseID) 
DESC limit 1;

SELECT Building.BuildingID AS 'Building ID', Person.PersonID AS 'Person ID', Person.First_Name AS 'First Name', Person.Last_Name AS 'Surname', Apartment.Apartment_Number AS 'Apartment Number', Manager.Office_Room_Number AS 'Office Number', Lease.LeaseID AS 'Lease ID', Lease.Monthly_Rent AS 'Monthly Rent'
FROM Person
INNER JOIN PersonApartment ON PersonApartment.PersonID = Person.PersonID
INNER JOIN Apartment ON Apartment.Apartment_Number = PersonApartment.Apartment_Number
INNER JOIN Building ON Building.BuildingID = Apartment.BuildingID
INNER JOIN Manager ON Manager.Office_Room_Number = Apartment.Office_Room_Number
INNER JOIN LeaseTenantSigned ON LeaseTenantSigned.PersonID = Person.PersonID
INNER JOIN Lease ON Lease.LeaseID = LeaseTenantSigned.LeaseID
WHERE Lease.Monthly_Rent > 700
ORDER BY Lease.Monthly_Rent 
DESC;

SELECT LeaseTenantSigned.PersonID AS 'ID of Returning Tenant', Lease.LeaseID AS 'Lease ID', Lease.Contract_End_Date AS 'Contract Expired Date'
FROM LeaseTenantSigned 
INNER JOIN Lease 
WHERE Lease.LeaseID = LeaseTenantSigned.LeaseID 
AND Lease.Contract_End_Date < CURRENT_DATE;

SELECT Building.BuildingID, SUM(DISTINCT Apartment.Total_Area) * COUNT(DISTINCT Apartment.Apartment_Number) AS 'Total Area of Building', Lease.Monthly_Rent * COUNT(DISTINCT Apartment.Apartment_Number) AS 'Total Building Monthly Income', (SUM(DISTINCT Apartment.Total_Area) * COUNT(DISTINCT Apartment.Apartment_Number)) / (Lease.Monthly_Rent * COUNT(DISTINCT Apartment.Apartment_Number)) AS 'Rent per Square Foot'
FROM Apartment 
INNER JOIN Building on Apartment.BuildingID = Building.BuildingID 
INNER JOIN PersonApartment on Apartment.Apartment_Number = PersonApartment.Apartment_Number
INNER JOIN LeaseTenantSigned on PersonApartment.PersonID =  LeaseTenantSigned.PersonID 
INNER JOIN Lease on LeaseTenantSigned.LeaseID = Lease.LeaseID
GROUP BY Building.BuildingID;

