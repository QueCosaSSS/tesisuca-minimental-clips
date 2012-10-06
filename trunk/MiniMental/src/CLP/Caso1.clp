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

(deftemplate MiniMental_Calculado
    (slot cOrientacion (type NUMBER))
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