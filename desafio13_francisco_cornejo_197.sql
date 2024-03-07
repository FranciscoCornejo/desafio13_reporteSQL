-- 1. ¿Cuántos registros hay?
SELECT COUNT(*) AS total_registros 
FROM INSCRITOS;
-- Respuesta: 16


-- 2. ¿Cuántos inscritos hay en total?
SELECT SUM(cantidad) AS total_inscritos 
FROM INSCRITOS;
-- Respuesta: 774


-- 3. ¿Cuál o cuáles son los registros de mayor antigüedad? NOTA: para esta pregunta ocupar subconsultas
SELECT *
FROM INSCRITOS
WHERE fecha = (SELECT MIN(fecha) FROM INSCRITOS);
-- Respuesta: 
/*
44	"2021-01-01"	"Blog"
56	"2021-01-01"	"Página"
*/


-- 4. ¿Cuántos inscritos hay por día? (entendiendo un día como una fecha distinta de ahora en adelante)
SELECT fecha, SUM(cantidad) AS inscritos_por_dia
FROM INSCRITOS
GROUP BY fecha;
-- Respuesta:
/*
"2021-02-01"	120
"2021-08-01"	182
"2021-05-01"	88
"2021-04-01"	93
"2021-06-01"	30
"2021-07-01"	58
"2021-03-01"	103
"2021-01-01"	100
*/


-- 5. ¿Qué día se inscribieron la mayor cantidad de personas y cuántas personas se inscribieron en ese día?SELECT fecha, SUM(cantidad) AS inscritos_en_max_dia
SELECT fecha, SUM(cantidad) AS max_inscritos
FROM INSCRITOS
GROUP BY fecha
ORDER BY max_inscritos DESC
LIMIT 1;
-- Respuesta:
/*
"2021-08-01"	182
*/



