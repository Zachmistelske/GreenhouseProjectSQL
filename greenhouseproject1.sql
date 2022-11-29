SELECT *
FROM Greenhouse_project..['ghg-emissions$'];

SELECT Greenhouse_project..['ghg-emissions$'].[Country/Region], AVG(Greenhouse_project..['ghg-emissions$'].[MtCO2e Emissions]) AS Avg_CO2_Emissions, SUM(Greenhouse_project..['ghg-emissions$'].[MtCO2e Emissions]) AS Sum_CO2_Emissions
FROM Greenhouse_project..['ghg-emissions$']
WHERE Greenhouse_project..['ghg-emissions$'].[MtCO2e Emissions] IS NOT NULL
GROUP BY Greenhouse_project..['ghg-emissions$'].[Country/Region]
ORDER BY Greenhouse_project..['ghg-emissions$'].[Country/Region];


SELECT Greenhouse_project..['ghg-emissions$'].Year, AVG(Greenhouse_project..['ghg-emissions$'].[MtCO2e Emissions]) AS Avg_emissions, STDEV(cast(Greenhouse_project..['ghg-emissions$'].[MtCO2e Emissions] as int))/100 AS StDev
FROM Greenhouse_project..['ghg-emissions$']
WHERE Greenhouse_project..['ghg-emissions$'].[MtCO2e Emissions] IS NOT NULL
GROUP BY Greenhouse_project..['ghg-emissions$'].Year
ORDER BY Greenhouse_project..['ghg-emissions$'].Year;