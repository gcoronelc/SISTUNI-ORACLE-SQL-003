
SELECT CT.CHR_CUENCODIGO, CT.DEC_CUENSALDO, 
(CTE.VCH_CLIENOMBRE || ' ' || CTE.VCH_CLIEPATERNO || ' ' || CTE.VCH_CLIEMATERNO) CLIENTE, 
S.VCH_SUCUNOMBRE SUCURSAL,
(EM.VCH_EMPLNOMBRE || ' ' || EM.VCH_EMPLPATERNO || ' ' || EM.VCH_EMPLMATERNO)EMPLEADO, 
MN.VCH_MONEDESCRIPCION MONEDA
FROM CUENTA CT
JOIN CLIENTE CTE USING (CHR_CLIECODIGO)
JOIN SUCURSAL S USING (CHR_SUCUCODIGO) 
JOIN EMPLEADO EM ON EM.CHR_EMPLCODIGO = CT.CHR_EMPLCREACUENTA
JOIN MONEDA MN USING (CHR_MONECODIGO)