Proceso sin_titulo
	definir tipo, total_vehiculo, cant_moto, cant_auto, cant_util, cant_cami como entero;
	definir totalr_zona, totalr_general, precioh, horah, costo_est, moto_r, auto_r, util_r, cami_r como real;
	definir porc_moto, porc_auto, porc_util, porc_cami, porc_c_moto, porc_c_auto, porc_c_util, porc_c_cami como real;
	definir continuar como caracter;
	//inicialización
	total_vehiculo <- 0;
	totalr_general <- 0;
	cant_moto <- 0;
	cant_auto <- 0;
	cant_util <- 0;
	cant_cami <- 0;
	
	Escribir 'Desea iniciar zona? (S = si -- N= no)' ;
	Leer continuar;
	
	Mientras continuar = 's' Hacer
		totalr_zona <- 0;
		moto_r <- 0;
		auto_r <- 0;
		util_r <- 0;
		cami_r <- 0;
		Escribir 'Desea seguir S/N? ';
		Leer continuar;
		Mientras continuar = 's' Hacer
			//Ingreso tipo de vehiculo
			Escribir '(1)-Motocicleta -- (2)-Automovil -- (3)-Utilitario -- (4)Camion';
			Leer tipo;
			//Ingreso de horas de estacionamiento
			Escribir 'Ingrese tiempo de estadia del vehiculo';
			Leer horah;
			
			Segun tipo Hacer
				1:
					cant_moto <- cant_moto+1;
					precioh <- 100;
					moto_r <- moto_r+(precioh*horah);
				2:
					cant_auto <- cant_auto+1;
					precioh <- 200;
					auto_r <- auto_r+(precioh*horah);
				3:
					cant_util <- cant_util+1;
					precioh <- 250;
					util_r <- util_r+(precioh*horah);
				4:
					cant_cami <- cant_cami+1;
					precioh <- 700;
					cami_r <- cami_r+(precioh*horah);
			FinSegun
			// recaudacion por zona
			costo_est <- precioh*horah;
			totalr_zona <- totalr_zona + costo_est;
			
			// porcentaje de recaudacion de vehiculos
			porc_moto <- (moto_r/totalr_zona)*100;
			porc_auto <- (auto_r/totalr_zona)*100;
			porc_util <- (util_r/totalr_zona)*100;
			porc_cami <- (cami_r/totalr_zona)*100;
			
			// contador total de vehiculos
			total_vehiculo <- total_vehiculo+1;
			
			Escribir 'Desea seguir S/N? ';
			Leer continuar;
		FinMientras
		//informar zona - y porcentaje recaudación de cada vehiculo
		Escribir 'Porcentaje recaudados de vehiculos';
		Escribir 'Moto : % ',porc_moto, ' Auto : % ',porc_auto, ' Utilitario : % ',porc_util, ' Camión : % ',porc_cami;
		Escribir 'El total recaudado de esta zona es  $ ',totalr_zona;
		
		// total recaudado general
		totalr_general <- totalr_general+totalr_zona;
		Escribir 'Desea iniciar zona? (S = si -- N= no)';
		Leer continuar;
	FinMientras
	//Porcentajes cantidad de vehiculos de cada tipo
	porc_c_moto <- (cant_moto/total_vehiculo)*100;
	porc_c_auto <- (cant_auto/total_vehiculo)*100;
	porc_c_util <- (cant_util/total_vehiculo)*100;
	porc_c_cami <- (cant_cami/total_vehiculo)*100;
	
	//informar general
	Escribir 'El porcentaje de cantidad de cada vehiculo es';
	Escribir '-- MOTO % ',porc_c_moto,' -- AUTO % ',porc_c_auto, ' -- UTILITARIO % ',porc_c_util, ' -- CAMIÓN % ',porc_c_cami ;
	Escribir 'La recaudación total de todas las zonas es $ ' ,totalr_general;
FinProceso
