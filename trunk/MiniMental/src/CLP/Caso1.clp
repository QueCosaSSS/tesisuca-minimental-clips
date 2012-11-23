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
 (Entrevista 
(OrientacionTemporal_Estacion "NO")
(Escolaridad 7)
(EsUnaSemanaAntesCambioEstacion "NO")
(ContestaEstacionSiguiente "NO")
(EsUnaSemanaDespuesCambioEstacion "NO")
(ContestaEstacionAnterior "NO")

(OrientacionTemporal_Fecha "NO")
 )
)

(defrule REGLA-CLIPS-OT-N5-Fecha-1
(Entrevista (OrientacionTemporal_Fecha "NO"))
=>
(assert (OrientacionTemporal (cFecha -0.5))) (printout t "REGLA-CLIPS-OT-N5-Fecha-1" crlf)
)

(defrule REGLA-CLIPS-OT-N5-Fecha-2 
(Entrevista (OrientacionTemporal_Fecha "SI")) 
=>
(assert (OrientacionTemporal (cFecha 1.0))) (printout t "REGLA-CLIPS-OT-N5-Fecha-2" crlf)
)

(defrule Regla-CLIPS-OT-N5-Estacion-1
 (Entrevista (OrientacionTemporal_Estacion "NO")) 
 (Entrevista (Escolaridad ?r))
 (test (> ?r 6))
 (Entrevista (EsUnaSemanaAntesCambioEstacion "NO"))
 (Entrevista (ContestaEstacionSiguiente "NO"))
 (Entrevista (EsUnaSemanaDespuesCambioEstacion "NO"))
 (Entrevista (ContestaEstacionAnterior "NO"))
=>
 (assert (OrientacionTemporal (cEstacion "NO"))) (printout t "Regla-CLIPS-OT-N5-Estacion-1 " crlf)
)
 
(defrule Regla-CLIPS-OT-N5-Estacion-2
 (Entrevista (OrientacionTemporal_Estacion "SI"))
 (Entrevista (Escolaridad ?r))
 (test (> ?r 6))
 (Entrevista (EsUnaSemanaAntesCambioEstacion "NO"))
 (Entrevista (ContestaEstacionSiguiente "NO"))
 (Entrevista (EsUnaSemanaDespuesCambioEstacion "NO"))
 (Entrevista (ContestaEstacionAnterior "NO"))
 =>
 (assert (OrientacionTemporal (cEstacion "SI"))) (printout t "Regla-CLIPS-OT-N5-Estacion-2 " crlf)
)
 
(defrule Regla-CLIPS-OT-N5-Estacion-3
 (Entrevista (OrientacionTemporal_Estacion "NO"))
 (Entrevista (Escolaridad ?r))
 (test (< ?r 6))
 (Entrevista (EsUnaSemanaAntesCambioEstacion "NO"))
 (Entrevista (ContestaEstacionSiguiente "NO"))
 (Entrevista (EsUnaSemanaDespuesCambioEstacion "NO"))
 (Entrevista (ContestaEstacionAnterior "NO"))
 =>
 (assert (OrientacionTemporal (cEstacion "SI"))) (printout t "Regla-CLIPS-OT-N5-Estacion-3 " crlf)
 ) 

(defrule Regla-CLIPS-OT-N5-Estacion-5
 (Entrevista (OrientacionTemporal_Estacion "NO"))
 (Entrevista (Escolaridad ?r))
 (test (> ?r 6))
 (Entrevista (EsUnaSemanaAntesCambioEstacion "SI"))
 (Entrevista (ContestaEstacionSiguiente "SI"))
 (Entrevista (EsUnaSemanaDespuesCambioEstacion "NO"))
 (Entrevista (ContestaEstacionAnterior "NO")) 
 => 
 (assert (OrientacionTemporal (cEstacion "SI"))) (printout t "Regla-CLIPS-OT-N5-Estacion-5 " crlf) 
 ) 
 

(defrule Regla-CLIPS-OT-N5-Estacion-7 
(Entrevista (OrientacionTemporal_Estacion "NO"))
 (Entrevista (Escolaridad ?r))
 (test (< ?r 6))
 (Entrevista (EsUnaSemanaAntesCambioEstacion "SI"))
 (Entrevista (ContestaEstacionSiguiente "SI"))
 (Entrevista (EsUnaSemanaDespuesCambioEstacion "NO"))
 (Entrevista (ContestaEstacionAnterior "NO" )) 
 => (assert (OrientacionTemporal (cEstacion "SI"))) (printout t "Regla-CLIPS-OT-N5-Estacion-7 " crlf) 
 )
 
(defrule Regla-CLIPS-OT-N5-Estacion-9 
 (Entrevista (OrientacionTemporal_Estacion "NO"))
 (Entrevista (Escolaridad ?r))
 (test (> ?r 6))
 (Entrevista (EsUnaSemanaAntesCambioEstacion "NO"))
 (Entrevista (ContestaEstacionSiguiente "NO"))
 (Entrevista (EsUnaSemanaDespuesCambioEstacion "SI"))
 (Entrevista (ContestaEstacionAnterior "SI"))
 =>
 (assert (OrientacionTemporal (cEstacion "SI"))) (printout t "Regla-CLIPS-OT-N5-Estacion-9 " crlf)
 ) 
 
(defrule Regla-CLIPS-OT-N5-Estacion-11 
 (Entrevista (OrientacionTemporal_Estacion "NO"))
 (Entrevista (Escolaridad ?r))
 (test (< ?r 6))
 (Entrevista (EsUnaSemanaAntesCambioEstacion "NO"))
 (Entrevista (ContestaEstacionSiguiente "NO"))
 (Entrevista (EsUnaSemanaDespuesCambioEstacion "SI"))
 (Entrevista (ContestaEstacionAnterior "SI")) 
 =>
 (assert (OrientacionTemporal (cEstacion "SI"))) (printout t "Regla-CLIPS-OT-N5-Estacion-11 " crlf)
 )

(defrule REGLA-CLIPS-OT-N5-MES-1
 (Entrevista (OrientacionTemporal_Mes "NO"))
 (Entrevista (EsUltimoDiaMes "NO"))
 (Entrevista (ContestaMesSiguiente "NO"))
 (Entrevista (EsPrimerOSegundoDiaMes "NO"))
 (Entrevista (ContestaMesSiguiente "NO")) 
 =>
 (assert (OrientacionTemporal (cMes -1))) (printout t "REGLA-CLIPS-OT-N5-MES-1" crlf)
)

 
(defrule REGLA-CLIPS-OT-N5-MES-2
 (Entrevista (OrientacionTemporal_Mes "SI"))
 (Entrevista (EsUltimoDiaMes "NO"))
 (Entrevista (ContestaMesSiguiente "NO"))
 (Entrevista (EsPrimerOSegundoDiaMes "NO"))
 (Entrevista (ContestaMesSiguiente "NO")) 
 =>
 (assert (OrientacionTemporal (cMes 1))) (printout t "REGLA-CLIPS-OT-N5-MES-2" crlf)
)

(defrule REGLA-CLIPS-OT-N5-MES-3
 (Entrevista (OrientacionTemporal_Mes "NO"))
 (Entrevista (EsUltimoDiaMes "SI"))
 (Entrevista (ContestaMesSiguiente "SI"))
 (Entrevista (EsPrimerOSegundoDiaMes "NO"))
 (Entrevista (ContestaMesSiguiente "NO")) 
 =>
 (assert (OrientacionTemporal (cMes 1.0))) (printout t "REGLA-CLIPS-OT-N5-MES-3" crlf)
)

(defrule REGLA-CLIPS-OT-N5-MES-5
 (Entrevista (OrientacionTemporal_Mes "NO"))
 (Entrevista (EsUltimoDiaMes "NO"))
 (Entrevista (ContestaMesSiguiente "NO"))
 (Entrevista (EsPrimerOSegundoDiaMes "SI"))
 (Entrevista (ContestaMesSiguiente "SI")) 
 =>
 (assert (OrientacionTemporal (cMes 1.0))) (printout t "REGLA-CLIPS-OT-N5-MES-5" crlf)
)

(defrule REGLA-CLIPS-OT-N5-ANO-1
(Entrevista (OrientacionTemporal_Ano "NO"))
(Entrevista (EsPrimerQuincenaAno "NO"))
(Entrevista (ContestaAnoAnterior "NO")) 
=>
(assert (OrientacionTemporal (cAno -2.5))) (printout t "REGLA-CLIPS-OT-N5-ANO-1" crlf)
)
 
(defrule REGLA-CLIPS-OT-N5-ANO-2
(Entrevista ( OrientacionTemporal_Ano "SI" ))
(Entrevista ( EsPrimerQuincenaAno "NO"))
(Entrevista ( ContestaAnoAnterior "NO" )) 
=>
(assert (OrientacionTemporal (cAno 1.0))) (printout t "REGLA-CLIPS-OT-N5-ANO-2" crlf)
)

(defrule REGLA-CLIPS-OT-N5-ANO-3
(Entrevista ( OrientacionTemporal_Ano "NO" ))
(Entrevista ( EsPrimerQuincenaAno "SI"))
(Entrevista ( ContestaAnoAnterior "SI" )) 
=>
(assert (OrientacionTemporal (cAno 1.0))) (printout t "REGLA-CLIPS-OT-N5-ANO-3" crlf)
) 

(defrule REGLA-CLIPS-OT-N4-1(Entrevista ( OrientacionTemporal_DiaSemana "NO" )) (OrientacionTemporal (cFecha -0.5 )) (OrientacionTemporal ( cMes 0 )) (OrientacionTemporal (cAno -2.5 )) (OrientacionTemporal (cEstacion "NO" )) => (assert (Orientacion (cOrientacionTemporal -3))) (printout t "REGLA-CLIPS-OT-N4-1" crlf))
(defrule REGLA-CLIPS-OT-N4-2(Entrevista ( OrientacionTemporal_DiaSemana "SI" )) (OrientacionTemporal (cFecha -0.5 )) (OrientacionTemporal ( cMes 0 )) (OrientacionTemporal (cAno -2.5 )) (OrientacionTemporal (cEstacion "NO" )) => (assert (Orientacion (cOrientacionTemporal -2))) (printout t "REGLA-CLIPS-OT-N4-2" crlf))
(defrule REGLA-CLIPS-OT-N4-3(Entrevista ( OrientacionTemporal_DiaSemana "NO" )) (OrientacionTemporal (cFecha 1 )) (OrientacionTemporal ( cMes 0 )) (OrientacionTemporal (cAno -2.5 )) (OrientacionTemporal (cEstacion "NO" )) => (assert (Orientacion (cOrientacionTemporal -1.5))) (printout t "REGLA-CLIPS-OT-N4-3" crlf))
(defrule REGLA-CLIPS-OT-N4-4(Entrevista ( OrientacionTemporal_DiaSemana "SI" )) (OrientacionTemporal (cFecha 1 )) (OrientacionTemporal ( cMes 0 )) (OrientacionTemporal (cAno -2.5 )) (OrientacionTemporal (cEstacion "NO" )) => (assert (Orientacion (cOrientacionTemporal -0.5))) (printout t "REGLA-CLIPS-OT-N4-4" crlf))
(defrule REGLA-CLIPS-OT-N4-5(Entrevista ( OrientacionTemporal_DiaSemana "NO" )) (OrientacionTemporal (cFecha -0.5 )) (OrientacionTemporal ( cMes 1 )) (OrientacionTemporal (cAno -2.5 )) (OrientacionTemporal (cEstacion "NO" )) => (assert (Orientacion (cOrientacionTemporal -2))) (printout t "REGLA-CLIPS-OT-N4-5" crlf))
(defrule REGLA-CLIPS-OT-N4-6(Entrevista ( OrientacionTemporal_DiaSemana "SI" )) (OrientacionTemporal (cFecha -0.5 )) (OrientacionTemporal ( cMes 1 )) (OrientacionTemporal (cAno -2.5 )) (OrientacionTemporal (cEstacion "NO" )) => (assert (Orientacion (cOrientacionTemporal -1))) (printout t "REGLA-CLIPS-OT-N4-6" crlf))
(defrule REGLA-CLIPS-OT-N4-7(Entrevista ( OrientacionTemporal_DiaSemana "NO" )) (OrientacionTemporal (cFecha 1 )) (OrientacionTemporal ( cMes 1 )) (OrientacionTemporal (cAno -2.5 )) (OrientacionTemporal (cEstacion "NO" )) => (assert (Orientacion (cOrientacionTemporal -0.5))) (printout t "REGLA-CLIPS-OT-N4-7" crlf))
(defrule REGLA-CLIPS-OT-N4-8(Entrevista ( OrientacionTemporal_DiaSemana "SI" )) (OrientacionTemporal (cFecha 1 )) (OrientacionTemporal ( cMes 1 )) (OrientacionTemporal (cAno -2.5 )) (OrientacionTemporal (cEstacion "NO" )) => (assert (Orientacion (cOrientacionTemporal 0.5))) (printout t "REGLA-CLIPS-OT-N4-8" crlf))
(defrule REGLA-CLIPS-OT-N4-9(Entrevista ( OrientacionTemporal_DiaSemana "NO" )) (OrientacionTemporal (cFecha -0.5 )) (OrientacionTemporal ( cMes 0 )) (OrientacionTemporal (cAno 1 )) (OrientacionTemporal (cEstacion "NO" )) => (assert (Orientacion (cOrientacionTemporal 0.5))) (printout t "REGLA-CLIPS-OT-N4-9" crlf))
(defrule REGLA-CLIPS-OT-N4-10(Entrevista ( OrientacionTemporal_DiaSemana "SI" )) (OrientacionTemporal (cFecha -0.5 )) (OrientacionTemporal ( cMes 0 )) (OrientacionTemporal (cAno 1 )) (OrientacionTemporal (cEstacion "NO" )) => (assert (Orientacion (cOrientacionTemporal 1.5))) (printout t "REGLA-CLIPS-OT-N4-10" crlf))
(defrule REGLA-CLIPS-OT-N4-11(Entrevista ( OrientacionTemporal_DiaSemana "NO" )) (OrientacionTemporal (cFecha 1 )) (OrientacionTemporal ( cMes 0 )) (OrientacionTemporal (cAno 1 )) (OrientacionTemporal (cEstacion "NO" )) => (assert (Orientacion (cOrientacionTemporal 2))) (printout t "REGLA-CLIPS-OT-N4-11" crlf))
(defrule REGLA-CLIPS-OT-N4-12(Entrevista ( OrientacionTemporal_DiaSemana "SI" )) (OrientacionTemporal (cFecha 1 )) (OrientacionTemporal ( cMes 0 )) (OrientacionTemporal (cAno 1 )) (OrientacionTemporal (cEstacion "NO" )) => (assert (Orientacion (cOrientacionTemporal 3))) (printout t "REGLA-CLIPS-OT-N4-12" crlf))
(defrule REGLA-CLIPS-OT-N4-13(Entrevista ( OrientacionTemporal_DiaSemana "NO" )) (OrientacionTemporal (cFecha -0.5 )) (OrientacionTemporal ( cMes 1 )) (OrientacionTemporal (cAno 1 )) (OrientacionTemporal (cEstacion "NO" )) => (assert (Orientacion (cOrientacionTemporal 1.5))) (printout t "REGLA-CLIPS-OT-N4-13" crlf))
(defrule REGLA-CLIPS-OT-N4-14(Entrevista ( OrientacionTemporal_DiaSemana "SI" )) (OrientacionTemporal (cFecha -0.5 )) (OrientacionTemporal ( cMes 1 )) (OrientacionTemporal (cAno 1 )) (OrientacionTemporal (cEstacion "NO" )) => (assert (Orientacion (cOrientacionTemporal 2.5))) (printout t "REGLA-CLIPS-OT-N4-14" crlf))
(defrule REGLA-CLIPS-OT-N4-15(Entrevista ( OrientacionTemporal_DiaSemana "NO" )) (OrientacionTemporal (cFecha 1 )) (OrientacionTemporal ( cMes 1 )) (OrientacionTemporal (cAno 1 )) (OrientacionTemporal (cEstacion "NO" )) => (assert (Orientacion (cOrientacionTemporal 3))) (printout t "REGLA-CLIPS-OT-N4-15" crlf))
(defrule REGLA-CLIPS-OT-N4-16(Entrevista ( OrientacionTemporal_DiaSemana "SI" )) (OrientacionTemporal (cFecha 1 )) (OrientacionTemporal ( cMes 1 )) (OrientacionTemporal (cAno 1 )) (OrientacionTemporal (cEstacion "NO" )) => (assert (Orientacion (cOrientacionTemporal 4))) (printout t "REGLA-CLIPS-OT-N4-16" crlf))
(defrule REGLA-CLIPS-OT-N4-17(Entrevista ( OrientacionTemporal_DiaSemana "NO" )) (OrientacionTemporal (cFecha -0.5 )) (OrientacionTemporal ( cMes 0 )) (OrientacionTemporal (cAno -2.5 )) (OrientacionTemporal (cEstacion "SI" )) => (assert (Orientacion (cOrientacionTemporal -2))) (printout t "REGLA-CLIPS-OT-N4-17" crlf))
(defrule REGLA-CLIPS-OT-N4-18(Entrevista ( OrientacionTemporal_DiaSemana "SI" )) (OrientacionTemporal (cFecha -0.5 )) (OrientacionTemporal ( cMes 0 )) (OrientacionTemporal (cAno -2.5 )) (OrientacionTemporal (cEstacion "SI" )) => (assert (Orientacion (cOrientacionTemporal -1))) (printout t "REGLA-CLIPS-OT-N4-18" crlf))
(defrule REGLA-CLIPS-OT-N4-19(Entrevista ( OrientacionTemporal_DiaSemana "NO" )) (OrientacionTemporal (cFecha 1 )) (OrientacionTemporal ( cMes 0 )) (OrientacionTemporal (cAno -2.5 )) (OrientacionTemporal (cEstacion "SI" )) => (assert (Orientacion (cOrientacionTemporal -0.5))) (printout t "REGLA-CLIPS-OT-N4-19" crlf))
(defrule REGLA-CLIPS-OT-N4-20(Entrevista ( OrientacionTemporal_DiaSemana "SI" )) (OrientacionTemporal (cFecha 1 )) (OrientacionTemporal ( cMes 0 )) (OrientacionTemporal (cAno -2.5 )) (OrientacionTemporal (cEstacion "SI" )) => (assert (Orientacion (cOrientacionTemporal 0.5))) (printout t "REGLA-CLIPS-OT-N4-20" crlf))
(defrule REGLA-CLIPS-OT-N4-21(Entrevista ( OrientacionTemporal_DiaSemana "NO" )) (OrientacionTemporal (cFecha -0.5 )) (OrientacionTemporal ( cMes 1 )) (OrientacionTemporal (cAno -2.5 )) (OrientacionTemporal (cEstacion "SI" )) => (assert (Orientacion (cOrientacionTemporal -1))) (printout t "REGLA-CLIPS-OT-N4-21" crlf))
(defrule REGLA-CLIPS-OT-N4-22(Entrevista ( OrientacionTemporal_DiaSemana "SI" )) (OrientacionTemporal (cFecha -0.5 )) (OrientacionTemporal ( cMes 1 )) (OrientacionTemporal (cAno -2.5 )) (OrientacionTemporal (cEstacion "SI" )) => (assert (Orientacion (cOrientacionTemporal 0))) (printout t "REGLA-CLIPS-OT-N4-22" crlf))
(defrule REGLA-CLIPS-OT-N4-23(Entrevista ( OrientacionTemporal_DiaSemana "NO" )) (OrientacionTemporal (cFecha 1 )) (OrientacionTemporal ( cMes 1 )) (OrientacionTemporal (cAno -2.5 )) (OrientacionTemporal (cEstacion "SI" )) => (assert (Orientacion (cOrientacionTemporal 0.5))) (printout t "REGLA-CLIPS-OT-N4-23" crlf))
(defrule REGLA-CLIPS-OT-N4-24(Entrevista ( OrientacionTemporal_DiaSemana "SI" )) (OrientacionTemporal (cFecha 1 )) (OrientacionTemporal ( cMes 1 )) (OrientacionTemporal (cAno -2.5 )) (OrientacionTemporal (cEstacion "SI" )) => (assert (Orientacion (cOrientacionTemporal 1.5))) (printout t "REGLA-CLIPS-OT-N4-24" crlf))
(defrule REGLA-CLIPS-OT-N4-25(Entrevista ( OrientacionTemporal_DiaSemana "NO" )) (OrientacionTemporal (cFecha -0.5 )) (OrientacionTemporal ( cMes 0 )) (OrientacionTemporal (cAno 1 )) (OrientacionTemporal (cEstacion "SI" )) => (assert (Orientacion (cOrientacionTemporal 1.5))) (printout t "REGLA-CLIPS-OT-N4-25" crlf))
(defrule REGLA-CLIPS-OT-N4-26(Entrevista ( OrientacionTemporal_DiaSemana "SI" )) (OrientacionTemporal (cFecha -0.5 )) (OrientacionTemporal ( cMes 0 )) (OrientacionTemporal (cAno 1 )) (OrientacionTemporal (cEstacion "SI" )) => (assert (Orientacion (cOrientacionTemporal 2.5))) (printout t "REGLA-CLIPS-OT-N4-26" crlf))
(defrule REGLA-CLIPS-OT-N4-27(Entrevista ( OrientacionTemporal_DiaSemana "NO" )) (OrientacionTemporal (cFecha 1 )) (OrientacionTemporal ( cMes 0 )) (OrientacionTemporal (cAno 1 )) (OrientacionTemporal (cEstacion "SI" )) => (assert (Orientacion (cOrientacionTemporal 3))) (printout t "REGLA-CLIPS-OT-N4-27" crlf))
(defrule REGLA-CLIPS-OT-N4-28(Entrevista ( OrientacionTemporal_DiaSemana "SI" )) (OrientacionTemporal (cFecha 1 )) (OrientacionTemporal ( cMes 0 )) (OrientacionTemporal (cAno 1 )) (OrientacionTemporal (cEstacion "SI" )) => (assert (Orientacion (cOrientacionTemporal 4))) (printout t "REGLA-CLIPS-OT-N4-28" crlf))
(defrule REGLA-CLIPS-OT-N4-29(Entrevista ( OrientacionTemporal_DiaSemana "NO" )) (OrientacionTemporal (cFecha -0.5 )) (OrientacionTemporal ( cMes 1 )) (OrientacionTemporal (cAno 1 )) (OrientacionTemporal (cEstacion "SI" )) => (assert (Orientacion (cOrientacionTemporal 2.5))) (printout t "REGLA-CLIPS-OT-N4-29" crlf))
(defrule REGLA-CLIPS-OT-N4-30(Entrevista ( OrientacionTemporal_DiaSemana "SI" )) (OrientacionTemporal (cFecha -0.5 )) (OrientacionTemporal ( cMes 1 )) (OrientacionTemporal (cAno 1 )) (OrientacionTemporal (cEstacion "SI" )) => (assert (Orientacion (cOrientacionTemporal 3.5))) (printout t "REGLA-CLIPS-OT-N4-30" crlf))
(defrule REGLA-CLIPS-OT-N4-31(Entrevista ( OrientacionTemporal_DiaSemana "NO" )) (OrientacionTemporal (cFecha 1 )) (OrientacionTemporal ( cMes 1 )) (OrientacionTemporal (cAno 1 )) (OrientacionTemporal (cEstacion "SI" )) => (assert (Orientacion (cOrientacionTemporal 4))) (printout t "REGLA-CLIPS-OT-N4-31" crlf))
(defrule REGLA-CLIPS-OT-N4-32(Entrevista ( OrientacionTemporal_DiaSemana "SI" )) (OrientacionTemporal (cFecha 1 )) (OrientacionTemporal ( cMes 1 )) (OrientacionTemporal (cAno 1 )) (OrientacionTemporal (cEstacion "SI" )) => (assert (Orientacion (cOrientacionTemporal 5))) (printout t "REGLA-CLIPS-OT-N4-32" crlf))

(defrule REGLA-CLIPS-OE-N5-Pais-1
(Entrevista (OrientacionEspacial_Pais "NO"))
=>
(assert (OrientacionEspacial (cPais -2.5))) (printout t "REGLA-CLIPS-OE-N5-Pais-1" crlf)
)

(defrule REGLA-CLIPS-OE-N5-Pais-2 
(Entrevista (OrientacionEspacial_Pais "SI")) 
=>
(assert (OrientacionEspacial (cPais 1.0))) (printout t "REGLA-CLIPS-OE-N5-Pais-2 " crlf)
)

(defrule REGLA-CLIPS-OE-N5-Ciudad-1
(Entrevista (OrientacionEspacial_Ciudad "NO"))
=>
(assert (OrientacionEspacial (cCiudad -2.5))) (printout t "REGLA-CLIPS-OE-N5-Ciudad-1" crlf)
)

(defrule REGLA-CLIPS-OE-N5-Ciudad-2 
(Entrevista (OrientacionEspacial_Ciudad "SI")) 
=>
(assert (OrientacionEspacial (cCiudad 1.0))) (printout t "REGLA-CLIPS-OE-N5-Ciudad-2 " crlf)
)

(defrule REGLA-CLIPS-OE-N5-Lugar-1
(Entrevista (OrientacionEspacial_Lugar "NO"))
=>
(assert (OrientacionEspacial (cLugar -1.0))) (printout t "REGLA-CLIPS-OE-N5-Lugar-1" crlf)
)
(defrule REGLA-CLIPS-OE-N5-Lugar-2 
(Entrevista (OrientacionEspacial_Lugar "SI")) 
=>
(assert (OrientacionEspacial (cLugar 1.0))) (printout t "REGLA-CLIPS-OE-N5-Lugar-2 " crlf)
)

(defrule REGLA-OE-N5-PISO-1 (Entrevista (OrientacionEspacial_Piso "NO" )) (Entrevista (ConsultorioEnEntrepiso "NO" )) (Entrevista (DiferenciaEntrePisoContestadoReal ?r))(test (< ?r 2)) => (assert (OrientacionEspacial (cPiso -0.5))) (printout t "REGLA-OE-N5-PISO-1" crlf))
(defrule REGLA-OE-N5-PISO-2 (Entrevista (OrientacionEspacial_Piso "SI" )) (Entrevista (ConsultorioEnEntrepiso "NO" )) (Entrevista (DiferenciaEntrePisoContestadoReal ?r))(test (< ?r 2)) => (assert (OrientacionEspacial (cPiso 1.0))) (printout t "REGLA-OE-N5-PISO-2" crlf))
(defrule REGLA-OE-N5-PISO-3 (Entrevista (OrientacionEspacial_Piso "NO" )) (Entrevista (ConsultorioEnEntrepiso "SI" )) (Entrevista (DiferenciaEntrePisoContestadoReal ?r))(test (< ?r 2)) => (assert (OrientacionEspacial (cPiso 0.0))) (printout t "REGLA-OE-N5-PISO-3" crlf))
(defrule REGLA-OE-N5-PISO-5/7 (Entrevista (OrientacionEspacial_Piso "NO" ))(Entrevista (DiferenciaEntrePisoContestadoReal ?r))(test (< ?r 2)) => (assert (OrientacionEspacial (cPiso 1.0))) (printout t "REGLA-OE-N5-PISO-5/7" crlf))

(defrule REGLA-OE-N5-CALLE-1 (Entrevista (OrientacionEspacial_Calle "NO" )) (Entrevista (TraidoPorTercero "NO" )) (Entrevista (ConsultorioEnAvenida "SI" )) => (assert (OrientacionEspacial (cCalle -0.5))) (printout t "REGLA-OE-N5-CALLE-1" crlf))
(defrule REGLA-OE-N5-CALLE-2 (Entrevista (OrientacionEspacial_Calle "SI" )) (Entrevista (TraidoPorTercero "NO" )) (Entrevista (ConsultorioEnAvenida "SI" )) => (assert (OrientacionEspacial (cCalle 1.0))) (printout t "REGLA-OE-N5-CALLE-2" crlf))
(defrule REGLA-OE-N5-CALLE-3 (Entrevista (OrientacionEspacial_Calle "NO" )) (Entrevista (TraidoPorTercero "SI" )) (Entrevista (ConsultorioEnAvenida "SI" )) => (assert (OrientacionEspacial (cCalle 1.0))) (printout t "REGLA-OE-N5-CALLE-3" crlf))
(defrule REGLA-OE-N5-CALLE-5/7 (Entrevista (OrientacionEspacial_Calle "NO" )) (Entrevista (ConsultorioEnAvenida "NO" )) => (assert (OrientacionEspacial (cCalle 1.0))) (printout t "REGLA-OE-N5-CALLE-5/7" crlf))

(defrule REGLA-MF-N5-PALABRA-1 (Entrevista (MemoriaFijacion_PalabrasRepetidas 0 )) => (assert (MemoriaFijacion (cPalabrasRepetidas -5.0))) (printout t "REGLA-MF-N5-PALABRA-1" crlf))
(defrule REGLA-MF-N5-PALABRA-2 (Entrevista (MemoriaFijacion_PalabrasRepetidas 1 )) => (assert (MemoriaFijacion (cPalabrasRepetidas -2.0))) (printout t "REGLA-MF-N5-PALABRA-2" crlf))
(defrule REGLA-MF-N5-PALABRA-3 (Entrevista (MemoriaFijacion_PalabrasRepetidas 2 )) => (assert (MemoriaFijacion (cPalabrasRepetidas -0.5))) (printout t "REGLA-MF-N5-PALABRA-3" crlf))
(defrule REGLA-MF-N5-PALABRA-4 (Entrevista (MemoriaFijacion_PalabrasRepetidas 3 )) => (assert (MemoriaFijacion (cPalabrasRepetidas 3.0))) (printout t "REGLA-MF-N5-PALABRA-4" crlf))

(defrule REGLA-MF-N4-1 (MemoriaFijacion (cPalabrasRepetidas -5 )) (Entrevista (PacienteConProblemasAuditivos "NO" )) (Entrevista (PacienteDeprimido "NO" )) => (assert (Memoria (cMemoriaFijacion  -5.0))) (printout t "REGLA-MF-N4-1" crlf))
(defrule REGLA-MF-N4-2 (MemoriaFijacion (cPalabrasRepetidas -2 )) (Entrevista (PacienteConProblemasAuditivos "NO" )) (Entrevista (PacienteDeprimido "NO" )) => (assert (Memoria (cMemoriaFijacion  -2.0))) (printout t "REGLA-MF-N4-2" crlf))
(defrule REGLA-MF-N4-3 (MemoriaFijacion (cPalabrasRepetidas -0.5 )) (Entrevista (PacienteConProblemasAuditivos "NO" )) (Entrevista (PacienteDeprimido "NO" )) => (assert (Memoria (cMemoriaFijacion  -0.5))) (printout t "REGLA-MF-N4-3" crlf))
(defrule REGLA-MF-N4-4 (MemoriaFijacion (cPalabrasRepetidas 3 )) (Entrevista (PacienteConProblemasAuditivos "NO" )) (Entrevista (PacienteDeprimido "NO" )) => (assert (Memoria (cMemoriaFijacion  3.0))) (printout t "REGLA-MF-N4-4" crlf))
(defrule REGLA-MF-N4-5/8 (Entrevista (PacienteConProblemasAuditivos "SI" )) (Entrevista (PacienteDeprimido "NO" )) => (assert (Memoria (cMemoriaFijacion  3.0))) (printout t "REGLA-MF-N4-5-8" crlf))
(defrule REGLA-MF-N4-9/16 (Entrevista (PacienteDeprimido "SI" )) => (assert (Memoria (cMemoriaFijacion  3.0))) (printout t "REGLA-MF-N4-9 - 16" crlf))

(defrule REGLA-MA-N5-ATENCION-1 (Entrevista (MemoriaAtencion_ClasificacionAtencion 0 )) => (assert (MemoriaAtencion (cClasificacionAtencion -1.25))) (printout t "REGLA-MA-N5-ATENCION-1" crlf))
(defrule REGLA-MA-N5-ATENCION-2 (Entrevista (MemoriaAtencion_ClasificacionAtencion 1 )) => (assert (MemoriaAtencion (cClasificacionAtencion 0.00))) (printout t "REGLA-MA-N5-ATENCION-2" crlf))
(defrule REGLA-MA-N5-ATENCION-3 (Entrevista (MemoriaAtencion_ClasificacionAtencion 2 )) => (assert (MemoriaAtencion (cClasificacionAtencion 1.25))) (printout t "REGLA-MA-N5-ATENCION-3" crlf))
(defrule REGLA-MA-N5-ATENCION-4 (Entrevista (MemoriaAtencion_ClasificacionAtencion 3 )) => (assert (MemoriaAtencion (cClasificacionAtencion 2.50))) (printout t "REGLA-MA-N5-ATENCION-4" crlf))
(defrule REGLA-MA-N5-ATENCION-5 (Entrevista (MemoriaAtencion_ClasificacionAtencion 4 )) => (assert (MemoriaAtencion (cClasificacionAtencion 3.75))) (printout t "REGLA-MA-N5-ATENCION-5" crlf))
(defrule REGLA-MA-N5-ATENCION-6 (Entrevista (MemoriaAtencion_ClasificacionAtencion 5 )) => (assert (MemoriaAtencion (cClasificacionAtencion 5.00))) (printout t "REGLA-MA-N5-ATENCION-6" crlf))

(defrule REGLA-MA-N4-1/6 (Entrevista (PacienteConProblemasAuditivos "NO" )) (Entrevista (PacienteDeprimido "SI" )) => (assert (Memoria (cMemoriaFijacion  5.0))) (printout t "REGLA-MA-N4-1-6" crlf))
(defrule REGLA-MA-N4-7/12 (Entrevista (PacienteConProblemasAuditivos "SI" )) (Entrevista (PacienteDeprimido "NO" )) => (assert (Memoria (cMemoriaFijacion  5.0))) (printout t "REGLA-MA-N4-7-12" crlf))
(defrule REGLA-MA-N4-13 (MemoriaAtencion (cClasificacionAtencion -1.25 )) (Entrevista (PacienteConProblemasAuditivos "NO" )) (Entrevista (PacienteDeprimido "NO" )) => (assert (Memoria (cMemoriaFijacion  -1.3))) (printout t "REGLA-MA-N4-13" crlf))
(defrule REGLA-MA-N4-14 (MemoriaAtencion (cClasificacionAtencion 0 )) (Entrevista (PacienteConProblemasAuditivos "NO" )) (Entrevista (PacienteDeprimido "NO" )) => (assert (Memoria (cMemoriaFijacion  0.0))) (printout t "REGLA-MA-N4-14" crlf))
(defrule REGLA-MA-N4-15 (MemoriaAtencion (cClasificacionAtencion 1.25 )) (Entrevista (PacienteConProblemasAuditivos "NO" )) (Entrevista (PacienteDeprimido "NO" )) => (assert (Memoria (cMemoriaFijacion  1.3))) (printout t "REGLA-MA-N4-15" crlf))
(defrule REGLA-MA-N4-16 (MemoriaAtencion (cClasificacionAtencion 2.5 )) (Entrevista (PacienteConProblemasAuditivos "NO" )) (Entrevista (PacienteDeprimido "NO" )) => (assert (Memoria (cMemoriaFijacion  2.5))) (printout t "REGLA-MA-N4-16" crlf))
(defrule REGLA-MA-N4-17 (MemoriaAtencion (cClasificacionAtencion 3.75 )) (Entrevista (PacienteConProblemasAuditivos "NO" )) (Entrevista (PacienteDeprimido "NO" )) => (assert (Memoria (cMemoriaFijacion  3.8))) (printout t "REGLA-MA-N4-17" crlf))
(defrule REGLA-MA-N4-18 (MemoriaAtencion (cClasificacionAtencion 5 )) (Entrevista (PacienteConProblemasAuditivos "NO" )) (Entrevista (PacienteDeprimido "NO" )) => (assert (Memoria (cMemoriaFijacion  5.0))) (printout t "REGLA-MA-N4-18" crlf))

(defrule REGLA-MR-N5-RECUERDO-1 (Entrevista (MemoriaRecuerdo_PalabrasRecordadas 0 )) => (assert (MemoriaRecuerdo (cPalabrasRecordadas -5.0))) (printout t "REGLA-MR-N5-RECUERDO-1" crlf))
(defrule REGLA-MR-N5-RECUERDO-2 (Entrevista (MemoriaRecuerdo_PalabrasRecordadas 1 )) => (assert (MemoriaRecuerdo (cPalabrasRecordadas -2.0))) (printout t "REGLA-MR-N5-RECUERDO-2" crlf))
(defrule REGLA-MR-N5-RECUERDO-3 (Entrevista (MemoriaRecuerdo_PalabrasRecordadas 2 )) => (assert (MemoriaRecuerdo (cPalabrasRecordadas -0.5))) (printout t "REGLA-MR-N5-RECUERDO-3" crlf))
(defrule REGLA-MR-N5-RECUERDO-4 (Entrevista (MemoriaRecuerdo_PalabrasRecordadas 4 )) => (assert (MemoriaRecuerdo (cPalabrasRecordadas 3.0))) (printout t "REGLA-MR-N5-RECUERDO-4" crlf))

(defrule REGLA-MR-N4-1 (MemoriaRecuerdo (cPalabrasRecordadas -5 )) (Entrevista (PacienteConProblemasAuditivos "NO" )) (Entrevista (PacienteDeprimido "NO" )) => (assert (Memoria (cMemoriaFijacion  -5.0))) (printout t "REGLA-MR-N4-1" crlf))
(defrule REGLA-MR-N4-2 (MemoriaRecuerdo (cPalabrasRecordadas -2 )) (Entrevista (PacienteConProblemasAuditivos "NO" )) (Entrevista (PacienteDeprimido "NO" )) => (assert (Memoria (cMemoriaFijacion  -2.0))) (printout t "REGLA-MR-N4-2" crlf))
(defrule REGLA-MR-N4-3 (MemoriaRecuerdo (cPalabrasRecordadas -0.5 )) (Entrevista (PacienteConProblemasAuditivos "NO" )) (Entrevista (PacienteDeprimido "NO" )) => (assert (Memoria (cMemoriaFijacion  -0.5))) (printout t "REGLA-MR-N4-3" crlf))
(defrule REGLA-MR-N4-4 (MemoriaRecuerdo (cPalabrasRecordadas 3 )) (Entrevista (PacienteConProblemasAuditivos "NO" )) (Entrevista (PacienteDeprimido "NO" )) => (assert (Memoria (cMemoriaFijacion  3.0))) (printout t "REGLA-MR-N4-4" crlf))
(defrule REGLA-MR-N4-5/8 (Entrevista (PacienteConProblemasAuditivos "SI" )) (Entrevista (PacienteDeprimido "NO" )) => (assert (Memoria (cMemoriaFijacion  3.0))) (printout t "REGLA-MR-N4-5-8" crlf))
(defrule REGLA-MR-N4-9/16 (Entrevista (PacienteDeprimido "SI" )) => (assert (Memoria (cMemoriaFijacion  3.0))) (printout t "REGLA-MR-N4-9-16" crlf))
