(deftemplate Entrevista

    (slot Escolaridad (type NUMBER))

    (slot OrientacionTemporal_Fecha (type STRING) (allowed-strings "SI" "NO"))

    (slot OrientacionTemporal_Estacion (type STRING) (allowed-strings "SI" "NO"))
    (slot EsUnaSemanaAntesCambioEstacion (type STRING) (allowed-strings "SI" "NO"))
    (slot EsUnaSemanaDespuesCambioEstacion (type STRING) (allowed-strings "SI" "NO"))
    (slot ContestaEstacionSiguiente (type STRING) (allowed-strings "SI" "NO"))
    (slot ContestaEstacionAnterior (type STRING) (allowed-strings "SI" "NO"))

    (slot OrientacionTemporal_Mes (type STRING) (allowed-strings "SI" "NO") )
    (slot EsUltimoDiaMes (type STRING) (allowed-strings "SI" "NO"))
    (slot EsPrimerOSegundoDiaMes (type STRING) (allowed-strings "SI" "NO"))
    (slot ContestaMesAnterior (type STRING) (allowed-strings "SI" "NO"))
    (slot ContestaMesSiguiente (type STRING) (allowed-strings "SI" "NO"))

    (slot OrientacionTemporal_DiaSemana (type STRING) (allowed-strings "SI" "NO"))    

    (slot OrientacionTemporal_Ano (type STRING) (allowed-strings "SI" "NO") )
    (slot EsPrimerQuincenaAno (type STRING) (allowed-strings "SI" "NO"))    
    (slot ContestaAnoAnterior (type STRING) (allowed-strings "SI" "NO"))    

    (slot OrientacionEspacial_Lugar (type STRING) (allowed-strings "SI" "NO"))    
    (slot OrientacionEspacial_Ciudad (type STRING) (allowed-strings "SI" "NO"))
    (slot OrientacionEspacial_Pais (type STRING) (allowed-strings "SI" "NO"))    
    (slot OrientacionEspacial_Piso (type STRING) (allowed-strings "SI" "NO"))    
    (slot ConsultorioEnEntrepiso (type STRING) (allowed-strings "SI" "NO"))    
    (slot DiferenciaEntrePisoContestadoReal (type NUMBER))
    (slot OrientacionEspacial_Calle (type STRING) (allowed-strings "SI" "NO"))  
    (slot ConsultorioEnAvenida (type STRING) (allowed-strings "SI" "NO"))  
    (slot TraidoPorTercero (type STRING) (allowed-strings "SI" "NO"))  

    (slot MemoriaFijacion_PalabrasRepetidas (type NUMBER))  
    (slot PacienteConProblemasAuditivos (type STRING) (allowed-strings "SI" "NO"))  
    (slot PacienteDeprimido (type STRING) (allowed-strings "SI" "NO"))  

    (slot MemoriaAtencion_ClasificacionAtencion (type NUMBER))
    (slot MemoriaRecuerdo_PalabrasRecordadas (type NUMBER))

    (slot PacienteAnsioso (type STRING) (allowed-strings "SI" "NO"))
    (slot Lenguaje_RepiteFraseCorrectamente (type STRING) (allowed-strings "SI" "NO"))  
    (slot Lenguaje_ClasificacionAccion (type NUMBER))
    (slot Lenguaje_CumpleOrdenCorrectamente (type STRING) (allowed-strings "SI" "NO"))  
    (slot Lenguaje_EscribeCorrectamenteFrase (type STRING) (allowed-strings "SI" "NO"))  
    (slot Lenguaje_CosasNombradas (type NUMBER))

    (slot Dibujo_CopiaCorrectamenteDibujo (type STRING) (allowed-strings "SI" "NO"))  

    (slot Olvido_OlvidaHechosRecientes (type STRING) (allowed-strings "SI" "NO"))  
    (slot Olvido_OlvidoProgresa (type STRING) (allowed-strings "SI" "NO"))  
    (slot Olvido_QuejaOlvidoPaciente (type STRING) (allowed-strings "SI" "NO"))  
    (slot Olvido_QuejaOlvidoFamiliar (type STRING) (allowed-strings "SI" "NO"))  
    (slot Olvido_PacienteMinimizaOlvidos (type STRING) (allowed-strings "SI" "NO"))  
    (slot Olvido_ImpactoFuncional (type STRING) (allowed-strings "SI" "NO"))  
    (slot Olvido_ImpactoCaracter (type STRING) (allowed-strings "SI" "NO"))  
)

(deftemplate OrientacionTemporal
    (slot cFecha (type NUMBER))    
    (slot cEstacion (type STRING) (allowed-strings "SI" "NO"))
    (slot cMes (type NUMBER) )    
    (slot cAno (type NUMBER) )
)

(deftemplate OrientacionEspacial
    (slot cLugar (type NUMBER))    
    (slot cCiudad (type NUMBER)) 
    (slot cPais (type NUMBER)) 
    (slot cPiso (type NUMBER)) 
    (slot cCalle (type NUMBER) )
)

(deftemplate Orientacion
    (slot cOrientacionTemporal (type NUMBER))
    (slot cOrientacionEspacial (type NUMBER))
)

(deftemplate MemoriaFijacion
    (slot cPalabrasRepetidas (type NUMBER))
)

(deftemplate MemoriaAtencion
    (slot cClasificacionAtencion (type NUMBER))
)

(deftemplate MemoriaRecuerdo
    (slot cPalabrasRecordadas (type NUMBER))
)

(deftemplate Memoria
    (slot cMemoriaFijacion (type NUMBER))
    (slot cMemoriaAtencion (type NUMBER))
    (slot cMemoriaRecuerdo (type NUMBER))
)

(deftemplate LenguajeAccionPonderado
    (slot cAccionPonderado (type NUMBER))
)
(deftemplate LenguajeAccion
    (slot cAccion (type NUMBER))
)
(deftemplate LenguajeEscrita
    (slot cEscrita (type STRING) (allowed-strings "SI" "NO"))
)
(deftemplate LenguajeOrden
    (slot cOrden (type STRING) (allowed-strings "SI" "NO"))
)   
(deftemplate LenguajeFrase
    (slot cFrase (type STRING) (allowed-strings "SI" "NO"))
)
(deftemplate Lenguaje
    (slot cLenguajeAccion    (type NUMBER))
    (slot cLenguajeEscritura   (type STRING) (allowed-strings "SI" "NO"))
    (slot cLenguajeOrden     (type STRING) (allowed-strings "SI" "NO"))
    (slot cLenguajeFrase     (type STRING) (allowed-strings "SI" "NO"))
)

(deftemplate MiniMental_Calculado
    (slot cOrientacion (type NUMBER))
    (slot cMemoria (type NUMBER))
    (slot cLenguaje (type NUMBER))
    (slot cDibujo (type NUMBER))
)

(deftemplate Diagnostico
    (slot cMiniMental_Calculado (type NUMBER))
    (slot cOlvido (type STRING) (allowed-strings "R" "N"))
    (slot cQueja (type STRING) (allowed-strings "R" "N"))
    (slot cFuncional (type STRING) (allowed-strings "R" "N"))
    (slot cCaracter (type STRING) (allowed-strings "R" "N"))
    (slot Resultado (type STRING) (allowed-strings "OlvidoBenigno" "DemenciaLeve" "DemenciaModerada" "DemenciaSevera"))
)

(
 deffacts Caso-1
 (OrientacionTemporal 
(cFecha 1.00)
(cEstacion "NO")
(cMes 1.00)
(cAno 1.00) )
)

(
 deffacts Caso-2
 (OrientacionEspacial 
(cLugar 1.00)
(cCiudad 1.00)
(cPais 1.00)
(cPiso 1.00)
(cCalle 1.00))
)

(
 deffacts Caso-3
 (Orientacion 
(cOrientacionTemporal 1.00)
(cOrientacionEspacial 1.00)
 )
)

(
 deffacts Caso-4
 (MemoriaFijacion 
(cPalabrasRepetidas 1.00)
 )
)

(
 deffacts Caso-5
 (MemoriaFijacion 
(cPalabrasRepetidas 1.00)
 )
)

(
 deffacts Caso-6
 (MemoriaAtencion 
(cClasificacionAtencion 1.00)
 )
)

(
 deffacts Caso-7
 (MemoriaRecuerdo 
(cPalabrasRecordadas 1.00)
 )
)

(
 deffacts Caso-8
 (Memoria 
(cMemoriaFijacion 1.00)
(cMemoriaAtencion 1.00)
(cMemoriaRecuerdo 1.00)
 )
)

(
 deffacts Caso-9
 (LenguajeAccionPonderado 
(cAccionPonderado 1.00)
 )
)

(
 deffacts Caso-10
 (LenguajeAccion 
(cAccion 1.00)
 )
)

(
 deffacts Caso-11
 (LenguajeEscrita 
(cEscrita "NO")
 )
)

(
 deffacts Caso-12
 (LenguajeOrden 
(cOrden "NO")
 )
)

(
 deffacts Caso-13
 (LenguajeFrase 
(cFrase "NO")
 )
)

(
 deffacts Caso-14
 (Lenguaje 
(cLenguajeAccion 1.00)
(cLenguajeEscritura "NO")
(cLenguajeOrden "NO")
(cLenguajeFrase "NO")
 )
)

(
 deffacts Caso-15
 (MiniMental_Calculado 
(cOrientacion 1.00)
(cMemoria 1.00)
(cLenguaje 1.00)
(cDibujo  1.00)
 )
)

(
 deffacts Caso-16
 (Diagnostico 
(cMiniMental_Calculado 1.00)
(cOlvido "R")
(cQueja "R")
(cFuncional "R")
(cCaracter  "R")
(Resultado  "OlvidoBenigno")
 )
)