-- MODA: ['MODE() WITHIN GROUP(ORDER BY COLUNA)']
SELECT MAQUINA, MODE() WITHIN GROUP(ORDER BY QTD) AS "MODA"
FROM MAQUINAS
GROUP BY MAQUINA;


-- QUERY COMPOSTA COM AS MEDIDAS ESTATÍSTICAS SEM A "MODA"
SELECT	MAQUINA,
		COUNT(QTD) AS "QUANTIDADE",
		SUM(QTD) AS "TOTAL",
		ROUND(AVG(QTD),2) AS "MEDIA",
		MAX(QTD) AS "MAXIMO",
		MIN(QTD) AS "MINIMO",
		MAX(QTD) - MIN(QTD) AS "AMPLI. TOTAL",
		ROUND(VAR_POP(QTD),2) AS "VARIANCIA",
		ROUND(STDDEV_POP(QTD),2) AS "DESVIO PADRAO",
		ROUND(MEDIAN(QTD),2) AS "MEDIANA",
		ROUND((STDDEV_POP(QTD) / AVG(QTD)) * 100) AS "COEF. VARIACAO"
		FROM MAQUINAS
		GROUP BY MAQUINA
		ORDER BY 1;


-- QUERY COMPOSTA COM AS MEDIDAS ESTATÍSTICAS COM A "MODA"
SELECT	MAQUINA,
		COUNT(QTD) AS "QUANTIDADE",
		SUM(QTD) AS "TOTAL",
		ROUND(AVG(QTD),2) AS "MEDIA",
		MAX(QTD) AS "MAXIMO",
		MIN(QTD) AS "MINIMO",
		MAX(QTD) - MIN(QTD) AS "AMPLI. TOTAL",
		ROUND(VAR_POP(QTD),2) AS "VARIANCIA",
		ROUND(STDDEV_POP(QTD),2) AS "DESVIO PADRAO",
		ROUND(MEDIAN(QTD),2) AS "MEDIANA",
		ROUND((STDDEV_POP(QTD) / AVG(QTD)) * 100) AS "COEF. VARIACAO",
		MODE() WITHIN GROUP(ORDER BY QTD) AS "MODA"
		FROM MAQUINAS
		GROUP BY MAQUINA
		ORDER BY 1;