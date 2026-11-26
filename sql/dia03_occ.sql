-- Día 3 · OCC Spree Air (ficticia): vuelos del 20/11 desde BER o MUC
-- con 15+ min de demora o cancelados, peor primero.
SELECT vuelo, UPPER(TRIM(origen)) AS origen, destino, matricula, dem_salida, cancelado
FROM vuelos_occ
WHERE fecha = '2026-11-20' AND UPPER(TRIM(origen)) IN ('BER', 'MUC') AND (dem_salida >= 15 OR cancelado = 1)
ORDER BY cancelado DESC, dem_salida DESC;
