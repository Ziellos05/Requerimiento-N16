-- Forein keys para las tablas que lo necesitan
-- Tabla clientes

ALTER TABLE APP_DATOS_IMPRESION.CLIENTS ADD
	CONSTRAINT STRATUM_ID FOREIGN KEY (STRATUM_ID) REFERENCES APP_DATOS_IMPRESION.STRATUMS(ID);
-- Tabla consumos

ALTER TABLE APP_DATOS_IMPRESION.CONSUMPTIONS ADD
	CONSTRAINT FK_CLIENTS FOREIGN KEY (CLIENT_ID) REFERENCES APP_DATOS_IMPRESION.CLIENTS(ID);

ALTER TABLE APP_DATOS_IMPRESION.CONSUMPTIONS ADD
	CONSTRAINT FK_PERIODS FOREIGN KEY (PERIOD_ID) REFERENCES APP_DATOS_IMPRESION.PERIODS(ID);
-- Tabla facturas

ALTER TABLE APP_DATOS_IMPRESION.BILLS ADD
	CONSTRAINT FK_CONSUMPTIONS FOREIGN KEY (CONSUMPTION_ID) REFERENCES APP_DATOS_IMPRESION.CONSUMPTIONS(ID);
-- Tabla que guarda inf sobre los archivos .CSV con el print spool

ALTER TABLE APP_DATOS_IMPRESION.PRINTSPOOLS ADD
	CONSTRAINT FK_PERIODS2 FOREIGN KEY (PERIOD_ID) REFERENCES APP_DATOS_IMPRESION.PERIODS(ID);