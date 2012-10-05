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

)

(deftemplate MiniMental_Calculado

    (slot cOrientacionTemporal_Fecha (type NUMBER))    
    (slot cOrientacionTemporal_Estacion (type STRING) (allowed-strings "SI" "NO"))
    (slot cOrientacionTemporal_Mes (type NUMBER) )

    (slot cOrientacionTemporal (type NUMBER))
    
    
    (slot cOrientacionTemporal_Ano (type NUMBER) )
    
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
(assert (MiniMental_Calculado (cOrientacionTemporal_Fecha -0.5))) (printout t "REGLA-CLIPS-OT-N5-Fecha-1" crlf)
)

(defrule REGLA-CLIPS-OT-N5-Fecha-2 
(Entrevista (OrientacionTemporal_Fecha "SI")) 
=>
(assert (MiniMental_Calculado (cOrientacionTemporal_Fecha 1.0))) (printout t "REGLA-CLIPS-OT-N5-Fecha-2" crlf)
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
 (assert (MiniMental_Calculado (cOrientacionTemporal_Estacion "NO"))) (printout t "Regla-CLIPS-OT-N5-Estacion-1 " crlf)
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
 (assert (MiniMental_Calculado (cOrientacionTemporal_Estacion "SI"))) (printout t "Regla-CLIPS-OT-N5-Estacion-2 " crlf)
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
 (assert (MiniMental_Calculado (cOrientacionTemporal_Estacion "SI"))) (printout t "Regla-CLIPS-OT-N5-Estacion-3 " crlf)
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
 (assert (MiniMental_Calculado (cOrientacionTemporal_Estacion "SI"))) (printout t "Regla-CLIPS-OT-N5-Estacion-5 " crlf) 
 ) 
 

(defrule Regla-CLIPS-OT-N5-Estacion-7 
(Entrevista (OrientacionTemporal_Estacion "NO"))
 (Entrevista (Escolaridad ?r))
 (test (< ?r 6))
 (Entrevista (EsUnaSemanaAntesCambioEstacion "SI"))
 (Entrevista (ContestaEstacionSiguiente "SI"))
 (Entrevista (EsUnaSemanaDespuesCambioEstacion "NO"))
 (Entrevista (ContestaEstacionAnterior "NO" )) 
 => (assert (MiniMental_Calculado (cOrientacionTemporal_Estacion "SI"))) (printout t "Regla-CLIPS-OT-N5-Estacion-7 " crlf) 
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
 (assert (MiniMental_Calculado (cOrientacionTemporal_Estacion "SI"))) (printout t "Regla-CLIPS-OT-N5-Estacion-9 " crlf)
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
 (assert (MiniMental_Calculado (cOrientacionTemporal_Estacion "SI"))) (printout t "Regla-CLIPS-OT-N5-Estacion-11 " crlf)
 )

(defrule REGLA-CLIPS-OT-N5-MES-1
 (Entrevista (OrientacionTemporal_Mes "NO"))
 (Entrevista (EsUltimoDiaMes "NO"))
 (Entrevista (ContestaMesSiguiente "NO"))
 (Entrevista (EsPrimerOSegundoDiaMes "NO"))
 (Entrevista (ContestaMesSiguiente "NO")) 
 =>
 (assert (MiniMental_Calculado (cOrientacionTemporal_Mes -1))) (printout t "REGLA-CLIPS-OT-N5-MES-1" crlf)
)

 
(defrule REGLA-CLIPS-OT-N5-MES-2
 (Entrevista (OrientacionTemporal_Mes "SI"))
 (Entrevista (EsUltimoDiaMes "NO"))
 (Entrevista (ContestaMesSiguiente "NO"))
 (Entrevista (EsPrimerOSegundoDiaMes "NO"))
 (Entrevista (ContestaMesSiguiente "NO")) 
 =>
 (assert (MiniMental_Calculado (cOrientacionTemporal_Mes 1))) (printout t "REGLA-CLIPS-OT-N5-MES-2" crlf)
)

(defrule REGLA-CLIPS-OT-N5-MES-3
 (Entrevista (OrientacionTemporal_Mes "NO"))
 (Entrevista (EsUltimoDiaMes "SI"))
 (Entrevista (ContestaMesSiguiente "SI"))
 (Entrevista (EsPrimerOSegundoDiaMes "NO"))
 (Entrevista (ContestaMesSiguiente "NO")) 
 =>
 (assert (MiniMental_Calculado (cOrientacionTemporal_Mes 1))) (printout t "REGLA-CLIPS-OT-N5-MES-3" crlf)
)

(defrule REGLA-CLIPS-OT-N5-MES-5
 (Entrevista (OrientacionTemporal_Mes "NO"))
 (Entrevista (EsUltimoDiaMes "NO"))
 (Entrevista (ContestaMesSiguiente "NO"))
 (Entrevista (EsPrimerOSegundoDiaMes "SI"))
 (Entrevista (ContestaMesSiguiente "SI")) 
 =>
 (assert (MiniMental_Calculado (cOrientacionTemporal_Mes 1))) (printout t "REGLA-CLIPS-OT-N5-MES-5" crlf)
)