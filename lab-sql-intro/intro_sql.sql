SELECT * FROM incidents
LIMIT 10;

-- 1. Identificar los Principales Tipos de Quejas
SELECT complaint_type, COUNT(*)
FROM incidents
GROUP BY complaint_type
ORDER BY COUNT(*) DESC;

-- 2. Analizar Quejas por Distrito
SELECT borough, COUNT(*) AS numero_quejas
FROM incidents
GROUP BY borough;

-- 3. Filtrar Tipos de Quejas de Alto Volumen
SELECT complaint_type, COUNT(*) AS numero_quejas
FROM incidents
GROUP BY complaint_type
HAVING numero_quejas > 1000;

-- 4. Comparación de Distritos para un Tipo Específico de Queja
SELECT borough, COUNT(*) AS numero_quejas
FROM incidents
WHERE complaint_type = "Illegal Parking"
GROUP BY borough
ORDER BY numero_quejas DESC;



