Proceso cajeroautomatico
	
	Definir op Como cadena;
	Definir intro Como Cadena;
	definir opc como real;
	Definir saldo como real;
	Definir salir Como Logico;
	Definir inicio como cadena;
	Definir i Como Entero;;
	saldo <- 20000.00;
	salir<- falso;
	Limpiar Pantalla;
	Dimension inicio[6];
	
	inicio[0] <-  " ____               _   _     _____      ____  ";
	inicio[1] <-  "I  _ \      /\     I \ I I   / ____I    / __ \ ";
	inicio[2] <-  "I I_) I    /  \    I  \I I  I  I       I I  I I";
	inicio[3] <-  "I  _ <    / /\ \   I . ` I  I  I       I I  I I";
	inicio[4] <-  "I I_) I  / ____ \  I I\  I  I  I____   I I__I I";
	inicio[5] <-  "I____/  /_/    \_\ I_I \_I   \_____I    \____/ ";
	
	Esperar 400 Milisegundos;
	para i <- 0 hasta 5 con paso 1 hacer
		Esperar 30 Milisegundos;
		Escribir inicio[i];
	finpara
	Escribir "";
	Escribir "";
	Escribir "Pulse cualquier tecla para ingresar";
Esperar Tecla;
	
	
	
	
	
	Repetir
		Escribir "";
		Escribir "Seleccione una opcion";
		Escribir "";
		Escribir "1 - Consulta tu saldo";
		escribir "2 - Retirá dinero";
		Escribir "3 - Salir";
		
		leer op;
		si op = "1" o op ="2" o op = "3" Entonces
			Limpiar Pantalla;	
			
			Segun ConvertirANumero(op) Hacer
				1:
					Limpiar Pantalla;
					Escribir "Consulta tu saldo";
					Escribir "";
					Escribir "Su saldo es $",saldo;
					Escribir "";
					si saldo = 0 Entonces
						Escribir "Ya no tiene saldo disponible";
						
					FinSi
					Escribir "";
					Escribir "Pulse cualquier tecla para volver al menu";
					
				2: 
					Limpiar Pantalla;
					Escribir "Retirá tu saldo";
					Escribir "";
					Escribir "Escriba monto a retirar";
					leer opc;
					
					si opc == 0 Entonces
						Escribir "No ha ingresado nada";
					FinSi
					si opc <= saldo y opc>0 Entonces
						saldo <- saldo - opc;
						
						Escribir "Ha retirado con exito $",opc;
						Escribir "";
					sino 
						si opc<0 Entonces
							Escribir "Monto negativo";
						FinSi
						si opc>saldo Entonces
							
							
							Escribir "El monto es mayor al saldo disponible";
						FinSi
						
					FinSi
					Escribir "";
					Escribir "Pulse cualquier tecla para volver al menu";
					
					
					
					
				3: Limpiar Pantalla;;
					salir <- Verdadero;
					Escribir "Pulse 2 veces cualquier tecla para salir";
					
					Esperar Tecla;
					
					
				De Otro Modo:
					Escribir "Opcion incorrecta";
					Escribir "Intente de nuevo";
					
					
					
			FinSegun
			
			Esperar Tecla;
			Limpiar Pantalla;
		sino 
			Limpiar Pantalla;
			Escribir "Incorrecto, seleccione una opcion del menu";
		FinSi
		
	Hasta Que  salir = Verdadero
	
	
FinProceso