Proceso sin_titulo
	Definir total_encuestados, c_bici, c_moto, c_auto, c_tpublic, c_personas, tipo, nro_enc Como Entero;
	Definir a_porc_bici, a_porc_moto, a_porc_auto, a_porc_tpublic Como Entero;
	Definir acum_bici, acum_moto, acum_auto, acum_tpublic, distancia Como Real;
	Definir prom_bici, prom_moto, prom_auto, prom_tpublic Como Real;
	total_encuestados <- 0;
	nro_enc <- 0;
	a_porc_bici <- 0;
	a_porc_moto <- 0;
	a_porc_auto <- 0;
	a_porc_tpublic <- 0;
	Escribir 'Ingrese cantidad de encuestadores';
	Leer enc;
	Mientras enc<>-1 Hacer
		c_bici <- 0;
		acum_bici <- 0;
		c_moto <- 0;
		acum_moto <- 0;
		c_auto <- 0;
		acum_auto <- 0;
		c_tpublic <- 0;
		acum_tpublic <- 0;
		c_personas <- 0;
		Escribir 'Ingrese medio de transporte';
		Escribir '(1): Bicicleta -- (2): Motocicleta -- (3): Automovil -- (4): Transporte Publico';
		Leer tipo;
		Mientras tipo<>-1 Hacer
			c_personas <- c_personas+1;
			Escribir 'Ingrese la distancia';
			Leer distancia;
			Segun tipo Hacer
				1:
					c_bici <- c_bici+1;
					acum_bici <- acum_bici+distancia;
				2:
					c_moto <- c_moto+1;
					acum_moto <- acum_moto+distancia;
				3:
					c_auto <- c_auto+1;
					acum_auto <- acum_auto+distancia;
				4:
					c_tpublic <- c_tpublic+1;
					acum_tpublic <- acum_tpublic+distancia;
			FinSegun
			Escribir 'Ingrese medio de transporte';
			Escribir '(1): Bicicleta -- (2): Motocicleta -- (3): Automovil -- (4): Transporte Publico';
			Leer tipo;
		FinMientras
		// promedios
		prom_bici <- acum_bici/c_bici;
		prom_moto <- acum_moto/c_moto;
		prom_auto <- acum_auto/c_auto;
		prom_tpublic <- acum_tpublic/c_tpublic;
		// porcentajes
		a_porc_bici <- a_porc_bici+c_bici;
		a_porc_moto <- a_porc_moto+c_moto;
		a_porc_auto <- a_porc_auto+c_auto;
		a_porc_tpublic <- a_porc_tpublic+c_tpublic;
		Escribir 'Los promedios de los transportes son los siguientes:';
		Escribir ' --Bicicleta: ', prom_bici, ' -- Motocicleta: ', prom_moto, ' -- Automovil: ', prom_auto, ' -- Transporte publico: ', prom_tpublic;
		Escribir 'El total de encuestrados por este prestador es: ', c_personas;
		total_encuestados <- total_encuestados+c_personas;
		nro_enc <- nro_enc+1;
		Escribir 'Ingrese otro encuestador, para finalizar (-1)';
		Leer enc;
	FinMientras
	Escribir 'Porcentajes de uso por tipo de vehiculo:';
	Escribir 'Bicicleta: ', (a_porc_bici/total_encuestados)*100, '%';
	Escribir 'Motocicleta: ', (a_porc_moto/total_encuestados)*100, '%';
	Escribir 'Automovil: ', (a_porc_auto/total_encuestados)*100, '%';
	Escribir 'Transporte publico: ', (a_porc_tpublic/total_encuestados)*100, '%';
	Escribir 'La población total es:', total_encuestados;
FinProceso
