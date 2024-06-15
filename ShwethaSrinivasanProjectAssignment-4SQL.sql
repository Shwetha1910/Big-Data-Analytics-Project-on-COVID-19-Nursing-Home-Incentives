select * from pf1;
select Performance_Month,count(*) from pf1 group by Performance_Month order by count(*) desc;
select Mortality_Adjustment, count(*) as InfectionPerformanceScore from pf1 group by Infection_PerformanceScore order by Mortality_Adjustment;
select Facility_Name, count(*) as TotalResidents from pf1 group by Total_Resident_Weeks;
select County_Infection_Rate, avg(Final_Payment) from pf1 group by County_Infection_Rate;