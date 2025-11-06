
SELECT
    ps.PatientId
    ,ps.Hospital
    ,ps.Ward
    ,ps.AdmittedDate
    ,ps.DischargeDate
    ,ps.Tariff
    ,DATEADD(WEEK, -2, ps.AdmittedDate) AS ReminderDate
    ,DATEDIFF(DAY, ps.AdmittedDate, ps.DischargeDate) +1 AS DaysInHospital
from PatientStay ps
WHERE ps.hospital IN ('PRUH', 'kingston')
ORDER BY ps.PatientId DESC
 
SELECT * FROM PatientStay
SELECT * FROM DimHospitalBad

SELECT 
  p.PatientId
  ,p.AdmittedDate
  ,p.DischargeDate
  ,h.HospitalType
  ,p.Hospital
  ,h.Hospital
  FROM PatientStay p RIGHT JOIN DimHospitalBad h ON p.Hospital = h.Hospital





--AdmittedDate DESC
  --  ,DischargeDate DESC
--and ward in ('day surgery', 'general surgery')
--AND ward LIKE '%surgery'
--AND AdmittedDate BETWEEN '2024-02-27' AND '2024-03-01'