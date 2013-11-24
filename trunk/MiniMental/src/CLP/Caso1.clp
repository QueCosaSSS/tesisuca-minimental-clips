
;*----------------------------------------------------------------------*
;* Definición (DefTemplates)                                            *
;*----------------------------------------------------------------------*


(deftemplate Entrevista "Entrevista con el Paciente"
    (slot Escolaridad (type NUMBER))

    (slot OrientacionTemporal_Fecha (type STRING) (allowed-strings "SI" "NO"))

    (slot OrientacionTemporal_Estacion     (type STRING) (allowed-strings "SI" "NO"))
    (slot EsUnaSemanaAntesCambioEstacion   (type STRING) (allowed-strings "SI" "NO"))
    (slot EsUnaSemanaDespuesCambioEstacion (type STRING) (allowed-strings "SI" "NO"))
    (slot ContestaEstacionSiguiente        (type STRING) (allowed-strings "SI" "NO"))
    (slot ContestaEstacionAnterior         (type STRING) (allowed-strings "SI" "NO"))

    (slot OrientacionTemporal_Mes (type STRING) (allowed-strings "SI" "NO"))
    (slot EsUltimoDiaMes          (type STRING) (allowed-strings "SI" "NO"))
    (slot EsPrimerOSegundoDiaMes  (type STRING) (allowed-strings "SI" "NO"))
    (slot ContestaMesAnterior     (type STRING) (allowed-strings "SI" "NO"))
    (slot ContestaMesSiguiente    (type STRING) (allowed-strings "SI" "NO"))

    (slot OrientacionTemporal_DiaSemana (type STRING) (allowed-strings "SI" "NO"))    

    (slot OrientacionTemporal_Ano (type STRING) (allowed-strings "SI" "NO"))
    (slot EsPrimerQuincenaAno     (type STRING) (allowed-strings "SI" "NO"))    
    (slot ContestaAnoAnterior     (type STRING) (allowed-strings "SI" "NO"))    

    (slot OrientacionEspacial_Lugar         (type STRING) (allowed-strings "SI" "NO"))    
    (slot OrientacionEspacial_Ciudad        (type STRING) (allowed-strings "SI" "NO"))
    (slot OrientacionEspacial_Pais          (type STRING) (allowed-strings "SI" "NO"))    
    (slot OrientacionEspacial_Piso          (type STRING) (allowed-strings "SI" "NO"))    
    (slot ConsultorioEnEntrepiso            (type STRING) (allowed-strings "SI" "NO"))    
    (slot DiferenciaEntrePisoContestadoReal (type NUMBER))
    (slot OrientacionEspacial_Calle         (type STRING) (allowed-strings "SI" "NO"))  
    (slot ConsultorioEnAvenida              (type STRING) (allowed-strings "SI" "NO"))  
    (slot TraidoPorTercero                  (type STRING) (allowed-strings "SI" "NO"))  

    (slot MemoriaFijacion_PalabrasRepetidas (type NUMBER))  
    (slot PacienteConProblemasAuditivos     (type STRING) (allowed-strings "SI" "NO"))  
    (slot PacienteDeprimido                 (type STRING) (allowed-strings "SI" "NO"))  

    (slot MemoriaAtencion_ClasificacionAtencion (type NUMBER))
    (slot MemoriaRecuerdo_PalabrasRecordadas    (type NUMBER))

    (slot PacienteAnsioso                    (type STRING) (allowed-strings "SI" "NO"))
    (slot Lenguaje_RepiteFraseCorrectamente  (type STRING) (allowed-strings "SI" "NO"))  
    (slot Lenguaje_ClasificacionAccion       (type NUMBER))
    (slot Lenguaje_CumpleOrdenCorrectamente  (type STRING) (allowed-strings "SI" "NO"))  
    (slot Lenguaje_EscribeCorrectamenteFrase (type STRING) (allowed-strings "SI" "NO"))  
    (slot Lenguaje_CosasNombradas            (type NUMBER))

    (slot Dibujo_CopiaCorrectamenteDibujo (type STRING) (allowed-strings "SI" "NO"))  

    (slot Olvido_OlvidaHechosRecientes   (type STRING) (allowed-strings "SI" "NO"))  
    (slot Olvido_OlvidoProgresa          (type STRING) (allowed-strings "SI" "NO"))  
    (slot Olvido_QuejaOlvidoFamiliar     (type STRING) (allowed-strings "SI" "NO"))  
    (slot Olvido_PacienteMinimizaOlvidos (type STRING) (allowed-strings "SI" "NO"))  
    (slot Olvido_ImpactoFuncional        (type STRING) (allowed-strings "SI" "NO"))  
    (slot Olvido_ImpactoCaracter         (type STRING) (allowed-strings "SI" "NO"))  
)

(deftemplate OrientacionTemporal "Sección Minimental"
    (slot cFecha    (type NUMBER))    
    (slot cEstacion (type STRING) (allowed-strings "SI" "NO"))
    (slot cMes      (type NUMBER))    
    (slot cAno      (type NUMBER))
)

(deftemplate OrientacionEspacial "Sección Minimental"
    (slot cLugar  (type NUMBER))    
    (slot cCiudad (type NUMBER)) 
    (slot cPais   (type NUMBER)) 
    (slot cPiso   (type NUMBER)) 
    (slot cCalle  (type NUMBER))
)

(deftemplate Orientacion "Sección Minimental"
    (slot cOrientacionTemporal (type NUMBER))
    (slot cOrientacionEspacial (type NUMBER))
)

(deftemplate MemoriaFijacion "Sección Minimental"
    (slot cPalabrasRepetidas (type NUMBER))
)

(deftemplate MemoriaAtencion "Sección Minimental"
    (slot cClasificacionAtencion (type NUMBER))
)

(deftemplate MemoriaRecuerdo "Sección Minimental"
    (slot cPalabrasRecordadas (type NUMBER))
)

(deftemplate Memoria "Sección Minimental"
    (slot cMemoriaFijacion (type NUMBER))
    (slot cMemoriaAtencion (type NUMBER))
    (slot cMemoriaRecuerdo (type NUMBER))
)

(deftemplate LenguajeAccionPonderado "Sección Minimental"
    (slot cAccionPonderado (type NUMBER))
)

(deftemplate Lenguaje "Sección Minimental"
    (slot cLenguajeAccion    (type NUMBER))
    (slot cLenguajeEscritura (type STRING) (allowed-strings "SI" "NO"))
    (slot cLenguajeOrden     (type STRING) (allowed-strings "SI" "NO"))
    (slot cLenguajeFrase     (type STRING) (allowed-strings "SI" "NO"))
)


(deftemplate MiniMental_Calculado "Sumatoria Minimental"
    (slot cOrientacion (type NUMBER))
    (slot cMemoria     (type NUMBER))
    (slot cLenguaje    (type NUMBER))
    (slot cDibujo      (type NUMBER))
)

(deftemplate Diagnostico "Resultado Final"
    (slot cMiniMental_Calculado (type NUMBER))
    (slot cOlvido               (type STRING) (allowed-strings "R" "N"))
    (slot cQueja                (type STRING) (allowed-strings "R" "N"))
    (slot cFuncional            (type STRING) (allowed-strings "R" "N"))
    (slot cCaracter             (type STRING) (allowed-strings "R" "N"))
    (slot Resultado             (type STRING) (allowed-strings "OlvidoBenigno" "DemenciaLeve" "DemenciaModerada" "DemenciaSevera"))
)

(deftemplate DiagnosticoDetalle "Detalle del Resultado Final, el Por qué"
    (slot ResultadoDetalle (type STRING))
)

;*----------------------------------------------------------------------*
;* Reglas/Hechos (DefRules)                                             *
;*----------------------------------------------------------------------*


(defrule REGLA-CLIPS-OT-N5-Fecha-1
    (Entrevista (OrientacionTemporal_Fecha "NO"))
    =>
    (assert (OrientacionTemporal (cFecha -0.50))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado para fecha -0.50. Se castiga (se resta) el valor, porque es grave que el paciente no sepa la fecha.")))
    (printout t "REGLA-CLIPS-OT-N5-Fecha-1" crlf)
)

(defrule REGLA-CLIPS-OT-N5-Fecha-2 
    (Entrevista (OrientacionTemporal_Fecha "SI")) 
=>
    (assert (OrientacionTemporal (cFecha 1.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "Valor normal del minimental: 1. Respuesta correcta.")))
    (printout t "REGLA-CLIPS-OT-N5-Fecha-2" crlf)
)


(defrule Regla-CLIPS-OT-N5-Estacion-1
    (Entrevista (OrientacionTemporal_Estacion "NO")) 
    (Entrevista (Escolaridad ?r))
    (test (> ?r 6.00))
    (Entrevista (EsUnaSemanaAntesCambioEstacion "NO"))
    (Entrevista (ContestaEstacionSiguiente "NO"))
    (Entrevista (EsUnaSemanaDespuesCambioEstacion "NO"))
    (Entrevista (ContestaEstacionAnterior "NO"))
    =>
    (assert (OrientacionTemporal (cEstacion "NO"))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "No se considera correcta la pregunta.")))
    (printout t "Regla-CLIPS-OT-N5-Estacion-1 " crlf)
)
 
(defrule Regla-CLIPS-OT-N5-Estacion-2
    (Entrevista (OrientacionTemporal_Estacion "SI"))
    (Entrevista (Escolaridad ?r))
    (test (> ?r 6.00))
    (Entrevista (EsUnaSemanaAntesCambioEstacion "NO"))
    (Entrevista (ContestaEstacionSiguiente "NO"))
    (Entrevista (EsUnaSemanaDespuesCambioEstacion "NO"))
    (Entrevista (ContestaEstacionAnterior "NO"))
    =>
    (assert (OrientacionTemporal (cEstacion "SI"))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "La respuesta es correcta.")))
    (printout t "Regla-CLIPS-OT-N5-Estacion-2 " crlf)
)
 
(defrule Regla-CLIPS-OT-N5-Estacion-3
    (Entrevista (OrientacionTemporal_Estacion "NO"))
    (Entrevista (Escolaridad ?r))
    (test (< ?r 6.00))
    (Entrevista (EsUnaSemanaAntesCambioEstacion "NO"))
    (Entrevista (ContestaEstacionSiguiente "NO"))
    (Entrevista (EsUnaSemanaDespuesCambioEstacion "NO"))
    (Entrevista (ContestaEstacionAnterior "NO"))
    =>
    (assert (OrientacionTemporal (cEstacion "SI"))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "Se considera correcta la pregunta. A pesar que se respondió mal la pregunta, el paciente no tiene el nivel escolar para conocer la respuesta.")))
    (printout t "Regla-CLIPS-OT-N5-Estacion-3 " crlf)
 ) 

(defrule Regla-CLIPS-OT-N5-Estacion-5
    (Entrevista (OrientacionTemporal_Estacion "NO"))
    (Entrevista (Escolaridad ?r))
    (test (> ?r 6.00))
    (Entrevista (EsUnaSemanaAntesCambioEstacion "SI"))
    (Entrevista (ContestaEstacionSiguiente "SI"))
    (Entrevista (EsUnaSemanaDespuesCambioEstacion "NO"))
    (Entrevista (ContestaEstacionAnterior "NO")) 
    => 
    (assert (OrientacionTemporal (cEstacion "SI"))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "Se considera correcta la pregunta. Se perdona el error, porque el paciente respondió la siguiente estación una semana antes.")))
    (printout t "Regla-CLIPS-OT-N5-Estacion-5 " crlf) 
 ) 
 
(defrule Regla-CLIPS-OT-N5-Estacion-7 
    (Entrevista (OrientacionTemporal_Estacion "NO"))
    (Entrevista (Escolaridad ?r))
    (test (< ?r 6.00))
    (Entrevista (EsUnaSemanaAntesCambioEstacion "SI"))
    (Entrevista (ContestaEstacionSiguiente "SI"))
    (Entrevista (EsUnaSemanaDespuesCambioEstacion "NO"))
    (Entrevista (ContestaEstacionAnterior "NO" )) 
    => 
    (assert (OrientacionTemporal (cEstacion "SI"))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "Se considera correcta la pregunta. Se perdona el error, porque el paciente respondió la siguiente estación una semana antes. Además se tiene en cuenta que el nivel escolar lo exime del error.")))
    (printout t "Regla-CLIPS-OT-N5-Estacion-7 " crlf) 
 )
 
(defrule Regla-CLIPS-OT-N5-Estacion-9 
    (Entrevista (OrientacionTemporal_Estacion "NO"))
    (Entrevista (Escolaridad ?r))
    (test (> ?r 6.00))
    (Entrevista (EsUnaSemanaAntesCambioEstacion "NO"))
    (Entrevista (ContestaEstacionSiguiente "NO"))
    (Entrevista (EsUnaSemanaDespuesCambioEstacion "SI"))
    (Entrevista (ContestaEstacionAnterior "SI"))
    =>
    (assert (OrientacionTemporal (cEstacion "SI"))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "Se considera correcta la pregunta. Se perdona el error, porque el paciente respondió la estación anterior una semana después.")))
    (printout t "Regla-CLIPS-OT-N5-Estacion-9 " crlf)
 ) 
 
(defrule Regla-CLIPS-OT-N5-Estacion-11 
    (Entrevista (OrientacionTemporal_Estacion "NO"))
    (Entrevista (Escolaridad ?r))
    (test (< ?r 6.00))
    (Entrevista (EsUnaSemanaAntesCambioEstacion "NO"))
    (Entrevista (ContestaEstacionSiguiente "NO"))
    (Entrevista (EsUnaSemanaDespuesCambioEstacion "SI"))
    (Entrevista (ContestaEstacionAnterior "SI")) 
    =>
    (assert (OrientacionTemporal (cEstacion "SI"))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "Se considera correcta la pregunta. Se perdona el error, porque el paciente respondió la estación anterior una semana después. Además se tiene en cuenta que el nivel escolar lo exime del error.")))
    (printout t "Regla-CLIPS-OT-N5-Estacion-11 " crlf)
 )


(defrule REGLA-CLIPS-OT-N5-MES-1
    (Entrevista (OrientacionTemporal_Mes "NO"))
    (Entrevista (EsUltimoDiaMes "NO"))
    (Entrevista (ContestaMesSiguiente "NO"))
    (Entrevista (EsPrimerOSegundoDiaMes "NO"))
    (Entrevista (ContestaMesAnterior "NO")) 
    =>
    (assert (OrientacionTemporal (cMes -1.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "No se considerar correcta la pregunta. El valor ponderado para es de -1.00. Se castiga (se resta) el valor, porque es grave que el paciente no sepa en qué mes esta.")))
    (printout t "REGLA-CLIPS-OT-N5-MES-1" crlf)
)
 
(defrule REGLA-CLIPS-OT-N5-MES-2
    (Entrevista (OrientacionTemporal_Mes "SI"))
    (Entrevista (EsUltimoDiaMes "NO"))
    (Entrevista (ContestaMesSiguiente "NO"))
    (Entrevista (EsPrimerOSegundoDiaMes "NO"))
    (Entrevista (ContestaMesAnterior "NO")) 
    =>
    (assert (OrientacionTemporal (cMes 1.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "La respuesta es correcta.")))
    (printout t "REGLA-CLIPS-OT-N5-MES-2" crlf)
)

(defrule REGLA-CLIPS-OT-N5-MES-3
    (Entrevista (OrientacionTemporal_Mes "NO"))
    (Entrevista (EsUltimoDiaMes "SI"))
    (Entrevista (ContestaMesSiguiente "SI"))
    (Entrevista (EsPrimerOSegundoDiaMes "NO"))
    (Entrevista (ContestaMesAnterior "NO")) 
     =>
    (assert (OrientacionTemporal (cMes 1.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "Se considera correcta la pregunta. Se perdona el error, porque el paciente respondió el siguiente mes estando en el último día del mes.")))
    (printout t "REGLA-CLIPS-OT-N5-MES-3" crlf)
)

(defrule REGLA-CLIPS-OT-N5-MES-5
    (Entrevista (OrientacionTemporal_Mes "NO"))
    (Entrevista (EsUltimoDiaMes "NO"))
    (Entrevista (ContestaMesSiguiente "NO"))
    (Entrevista (EsPrimerOSegundoDiaMes "SI"))
    (Entrevista (ContestaMesAnterior "SI")) 
    =>
    (assert (OrientacionTemporal (cMes 1.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "Se considera correcta la pregunta. Se perdona el error, porque el paciente respondió el mes anterior estando en los primeros días del mes.")))
    (printout t "REGLA-CLIPS-OT-N5-MES-5" crlf)
)


(defrule REGLA-CLIPS-OT-N5-ANO-1
    (Entrevista (OrientacionTemporal_Ano "NO"))
    (Entrevista (EsPrimerQuincenaAno "NO"))
    (Entrevista (ContestaAnoAnterior "NO")) 
    =>
    (assert (OrientacionTemporal (cAno -2.50))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado para año -2.50. Se castiga (se resta) el valor, porque es grave que el paciente no sepa el año en que esta.")))
    (printout t "REGLA-CLIPS-OT-N5-ANO-1" crlf)
)
 
(defrule REGLA-CLIPS-OT-N5-ANO-2
    (Entrevista ( OrientacionTemporal_Ano "SI" ))
    (Entrevista ( EsPrimerQuincenaAno "NO"))
    (Entrevista ( ContestaAnoAnterior "NO" )) 
    =>
    (assert (OrientacionTemporal (cAno 1.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "La respuesta es correcta.")))
    (printout t "REGLA-CLIPS-OT-N5-ANO-2" crlf)
)

(defrule REGLA-CLIPS-OT-N5-ANO-3
    (Entrevista ( OrientacionTemporal_Ano "NO" ))
    (Entrevista ( EsPrimerQuincenaAno "SI"))
    (Entrevista ( ContestaAnoAnterior "SI" )) 
    =>
    (assert (OrientacionTemporal (cAno 1.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "Se considera correcta la pregunta. Se perdona el error, porque el paciente respondió el año anterior estando en la primera quincena del año.")))
    (printout t "REGLA-CLIPS-OT-N5-ANO-3" crlf)
) 


(defrule REGLA-CLIPS-OT-N4-1 
    (Entrevista (OrientacionTemporal_DiaSemana "NO")) 
    (OrientacionTemporal (cFecha -0.50)) 
    (OrientacionTemporal (cMes -1.00)) 
    (OrientacionTemporal (cAno -2.50)) 
    (OrientacionTemporal (cEstacion "NO")) 
    => 
    (assert (Orientacion (cOrientacionTemporal -4.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) 
    (printout t REGLA-CLIPS-OT-N4-1 crlf ))

(defrule REGLA-CLIPS-OT-N4-2 (Entrevista (OrientacionTemporal_DiaSemana "SI")) (OrientacionTemporal (cFecha -0.50)) (OrientacionTemporal (cMes -1.00)) (OrientacionTemporal (cAno -2.50)) (OrientacionTemporal (cEstacion "NO")) => (assert (Orientacion (cOrientacionTemporal -3.00))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-2 crlf ))
(defrule REGLA-CLIPS-OT-N4-3 (Entrevista (OrientacionTemporal_DiaSemana "NO")) (OrientacionTemporal (cFecha 1.00)) (OrientacionTemporal (cMes -1.00)) (OrientacionTemporal (cAno -2.50)) (OrientacionTemporal (cEstacion "NO")) => (assert (Orientacion (cOrientacionTemporal -2.50))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-3 crlf ))
(defrule REGLA-CLIPS-OT-N4-4 (Entrevista (OrientacionTemporal_DiaSemana "SI")) (OrientacionTemporal (cFecha 1.00)) (OrientacionTemporal (cMes -1.00)) (OrientacionTemporal (cAno -2.50)) (OrientacionTemporal (cEstacion "NO")) => (assert (Orientacion (cOrientacionTemporal -1.50))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-4 crlf ))
(defrule REGLA-CLIPS-OT-N4-5 (Entrevista (OrientacionTemporal_DiaSemana "NO")) (OrientacionTemporal (cFecha -0.50)) (OrientacionTemporal (cMes 1.00)) (OrientacionTemporal (cAno -2.50)) (OrientacionTemporal (cEstacion "NO")) => (assert (Orientacion (cOrientacionTemporal -2.00))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-5 crlf ))
(defrule REGLA-CLIPS-OT-N4-6 (Entrevista (OrientacionTemporal_DiaSemana "SI")) (OrientacionTemporal (cFecha -0.50)) (OrientacionTemporal (cMes 1.00)) (OrientacionTemporal (cAno -2.50)) (OrientacionTemporal (cEstacion "NO")) => (assert (Orientacion (cOrientacionTemporal -1.00))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-6 crlf ))
(defrule REGLA-CLIPS-OT-N4-7 (Entrevista (OrientacionTemporal_DiaSemana "NO")) (OrientacionTemporal (cFecha 1.00)) (OrientacionTemporal (cMes 1.00)) (OrientacionTemporal (cAno -2.50)) (OrientacionTemporal (cEstacion "NO")) => (assert (Orientacion (cOrientacionTemporal -0.50))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-7 crlf ))
(defrule REGLA-CLIPS-OT-N4-8 (Entrevista (OrientacionTemporal_DiaSemana "SI")) (OrientacionTemporal (cFecha 1.00)) (OrientacionTemporal (cMes 1.00)) (OrientacionTemporal (cAno -2.50)) (OrientacionTemporal (cEstacion "NO")) => (assert (Orientacion (cOrientacionTemporal 0.50))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-8 crlf ))
(defrule REGLA-CLIPS-OT-N4-9 (Entrevista (OrientacionTemporal_DiaSemana "NO")) (OrientacionTemporal (cFecha -0.50)) (OrientacionTemporal (cMes -1.00)) (OrientacionTemporal (cAno 1.00)) (OrientacionTemporal (cEstacion "NO")) => (assert (Orientacion (cOrientacionTemporal -0.50))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-9 crlf ))
(defrule REGLA-CLIPS-OT-N4-10 (Entrevista (OrientacionTemporal_DiaSemana "SI")) (OrientacionTemporal (cFecha -0.50)) (OrientacionTemporal (cMes -1.00)) (OrientacionTemporal (cAno 1.00)) (OrientacionTemporal (cEstacion "NO")) => (assert (Orientacion (cOrientacionTemporal 0.50))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-10 crlf ))
(defrule REGLA-CLIPS-OT-N4-11 (Entrevista (OrientacionTemporal_DiaSemana "NO")) (OrientacionTemporal (cFecha 1.00)) (OrientacionTemporal (cMes -1.00)) (OrientacionTemporal (cAno 1.00)) (OrientacionTemporal (cEstacion "NO")) => (assert (Orientacion (cOrientacionTemporal 1.00))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-11 crlf ))
(defrule REGLA-CLIPS-OT-N4-12 (Entrevista (OrientacionTemporal_DiaSemana "SI")) (OrientacionTemporal (cFecha 1.00)) (OrientacionTemporal (cMes -1.00)) (OrientacionTemporal (cAno 1.00)) (OrientacionTemporal (cEstacion "NO")) => (assert (Orientacion (cOrientacionTemporal 2.00))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-12 crlf ))
(defrule REGLA-CLIPS-OT-N4-13 (Entrevista (OrientacionTemporal_DiaSemana "NO")) (OrientacionTemporal (cFecha -0.50)) (OrientacionTemporal (cMes 1.00)) (OrientacionTemporal (cAno 1.00)) (OrientacionTemporal (cEstacion "NO")) => (assert (Orientacion (cOrientacionTemporal 1.50))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-13 crlf ))
(defrule REGLA-CLIPS-OT-N4-14 (Entrevista (OrientacionTemporal_DiaSemana "SI")) (OrientacionTemporal (cFecha -0.50)) (OrientacionTemporal (cMes 1.00)) (OrientacionTemporal (cAno 1.00)) (OrientacionTemporal (cEstacion "NO")) => (assert (Orientacion (cOrientacionTemporal 2.50))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-14 crlf ))
(defrule REGLA-CLIPS-OT-N4-15 (Entrevista (OrientacionTemporal_DiaSemana "NO")) (OrientacionTemporal (cFecha 1.00)) (OrientacionTemporal (cMes 1.00)) (OrientacionTemporal (cAno 1.00)) (OrientacionTemporal (cEstacion "NO")) => (assert (Orientacion (cOrientacionTemporal 3.00))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-15 crlf ))
(defrule REGLA-CLIPS-OT-N4-16 (Entrevista (OrientacionTemporal_DiaSemana "SI")) (OrientacionTemporal (cFecha 1.00)) (OrientacionTemporal (cMes 1.00)) (OrientacionTemporal (cAno 1.00)) (OrientacionTemporal (cEstacion "NO")) => (assert (Orientacion (cOrientacionTemporal 4.00))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-16 crlf ))
(defrule REGLA-CLIPS-OT-N4-17 (Entrevista (OrientacionTemporal_DiaSemana "NO")) (OrientacionTemporal (cFecha -0.50)) (OrientacionTemporal (cMes -1.00)) (OrientacionTemporal (cAno -2.50)) (OrientacionTemporal (cEstacion "SI")) => (assert (Orientacion (cOrientacionTemporal -3.00))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-17 crlf ))
(defrule REGLA-CLIPS-OT-N4-18 (Entrevista (OrientacionTemporal_DiaSemana "SI")) (OrientacionTemporal (cFecha -0.50)) (OrientacionTemporal (cMes -1.00)) (OrientacionTemporal (cAno -2.50)) (OrientacionTemporal (cEstacion "SI")) => (assert (Orientacion (cOrientacionTemporal -2.00))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-18 crlf ))
(defrule REGLA-CLIPS-OT-N4-19 (Entrevista (OrientacionTemporal_DiaSemana "NO")) (OrientacionTemporal (cFecha 1.00)) (OrientacionTemporal (cMes -1.00)) (OrientacionTemporal (cAno -2.50)) (OrientacionTemporal (cEstacion "SI")) => (assert (Orientacion (cOrientacionTemporal -1.50))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-19 crlf ))
(defrule REGLA-CLIPS-OT-N4-20 (Entrevista (OrientacionTemporal_DiaSemana "SI")) (OrientacionTemporal (cFecha 1.00)) (OrientacionTemporal (cMes -1.00)) (OrientacionTemporal (cAno -2.50)) (OrientacionTemporal (cEstacion "SI")) => (assert (Orientacion (cOrientacionTemporal -0.50))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-20 crlf ))
(defrule REGLA-CLIPS-OT-N4-21 (Entrevista (OrientacionTemporal_DiaSemana "NO")) (OrientacionTemporal (cFecha -0.50)) (OrientacionTemporal (cMes 1.00)) (OrientacionTemporal (cAno -2.50)) (OrientacionTemporal (cEstacion "SI")) => (assert (Orientacion (cOrientacionTemporal -1.00))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-21 crlf ))
(defrule REGLA-CLIPS-OT-N4-22 (Entrevista (OrientacionTemporal_DiaSemana "SI")) (OrientacionTemporal (cFecha -0.50)) (OrientacionTemporal (cMes 1.00)) (OrientacionTemporal (cAno -2.50)) (OrientacionTemporal (cEstacion "SI")) => (assert (Orientacion (cOrientacionTemporal 0.00))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-22 crlf ))
(defrule REGLA-CLIPS-OT-N4-23 (Entrevista (OrientacionTemporal_DiaSemana "NO")) (OrientacionTemporal (cFecha 1.00)) (OrientacionTemporal (cMes 1.00)) (OrientacionTemporal (cAno -2.50)) (OrientacionTemporal (cEstacion "SI")) => (assert (Orientacion (cOrientacionTemporal 0.50))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-23 crlf ))
(defrule REGLA-CLIPS-OT-N4-24 (Entrevista (OrientacionTemporal_DiaSemana "SI")) (OrientacionTemporal (cFecha 1.00)) (OrientacionTemporal (cMes 1.00)) (OrientacionTemporal (cAno -2.50)) (OrientacionTemporal (cEstacion "SI")) => (assert (Orientacion (cOrientacionTemporal 1.50))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-24 crlf ))
(defrule REGLA-CLIPS-OT-N4-25 (Entrevista (OrientacionTemporal_DiaSemana "NO")) (OrientacionTemporal (cFecha -0.50)) (OrientacionTemporal (cMes -1.00)) (OrientacionTemporal (cAno 1.00)) (OrientacionTemporal (cEstacion "SI")) => (assert (Orientacion (cOrientacionTemporal 0.50))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-25 crlf ))
(defrule REGLA-CLIPS-OT-N4-26 (Entrevista (OrientacionTemporal_DiaSemana "SI")) (OrientacionTemporal (cFecha -0.50)) (OrientacionTemporal (cMes -1.00)) (OrientacionTemporal (cAno 1.00)) (OrientacionTemporal (cEstacion "SI")) => (assert (Orientacion (cOrientacionTemporal 1.50))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-26 crlf ))
(defrule REGLA-CLIPS-OT-N4-27 (Entrevista (OrientacionTemporal_DiaSemana "NO")) (OrientacionTemporal (cFecha 1.00)) (OrientacionTemporal (cMes -1.00)) (OrientacionTemporal (cAno 1.00)) (OrientacionTemporal (cEstacion "SI")) => (assert (Orientacion (cOrientacionTemporal 2.00))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-27 crlf ))
(defrule REGLA-CLIPS-OT-N4-28 (Entrevista (OrientacionTemporal_DiaSemana "SI")) (OrientacionTemporal (cFecha 1.00)) (OrientacionTemporal (cMes -1.00)) (OrientacionTemporal (cAno 1.00)) (OrientacionTemporal (cEstacion "SI")) => (assert (Orientacion (cOrientacionTemporal 3.00))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-28 crlf ))
(defrule REGLA-CLIPS-OT-N4-29 (Entrevista (OrientacionTemporal_DiaSemana "NO")) (OrientacionTemporal (cFecha -0.50)) (OrientacionTemporal (cMes 1.00)) (OrientacionTemporal (cAno 1.00)) (OrientacionTemporal (cEstacion "SI")) => (assert (Orientacion (cOrientacionTemporal 2.50))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-29 crlf ))
(defrule REGLA-CLIPS-OT-N4-30 (Entrevista (OrientacionTemporal_DiaSemana "SI")) (OrientacionTemporal (cFecha -0.50)) (OrientacionTemporal (cMes 1.00)) (OrientacionTemporal (cAno 1.00)) (OrientacionTemporal (cEstacion "SI")) => (assert (Orientacion (cOrientacionTemporal 3.50))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-30 crlf ))
(defrule REGLA-CLIPS-OT-N4-31 (Entrevista (OrientacionTemporal_DiaSemana "NO")) (OrientacionTemporal (cFecha 1.00)) (OrientacionTemporal (cMes 1.00)) (OrientacionTemporal (cAno 1.00)) (OrientacionTemporal (cEstacion "SI")) => (assert (Orientacion (cOrientacionTemporal 4.00))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-31 crlf ))
(defrule REGLA-CLIPS-OT-N4-32 (Entrevista (OrientacionTemporal_DiaSemana "SI")) (OrientacionTemporal (cFecha 1.00)) (OrientacionTemporal (cMes 1.00)) (OrientacionTemporal (cAno 1.00)) (OrientacionTemporal (cEstacion "SI")) => (assert (Orientacion (cOrientacionTemporal 5.00))) (assert (DiagnosticoDetalle (ResultadoDetalle "Valor ponderado Final para Orientación Temporal"))) (printout t REGLA-CLIPS-OT-N4-32 crlf ))


(defrule REGLA-CLIPS-OE-N5-Pais-1
    (Entrevista (OrientacionEspacial_Pais "NO"))
    =>
    (assert (OrientacionEspacial (cPais -2.50))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-CLIPS-OE-N5-Pais-1" crlf)
)

(defrule REGLA-CLIPS-OE-N5-Pais-2 
    (Entrevista (OrientacionEspacial_Pais "SI")) 
    =>
    (assert (OrientacionEspacial (cPais 1.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-CLIPS-OE-N5-Pais-2 " crlf)
)


(defrule REGLA-CLIPS-OE-N5-Ciudad-1
    (Entrevista (OrientacionEspacial_Ciudad "NO"))
    =>
    (assert (OrientacionEspacial (cCiudad -2.50))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-CLIPS-OE-N5-Ciudad-1" crlf)
)

(defrule REGLA-CLIPS-OE-N5-Ciudad-2 
    (Entrevista (OrientacionEspacial_Ciudad "SI")) 
    =>
    (assert (OrientacionEspacial (cCiudad 1.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-CLIPS-OE-N5-Ciudad-2 " crlf)
)


(defrule REGLA-CLIPS-OE-N5-Lugar-1
    (Entrevista (OrientacionEspacial_Lugar "NO"))
    =>
    (assert (OrientacionEspacial (cLugar -1.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-CLIPS-OE-N5-Lugar-1" crlf)
)

(defrule REGLA-CLIPS-OE-N5-Lugar-2 
    (Entrevista (OrientacionEspacial_Lugar "SI")) 
    =>
    (assert (OrientacionEspacial (cLugar 1.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-CLIPS-OE-N5-Lugar-2 " crlf)
)


(defrule REGLA-OE-N5-PISO-1 
    (Entrevista (OrientacionEspacial_Piso "NO" )) 
    (Entrevista (ConsultorioEnEntrepiso "NO" )) 
    (Entrevista (DiferenciaEntrePisoContestadoReal ?r))
    (test (< ?r 2.00))
    => 
    (assert (OrientacionEspacial (cPiso -0.50))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-OE-N5-PISO-1" crlf))

(defrule REGLA-OE-N5-PISO-2 
    (Entrevista (OrientacionEspacial_Piso "SI" )) 
    (Entrevista (ConsultorioEnEntrepiso "NO" )) 
    (Entrevista (DiferenciaEntrePisoContestadoReal ?r))
    (test (< ?r 2.00)) 
    => 
    (assert (OrientacionEspacial (cPiso 1.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-OE-N5-PISO-2" crlf))

(defrule REGLA-OE-N5-PISO-3 
    (Entrevista (OrientacionEspacial_Piso "NO" )) 
    (Entrevista (ConsultorioEnEntrepiso "SI" )) 
    (Entrevista (DiferenciaEntrePisoContestadoReal ?r))
    (test (< ?r 2.00)) 
    => 
    (assert (OrientacionEspacial (cPiso 0.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-OE-N5-PISO-3" crlf))
    
(defrule REGLA-OE-N5-PISO-5/7 
    (Entrevista (OrientacionEspacial_Piso "NO" ))
    (Entrevista (DiferenciaEntrePisoContestadoReal ?r))
    (test (< ?r 2)) 
    => 
    (assert (OrientacionEspacial (cPiso 1.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-OE-N5-PISO-5/7" crlf))


(defrule REGLA-OE-N5-CALLE-1 
    (Entrevista (OrientacionEspacial_Calle "NO" )) 
    (Entrevista (TraidoPorTercero "NO" )) 
    (Entrevista (ConsultorioEnAvenida "SI" )) 
    => 
    (assert (OrientacionEspacial (cCalle -0.50))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-OE-N5-CALLE-1" crlf))

(defrule REGLA-OE-N5-CALLE-2 
    (Entrevista (OrientacionEspacial_Calle "SI" )) 
    (Entrevista (TraidoPorTercero "NO" )) 
    (Entrevista (ConsultorioEnAvenida "SI" )) 
    => 
    (assert (OrientacionEspacial (cCalle 1.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-OE-N5-CALLE-2" crlf))

(defrule REGLA-OE-N5-CALLE-3 
    (Entrevista (OrientacionEspacial_Calle "NO" )) 
    (Entrevista (TraidoPorTercero "SI" )) 
    (Entrevista (ConsultorioEnAvenida "SI" ))
    => 
    (assert (OrientacionEspacial (cCalle 1.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-OE-N5-CALLE-3" crlf))

(defrule REGLA-OE-N5-CALLE-5/7 
    (Entrevista (OrientacionEspacial_Calle "NO" )) 
    (Entrevista (ConsultorioEnAvenida "NO" )) 
    => 
    (assert (OrientacionEspacial (cCalle 1.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-OE-N5-CALLE-5/7" crlf))


(defrule REGLA-MF-N5-PALABRA-1 
    (Entrevista (MemoriaFijacion_PalabrasRepetidas 0.00 )) 
    => 
    (assert (MemoriaFijacion (cPalabrasRepetidas -5.00)))
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####"))) 
    (printout t "REGLA-MF-N5-PALABRA-1" crlf))

(defrule REGLA-MF-N5-PALABRA-2 
    (Entrevista (MemoriaFijacion_PalabrasRepetidas 1.00 )) 
    => 
    (assert (MemoriaFijacion (cPalabrasRepetidas -2.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-MF-N5-PALABRA-2" crlf))

(defrule REGLA-MF-N5-PALABRA-3 
    (Entrevista (MemoriaFijacion_PalabrasRepetidas 2.00 )) 
    => 
    (assert (MemoriaFijacion (cPalabrasRepetidas -0.50))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-MF-N5-PALABRA-3" crlf))

(defrule REGLA-MF-N5-PALABRA-4 
    (Entrevista (MemoriaFijacion_PalabrasRepetidas 3.00 )) 
    => 
    (assert (MemoriaFijacion (cPalabrasRepetidas 3.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-MF-N5-PALABRA-4" crlf))


(defrule REGLA-MF-N4-1 
    (MemoriaFijacion (cPalabrasRepetidas -5.00 )) 
    (Entrevista (PacienteConProblemasAuditivos "NO" )) 
    (Entrevista (PacienteDeprimido "NO" )) 
    => 
    (assert (Memoria (cMemoriaFijacion  -5.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-MF-N4-1" crlf))

(defrule REGLA-MF-N4-2 
    (MemoriaFijacion (cPalabrasRepetidas -2.00 )) 
    (Entrevista (PacienteConProblemasAuditivos "NO" )) 
    (Entrevista (PacienteDeprimido "NO" )) 
    => 
    (assert (Memoria (cMemoriaFijacion  -2.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-MF-N4-2" crlf))

(defrule REGLA-MF-N4-3 
    (MemoriaFijacion (cPalabrasRepetidas -0.50 )) 
    (Entrevista (PacienteConProblemasAuditivos "NO" )) 
    (Entrevista (PacienteDeprimido "NO" )) 
    => 
    (assert (Memoria (cMemoriaFijacion  -0.50))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-MF-N4-3" crlf))

(defrule REGLA-MF-N4-4 
    (MemoriaFijacion (cPalabrasRepetidas 3.00 )) 
    (Entrevista (PacienteConProblemasAuditivos "NO" )) 
    (Entrevista (PacienteDeprimido "NO" )) 
    => 
    (assert (Memoria (cMemoriaFijacion  3.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-MF-N4-4" crlf))

(defrule REGLA-MF-N4-9/16 
    (Entrevista (PacienteDeprimido "SI" )) 
    => 
    (assert (Memoria (cMemoriaFijacion  3.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-MF-N4-9 - 16" crlf))


(defrule REGLA-MA-N5-ATENCION-1 
    (Entrevista (MemoriaAtencion_ClasificacionAtencion 0.00 )) 
    => 
    (assert (MemoriaAtencion (cClasificacionAtencion -1.25))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-MA-N5-ATENCION-1" crlf))

(defrule REGLA-MA-N5-ATENCION-2 
    (Entrevista (MemoriaAtencion_ClasificacionAtencion 1.00 )) 
    => 
    (assert (MemoriaAtencion (cClasificacionAtencion 0.00)))
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####"))) 
    (printout t "REGLA-MA-N5-ATENCION-2" crlf))

(defrule REGLA-MA-N5-ATENCION-3 
    (Entrevista (MemoriaAtencion_ClasificacionAtencion 2.00 )) 
    => 
    (assert (MemoriaAtencion (cClasificacionAtencion 1.25)))
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####"))) 
    (printout t "REGLA-MA-N5-ATENCION-3" crlf))

(defrule REGLA-MA-N5-ATENCION-4 
    (Entrevista (MemoriaAtencion_ClasificacionAtencion 3.00 )) 
    => 
    (assert (MemoriaAtencion (cClasificacionAtencion 2.50)))
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####"))) 
    (printout t "REGLA-MA-N5-ATENCION-4" crlf))

(defrule REGLA-MA-N5-ATENCION-5 
    (Entrevista (MemoriaAtencion_ClasificacionAtencion 4.00 )) 
    => 
    (assert (MemoriaAtencion (cClasificacionAtencion 3.75)))
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####"))) 
    (printout t "REGLA-MA-N5-ATENCION-5" crlf))

(defrule REGLA-MA-N5-ATENCION-6 
    (Entrevista (MemoriaAtencion_ClasificacionAtencion 5.00 )) 
    => 
    (assert (MemoriaAtencion (cClasificacionAtencion 5.00)))
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####"))) 
    (printout t "REGLA-MA-N5-ATENCION-6" crlf))


(defrule REGLA-MA-N4-1/6 
    (Entrevista (PacienteConProblemasAuditivos "NO" )) 
    (Entrevista (PacienteDeprimido "SI" )) 
    => 
    (assert (Memoria (cMemoriaFijacion  5.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-MA-N4-1-6" crlf))

(defrule REGLA-MA-N4-7/12 
    (Entrevista (PacienteConProblemasAuditivos "SI" )) 
    (Entrevista (PacienteDeprimido "NO" )) 
    => 
    (assert (Memoria (cMemoriaFijacion  5.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-MA-N4-7-12" crlf))

(defrule REGLA-MA-N4-13 
    (MemoriaAtencion (cClasificacionAtencion -1.25 )) 
    (Entrevista (PacienteConProblemasAuditivos "NO" )) 
    (Entrevista (PacienteDeprimido "NO" )) 
    => 
    (assert (Memoria (cMemoriaFijacion  -1.30))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-MA-N4-13" crlf))

(defrule REGLA-MA-N4-14 
    (MemoriaAtencion (cClasificacionAtencion 0.00 )) 
    (Entrevista (PacienteConProblemasAuditivos "NO" )) 
    (Entrevista (PacienteDeprimido "NO" )) 
    => 
    (assert (Memoria (cMemoriaFijacion  0.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-MA-N4-14" crlf))

(defrule REGLA-MA-N4-15 
    (MemoriaAtencion (cClasificacionAtencion 1.25 )) 
    (Entrevista (PacienteConProblemasAuditivos "NO" )) 
    (Entrevista (PacienteDeprimido "NO" )) 
    => 
    (assert (Memoria (cMemoriaFijacion  1.30))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-MA-N4-15" crlf))

(defrule REGLA-MA-N4-16 
    (MemoriaAtencion (cClasificacionAtencion 2.50 )) 
    (Entrevista (PacienteConProblemasAuditivos "NO" )) 
    (Entrevista (PacienteDeprimido "NO" )) 
    => 
    (assert (Memoria (cMemoriaFijacion  2.50))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-MA-N4-16" crlf))

(defrule REGLA-MA-N4-17 
    (MemoriaAtencion (cClasificacionAtencion 3.75 )) 
    (Entrevista (PacienteConProblemasAuditivos "NO" )) 
    (Entrevista (PacienteDeprimido "NO" )) 
    => 
    (assert (Memoria (cMemoriaFijacion  3.80))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-MA-N4-17" crlf))

(defrule REGLA-MA-N4-18 
    (MemoriaAtencion (cClasificacionAtencion 5.00 )) 
    (Entrevista (PacienteConProblemasAuditivos "NO" )) 
    (Entrevista (PacienteDeprimido "NO" )) 
    => 
    (assert (Memoria (cMemoriaFijacion  5.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-MA-N4-18" crlf))


(defrule REGLA-MR-N5-RECUERDO-1 
    (Entrevista (MemoriaRecuerdo_PalabrasRecordadas 0.00 )) 
    => 
    (assert (MemoriaRecuerdo (cPalabrasRecordadas -5.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-MR-N5-RECUERDO-1" crlf))

(defrule REGLA-MR-N5-RECUERDO-2 
    (Entrevista (MemoriaRecuerdo_PalabrasRecordadas 1.00 )) 
    => 
    (assert (MemoriaRecuerdo (cPalabrasRecordadas -2.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-MR-N5-RECUERDO-2" crlf))

(defrule REGLA-MR-N5-RECUERDO-3 
    (Entrevista (MemoriaRecuerdo_PalabrasRecordadas 2.00 )) 
    => 
    (assert (MemoriaRecuerdo (cPalabrasRecordadas -0.50))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-MR-N5-RECUERDO-3" crlf))

(defrule REGLA-MR-N5-RECUERDO-4 
    (Entrevista (MemoriaRecuerdo_PalabrasRecordadas 4.00 )) 
    => 
    (assert (MemoriaRecuerdo (cPalabrasRecordadas 3.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-MR-N5-RECUERDO-4" crlf))


(defrule REGLA-MR-N4-1 
    (MemoriaRecuerdo (cPalabrasRecordadas -5.00 )) 
    (Entrevista (PacienteConProblemasAuditivos "NO" )) 
    (Entrevista (PacienteDeprimido "NO" )) 
    => 
    (assert (Memoria (cMemoriaFijacion  -5.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-MR-N4-1" crlf))

(defrule REGLA-MR-N4-2 
    (MemoriaRecuerdo (cPalabrasRecordadas -2.00 )) 
    (Entrevista (PacienteConProblemasAuditivos "NO" )) 
    (Entrevista (PacienteDeprimido "NO" )) 
    => 
    (assert (Memoria (cMemoriaFijacion  -2.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-MR-N4-2" crlf))

(defrule REGLA-MR-N4-3 
    (MemoriaRecuerdo (cPalabrasRecordadas -0.50 )) 
    (Entrevista (PacienteConProblemasAuditivos "NO" )) 
    (Entrevista (PacienteDeprimido "NO" )) 
    => 
    (assert (Memoria (cMemoriaFijacion  -0.50))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-MR-N4-3" crlf))

(defrule REGLA-MR-N4-4 
    (MemoriaRecuerdo (cPalabrasRecordadas 3.00 )) 
    (Entrevista (PacienteConProblemasAuditivos "NO" )) 
    (Entrevista (PacienteDeprimido "NO" )) 
    => 
    (assert (Memoria (cMemoriaFijacion  3.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-MR-N4-4" crlf))

(defrule REGLA-MR-N4-5/8 
    (Entrevista (PacienteConProblemasAuditivos "SI" )) 
    (Entrevista (PacienteDeprimido "NO" )) 
    => 
    (assert (Memoria (cMemoriaFijacion  3.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-MR-N4-5-8" crlf))

(defrule REGLA-MR-N4-9/16 
    (Entrevista (PacienteDeprimido "SI" )) 
    => 
    (assert (Memoria (cMemoriaFijacion  3.00))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t "REGLA-MR-N4-9-16" crlf))
    

(defrule REGLA-L-N4-ACCIONPONDERADA-0 
    (Entrevista (Lenguaje_ClasificacionAccion  0.00  )) 
    => 
    (assert (LenguajeAccionPonderado(cAccionPonderado  -1.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N4-ACCIONPONDERADA-0" crlf))

(defrule REGLA-L-N4-ACCIONPONDERADA-1 
    (Entrevista (Lenguaje_ClasificacionAccion  1.00  )) 
    => 
    (assert (LenguajeAccionPonderado(cAccionPonderado  0.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N4-ACCIONPONDERADA-1" crlf))

(defrule REGLA-L-N4-ACCIONPONDERADA-2 
    (Entrevista (Lenguaje_ClasificacionAccion  2.00  )) 
    => 
    (assert (LenguajeAccionPonderado(cAccionPonderado  1.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N4-ACCIONPONDERADA-2" crlf))

(defrule REGLA-L-N4-ACCIONPONDERADA-3 
    (Entrevista (Lenguaje_ClasificacionAccion  3.00  )) 
    => 
    (assert (LenguajeAccionPonderado(cAccionPonderado  3.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N4-ACCIONPONDERADA-3" crlf))


(defrule  REGLA-L-N4-ACCION-1 
    (LenguajeAccionPonderado (cAccionPonderado  -1.50  )) 
    (Entrevista (PacienteAnsioso  "NO"  )) 
    => 
    (assert (Lenguaje (cLenguajeAccion  -1.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N4-ACCION-1" crlf))

(defrule  REGLA-L-N4-ACCION-2 
    (LenguajeAccionPonderado (cAccionPonderado  0.00  )) 
    (Entrevista (PacienteAnsioso  "NO"  )) 
    => 
    (assert (Lenguaje (cLenguajeAccion  0.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N4-ACCION-2" crlf))

(defrule  REGLA-L-N4-ACCION-3 
    (LenguajeAccionPonderado (cAccionPonderado  1.50  )) 
    (Entrevista (PacienteAnsioso  "NO"  ))
    => 
    (assert (Lenguaje (cLenguajeAccion  1.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N4-ACCION-3" crlf))

(defrule  REGLA-L-N4-ACCION-4/8 
    (LenguajeAccionPonderado (cAccionPonderado  3.00  ))  
    => 
    (assert (Lenguaje (cLenguajeAccion  3.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N4-ACCION-4/8" crlf))

(defrule  REGLA-L-N4-ACCION-5 
    (LenguajeAccionPonderado (cAccionPonderado  -1.50  )) 
    (Entrevista (PacienteAnsioso  "SI"  ))
    => 
    (assert (Lenguaje (cLenguajeAccion  0.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N4-ACCION-5" crlf))

(defrule  REGLA-L-N4-ACCION-6 
    (LenguajeAccionPonderado (cAccionPonderado  0.00  )) 
    (Entrevista (PacienteAnsioso  "SI"  )) 
    => 
    (assert (Lenguaje (cLenguajeAccion  1.00 )))
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####"))) 
    (printout t " REGLA-L-N4-ACCION-6" crlf))

(defrule  REGLA-L-N4-ACCION-7 
    (LenguajeAccionPonderado (cAccionPonderado  1.50  )) 
    (Entrevista (PacienteAnsioso  "SI"  )) 
    => 
    (assert (Lenguaje (cLenguajeAccion  2.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N4-ACCION-7" crlf))


(defrule  REGLA-L-N4-ESCRITA-1 
    (Entrevista (Lenguaje_EscribeCorrectamenteFrase "NO"  )) 
    (Entrevista (Escolaridad ?r)) 
    (test (< ?r 6.00))  
    => 
    (assert (Lenguaje (cLenguajeEscritura  "NO" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N4-ESCRITA-1" crlf))

(defrule  REGLA-L-N4-ESCRITA-2 
    (Entrevista (Lenguaje_EscribeCorrectamenteFrase "SI"  )) 
    (Entrevista (Escolaridad ?r)) 
    (test (< ?r 6.00))  
    => 
    (assert (Lenguaje (cLenguajeEscritura  "SI" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N4-ESCRITA-2" crlf))

(defrule  REGLA-L-N4-ESCRITA-3 
    (Entrevista (Lenguaje_EscribeCorrectamenteFrase "NO"  )) 
    (Entrevista (Escolaridad ?r)) 
    (test (< ?r 6.00))  
    => 
    (assert (Lenguaje (cLenguajeEscritura  "SI" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N4-ESCRITA-3" crlf))


(defrule  REGLA-L-N4-ORDEN-1  
    (Entrevista (Lenguaje_CumpleOrdenCorrectamente  "NO"  )) 
    (Entrevista (PacienteConProblemasAuditivos  "NO"  )) 
    (Entrevista (PacienteAnsioso "NO"  )) 
    => 
    (assert (Lenguaje(cLenguajeOrden   "NO" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N4-ORDEN-1" crlf))

(defrule  REGLA-L-N4-ORDEN-2  
    (Entrevista (Lenguaje_CumpleOrdenCorrectamente  "SI"  )) 
    (Entrevista (PacienteConProblemasAuditivos  "NO"  )) 
    (Entrevista (PacienteAnsioso "NO"  )) 
    => 
    (assert (Lenguaje(cLenguajeOrden   "SI" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N4-ORDEN-2" crlf))

(defrule  REGLA-L-N4-ORDEN-3/4  
    (Entrevista (PacienteConProblemasAuditivos  "SI"  )) 
    (Entrevista (PacienteAnsioso "NO"  )) 
    => 
    (assert (Lenguaje(cLenguajeOrden   "SI" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N4-ORDEN-3/4" crlf))

(defrule  REGLA-L-N4-ORDEN-5/6  
    (Entrevista (PacienteConProblemasAuditivos  "NO"  )) 
    (Entrevista (PacienteAnsioso "SI"  )) 
    => 
    (assert (Lenguaje(cLenguajeOrden   "SI" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N4-ORDEN-5/6" crlf))


(defrule  REGLA-L-N4-FRASE-1  
    (Entrevista (Lenguaje_RepiteFraseCorrectamente  "NO"  )) 
    (Entrevista (PacienteConProblemasAuditivos  "NO"  )) 
    => 
    (assert (Lenguaje(cLenguajeFrase   "NO" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N4-FRASE-1" crlf))

(defrule  REGLA-L-N4-FRASE-2  
    (Entrevista (Lenguaje_RepiteFraseCorrectamente  "SI"  )) 
    (Entrevista (PacienteConProblemasAuditivos  "NO"  ))
    => 
    (assert (Lenguaje(cLenguajeFrase   "SI" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N4-FRASE-2" crlf))

(defrule  REGLA-L-N4-FRASE-3/4  
    (Entrevista (PacienteConProblemasAuditivos  "SI"  )) 
    => 
    (assert (Lenguaje(cLenguajeFrase   "SI" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N4-FRASE-3/4" crlf))


(defrule  REGLA-L-N3-1  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  -1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  -1.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-1" crlf))

(defrule  REGLA-L-N3-2  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  -1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  -0.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-2" crlf))

(defrule  REGLA-L-N3-3  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  -1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  -0.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-3" crlf))
    
(defrule  REGLA-L-N3-4  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  -1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  0.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-4" crlf))

(defrule  REGLA-L-N3-5  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  -1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  ))
    => 
    (assert (MiniMental_Calculado (cLenguaje  -0.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-5" crlf))

(defrule  REGLA-L-N3-6 
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  -1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  0.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-6" crlf))

(defrule  REGLA-L-N3-7  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  -1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  0.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-7" crlf))
    
(defrule  REGLA-L-N3-8  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  -1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  1.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-8" crlf))
    
(defrule  REGLA-L-N3-9  
    (Lenguaje (cLenguajeFrase  "NO"  ))
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  0.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  0.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-9" crlf))
    
(defrule  REGLA-L-N3-10  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  0.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  1.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-10" crlf))

(defrule  REGLA-L-N3-11  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  0.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  1.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-11" crlf))
    
(defrule  REGLA-L-N3-12  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  0.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  2.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-12" crlf))
    
(defrule  REGLA-L-N3-13 
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  0.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  1.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-13" crlf))

(defrule  REGLA-L-N3-14  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  0.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  2.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-14" crlf))

(defrule  REGLA-L-N3-15  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  ))
    (Lenguaje (cLenguajeAccion  0.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  2.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-15" crlf))

(defrule  REGLA-L-N3-16  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  0.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  3.00 ))) 
    (printout t " REGLA-L-N3-16" crlf))
    
(defrule  REGLA-L-N3-17  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  1.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-17" crlf))
    
(defrule  REGLA-L-N3-18  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  2.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-18" crlf))

(defrule  REGLA-L-N3-19  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  2.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-19" crlf))
    
(defrule  REGLA-L-N3-20  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  ))
    => 
    (assert (MiniMental_Calculado (cLenguaje  3.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-20" crlf))

(defrule  REGLA-L-N3-21  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  2.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-21" crlf))

(defrule  REGLA-L-N3-22  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  3.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-22" crlf))

(defrule  REGLA-L-N3-23  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  1.50  ))
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  3.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-23" crlf))
    
(defrule  REGLA-L-N3-24 
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-24" crlf))

(defrule  REGLA-L-N3-25  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  3.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  3.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-25" crlf))
    
(defrule  REGLA-L-N3-26  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  ))
    (Lenguaje (cLenguajeAccion  3.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-26" crlf))
    
(defrule  REGLA-L-N3-27  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  3.00  ))
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-27" crlf))

(defrule  REGLA-L-N3-28  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  3.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  5.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-28" crlf))
    
(defrule  REGLA-L-N3-29  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  3.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-29" crlf))
    
(defrule  REGLA-L-N3-30  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  3.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  ))
    => 
    (assert (MiniMental_Calculado (cLenguaje  5.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-30" crlf))

(defrule  REGLA-L-N3-31 
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  3.00  ))
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  5.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-31" crlf))

(defrule  REGLA-L-N3-32  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  3.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  ))
    => 
    (assert (MiniMental_Calculado (cLenguaje  6.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-32" crlf))

(defrule  REGLA-L-N3-33  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  0.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  1.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-33" crlf))

(defrule  REGLA-L-N3-34  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  0.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  1.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-34" crlf))

(defrule  REGLA-L-N3-35  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  0.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  1.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-35" crlf))

(defrule  REGLA-L-N3-36  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  1.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  1.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-36" crlf))
    
(defrule  REGLA-L-N3-37  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  1.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  2.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-37" crlf))

(defrule  REGLA-L-N3-38  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  1.00 )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  2.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-38" crlf))
    
(defrule  REGLA-L-N3-39  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  ))
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  1.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  3.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-39" crlf))

(defrule  REGLA-L-N3-40  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  1.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  2.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-40" crlf))
    
(defrule  REGLA-L-N3-41  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  1.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  ))
    => 
    (assert (MiniMental_Calculado (cLenguaje  3.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-41" crlf))
    
(defrule  REGLA-L-N3-42  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  1.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  3.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-42" crlf))
    
(defrule  REGLA-L-N3-43  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  1.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-43" crlf))

(defrule  REGLA-L-N3-44  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  2.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  2.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-44" crlf))
    
(defrule  REGLA-L-N3-45  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  2.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  3.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-45" crlf))
    
(defrule  REGLA-L-N3-46  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  2.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  3.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-46" crlf))
    
(defrule  REGLA-L-N3-47  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  2.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-47" crlf))
    
(defrule  REGLA-L-N3-48  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  2.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  3.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-48" crlf))
    
(defrule  REGLA-L-N3-49  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  2.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-49" crlf))
    
(defrule  REGLA-L-N3-50  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  2.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-50" crlf))

(defrule  REGLA-L-N3-51  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  2.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  0.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  5.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-51" crlf))
    
(defrule  REGLA-L-N3-52  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  -1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  -0.50 )))
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-52" crlf))
    
(defrule  REGLA-L-N3-53  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  -1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  0.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-53" crlf))

(defrule  REGLA-L-N3-54  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  -1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  0.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-54" crlf))

(defrule  REGLA-L-N3-55  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  -1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  1.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-55" crlf))

(defrule  REGLA-L-N3-56  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  -1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  0.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-56" crlf))
    
(defrule  REGLA-L-N3-57  
    (Lenguaje (cLenguajeFrase  "SI"  ))
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  -1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  1.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-57" crlf))
    
(defrule  REGLA-L-N3-58  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  -1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  1.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-58" crlf))
    
(defrule  REGLA-L-N3-59  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  -1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  2.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-59" crlf))

(defrule  REGLA-L-N3-60  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  0.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  1.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-60" crlf))
    
(defrule  REGLA-L-N3-61  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  0.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  2.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-61" crlf))

(defrule  REGLA-L-N3-62  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  0.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  2.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-62" crlf))

(defrule  REGLA-L-N3-63  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  0.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  3.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-63" crlf))
    
(defrule  REGLA-L-N3-64  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  0.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  2.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-64" crlf))
    
(defrule  REGLA-L-N3-65  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  0.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    =>  
    (assert (MiniMental_Calculado (cLenguaje  3.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-65" crlf))

(defrule  REGLA-L-N3-66  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  0.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  ))
    => 
    (assert (MiniMental_Calculado (cLenguaje  3.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-66" crlf))

(defrule  REGLA-L-N3-67  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  0.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-67" crlf))
    
(defrule  REGLA-L-N3-68  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  ))
    (Lenguaje (cLenguajeAccion  1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  2.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-68" crlf))

(defrule  REGLA-L-N3-69  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  3.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-69" crlf))
    
(defrule  REGLA-L-N3-70  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  3.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-70" crlf))

(defrule  REGLA-L-N3-71  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-71" crlf))
    
(defrule  REGLA-L-N3-72  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  3.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-72" crlf))
    
(defrule  REGLA-L-N3-73  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-73" crlf))
    
(defrule  REGLA-L-N3-74 
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-74" crlf))

(defrule  REGLA-L-N3-75  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  5.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-75" crlf))

(defrule  REGLA-L-N3-76  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  3.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-76" crlf))

(defrule  REGLA-L-N3-77  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  3.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  5.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-77" crlf))

(defrule  REGLA-L-N3-78  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  3.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  ))
    => 
    (assert (MiniMental_Calculado (cLenguaje  5.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-78" crlf))

(defrule  REGLA-L-N3-79  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  3.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  6.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-79" crlf))
    
(defrule  REGLA-L-N3-80  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  3.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  5.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-80" crlf))

(defrule  REGLA-L-N3-81  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  ))
    (Lenguaje (cLenguajeAccion  3.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  6.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-81" crlf))

(defrule  REGLA-L-N3-82  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  3.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  6.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-82" crlf))

(defrule  REGLA-L-N3-83  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  3.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  ))
    => 
    (assert (MiniMental_Calculado (cLenguaje  7.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-83" crlf))

(defrule  REGLA-L-N3-84  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  0.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-84" crlf))
    
(defrule  REGLA-L-N3-85  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  1.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  ))
    => 
    (assert (MiniMental_Calculado (cLenguaje  2.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-85" crlf))

(defrule  REGLA-L-N3-86  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  1.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  3.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-86" crlf))
    
(defrule  REGLA-L-N3-87  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  1.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  3.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-87" crlf))
    
(defrule  REGLA-L-N3-88  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  1.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-88" crlf))
    
(defrule  REGLA-L-N3-89  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  ))
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  1.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  3.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-89" crlf))

(defrule  REGLA-L-N3-90  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  1.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-90" crlf))
    
(defrule  REGLA-L-N3-91  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  1.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-91" crlf))

(defrule  REGLA-L-N3-92  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  1.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  5.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-92" crlf))

(defrule  REGLA-L-N3-93  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  ))
    (Lenguaje (cLenguajeAccion  2.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  3.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-93" crlf))

(defrule  REGLA-L-N3-94  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  2.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-94" crlf))

(defrule  REGLA-L-N3-95  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  2.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-95" crlf))

(defrule  REGLA-L-N3-96  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  2.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  5.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-96" crlf))

(defrule  REGLA-L-N3-97  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  2.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-97" crlf))
    
(defrule  REGLA-L-N3-98  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  2.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  ))
    => 
    (assert (MiniMental_Calculado (cLenguaje  5.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-98" crlf))

(defrule  REGLA-L-N3-99  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  2.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  5.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-99" crlf))
    
(defrule  REGLA-L-N3-100  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  2.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  1.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  6.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-100" crlf))

(defrule  REGLA-L-N3-101  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  -1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  0.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-101" crlf))

(defrule  REGLA-L-N3-102  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  -1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  ))
    => 
    (assert (MiniMental_Calculado (cLenguaje  1.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-102" crlf))

(defrule  REGLA-L-N3-103  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  -1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  1.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-103" crlf))

(defrule  REGLA-L-N3-104  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  -1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  2.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-104" crlf))

(defrule  REGLA-L-N3-105  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  -1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  1.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-105" crlf))
    
(defrule  REGLA-L-N3-106  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  -1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  2.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-106" crlf))
    
(defrule  REGLA-L-N3-107  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  -1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  2.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-107" crlf))

(defrule  REGLA-L-N3-108  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  -1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  3.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-108" crlf))

(defrule  REGLA-L-N3-109  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  0.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  2.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-109" crlf))
    
(defrule  REGLA-L-N3-110  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  0.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  3.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-110" crlf))

(defrule  REGLA-L-N3-111  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  0.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  3.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-111" crlf))
    
(defrule  REGLA-L-N3-112  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  0.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-112" crlf))
    
(defrule  REGLA-L-N3-113  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  0.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  ))
    => 
    (assert (MiniMental_Calculado (cLenguaje  3.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-113" crlf))
    
(defrule  REGLA-L-N3-114  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  0.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-114" crlf))
    
(defrule  REGLA-L-N3-115  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  0.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-115" crlf))

(defrule  REGLA-L-N3-116  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  0.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  ))
    => 
    (assert (MiniMental_Calculado (cLenguaje  5.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-116" crlf))

(defrule  REGLA-L-N3-117  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  3.50 )))
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-117" crlf))
    
(defrule  REGLA-L-N3-118  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  ))
    (Lenguaje (cLenguajeAccion  1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-118" crlf))

(defrule  REGLA-L-N3-119  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-119" crlf))
    
(defrule  REGLA-L-N3-120  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  5.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-120" crlf))
    
(defrule  REGLA-L-N3-121  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  ))
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-121" crlf))

(defrule  REGLA-L-N3-122  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  5.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-122" crlf))

(defrule  REGLA-L-N3-123  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  5.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-123" crlf))
    
(defrule  REGLA-L-N3-124  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  1.50  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  ))
    => 
    (assert (MiniMental_Calculado (cLenguaje  6.50 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-124" crlf))

(defrule  REGLA-L-N3-125  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  3.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  5.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-125" crlf))

(defrule  REGLA-L-N3-126  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  3.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  ))
    => 
    (assert (MiniMental_Calculado (cLenguaje  6.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-126" crlf))

(defrule  REGLA-L-N3-127  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  3.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  6.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-127" crlf))

(defrule  REGLA-L-N3-128  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  3.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  7.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-128" crlf))

(defrule  REGLA-L-N3-129  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  3.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  6.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-129" crlf))
    
(defrule  REGLA-L-N3-130  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  3.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  7.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-130" crlf))

(defrule  REGLA-L-N3-131  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  3.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  7.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-131" crlf))

(defrule  REGLA-L-N3-132  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  3.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  8.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-132" crlf))

(defrule  REGLA-L-N3-133 
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  0.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  5.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-133" crlf))

(defrule  REGLA-L-N3-134  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  1.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  3.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-134" crlf))

(defrule  REGLA-L-N3-135  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  1.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-135" crlf))

(defrule  REGLA-L-N3-136  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  1.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-136" crlf))

(defrule  REGLA-L-N3-137  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  1.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  5.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-137" crlf))
    
(defrule  REGLA-L-N3-138  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  1.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-138" crlf))
    
(defrule  REGLA-L-N3-139  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  1.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  5.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-139" crlf))

(defrule  REGLA-L-N3-140  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  1.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  5.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-140" crlf))
    
(defrule  REGLA-L-N3-141  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  1.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  6.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-141" crlf))

(defrule  REGLA-L-N3-142  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  2.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  ))
    => 
    (assert (MiniMental_Calculado (cLenguaje  4.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-142" crlf))

(defrule  REGLA-L-N3-143  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  2.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  5.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-143" crlf))

(defrule  REGLA-L-N3-144  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  2.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  5.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-144" crlf))

(defrule  REGLA-L-N3-145  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "NO"  )) 
    (Lenguaje (cLenguajeAccion  2.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  6.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-145" crlf))

(defrule  REGLA-L-N3-146  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  2.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  5.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-146" crlf))
    
(defrule  REGLA-L-N3-147  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "NO"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  2.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  6.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-147" crlf))

(defrule  REGLA-L-N3-148  
    (Lenguaje (cLenguajeFrase  "NO"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  ))
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  2.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  ))
    => 
    (assert (MiniMental_Calculado (cLenguaje  6.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-148" crlf))

(defrule  REGLA-L-N3-149  
    (Lenguaje (cLenguajeFrase  "SI"  )) 
    (Lenguaje (cLenguajeOrden  "SI"  )) 
    (Lenguaje (cLenguajeEscritura  "SI"  )) 
    (Lenguaje (cLenguajeAccion  2.00  )) 
    (Entrevista (Lenguaje_CosasNombradas  2.00  )) 
    => 
    (assert (MiniMental_Calculado (cLenguaje  7.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-L-N3-149" crlf))


(defrule  REGLA-D-N3-1  
    (Entrevista (Dibujo_CopiaCorrectamenteDibujo  "SI"  )) 
    => 
    (assert (MiniMental_Calculado (cDibujo  1.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-D-N3-1" crlf))

(defrule  REGLA-D-N3-2  
    (Entrevista (Dibujo_CopiaCorrectamenteDibujo  "NO"  )) 
    => 
    (assert (MiniMental_Calculado (cDibujo  0.00 ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-D-N3-2" crlf))


(defrule  REGLA-E-N1-CARACTER-1  
    (Entrevista (Olvido_ImpactoCaracter  "SI"  )) 
    => 
    (assert (Diagnostico (cCaracter  "R" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-E-N1-CARACTER-1" crlf))

(defrule  REGLA-E-N1-CARACTER-2  
    (Entrevista (Olvido_ImpactoCaracter  "NO"  )) 
    => 
    (assert (Diagnostico (cCaracter  "N" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-E-N1-CARACTER-2" crlf))


(defrule  REGLA-E-N1-FUNCIONAL-1  
    (Entrevista (Olvido_ImpactoFuncional  "SI"  )) 
    => 
    (assert (Diagnostico (cFuncional  "R" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-E-N1-FUNCIONAL-1" crlf))

(defrule  REGLA-E-N1-FUNCIONAL-2  
    (Entrevista (Olvido_ImpactoFuncional  "NO"  )) 
    => 
    (assert (Diagnostico (cFuncional  "N" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-E-N1-FUNCIONAL-2" crlf))


(defrule  REGLA-E-N1-QUEJA-2/5/6  
    (Entrevista (Olvido_OlvidaHechosRecientes  "SI"  )) 
    (Entrevista (Olvido_QuejaOlvidoFamiliar  "SI"  ))  
    => 
    (assert (Diagnostico (cQueja  "R" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-E-N1-QUEJA-2/5/6" crlf))

(defrule  REGLA-E-N1-QUEJA-7/8  
    (Entrevista (Olvido_OlvidaHechosRecientes  "SI"  )) 
    (Entrevista (Olvido_QuejaOlvidoFamiliar  "NO"  )) 
    (Entrevista (Olvido_PacienteMinimizaOlvidos  "NO"  )) 
    => 
    (assert (Diagnostico (cQueja  "N" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-E-N1-QUEJA-7/8" crlf))


(defrule  REGLA-E-N1-OLVIDO-1  
    (Entrevista (Olvido_OlvidaHechosRecientes  "SI"  )) 
    (Entrevista (Olvido_OlvidoProgresa  "SI"  )) 
    => 
    (assert (Diagnostico (cOlvido  "R" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-E-N1-OLVIDO-1" crlf))

(defrule  REGLA-E-N1-OLVIDO-2  
    (Entrevista (Olvido_OlvidaHechosRecientes  "SI"  )) 
    (Entrevista (Olvido_OlvidoProgresa  "NO"  )) 
    => 
    (assert (Diagnostico (cOlvido  "N" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " REGLA-E-N1-OLVIDO-2" crlf))


(defrule  Regla-DIAGNOSTICO-N1-1/65/17/81  
    (Diagnostico (cMiniMental_Calculado  27.00  )) 
    (Entrevista (Escolaridad  12.00)) 
    (Diagnostico (cOlvido  "R"))  
    (Diagnostico (cFuncional  "R" ))  
    => 
    (assert (Diagnostico (Resultado  "DemenciaLeve" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-1/65/17/81" crlf))

(defrule  Regla-DIAGNOSTICO-N1-2/10/34/42  
    (Diagnostico (cMiniMental_Calculado  20.00  )) 
    (Entrevista (Escolaridad  12.00)) 
    (Diagnostico (cQueja  "R"))   
    (Diagnostico (cCaracter  "R"  )) 
    => 
    (assert (Diagnostico (Resultado  "DemenciaModerada" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-2/10/34/42" crlf))

(defrule  Regla-DIAGNOSTICO-N1-3/11/19/27/35/43/51/59/67/75/83/91/99/107/115/123  
    (Diagnostico (cMiniMental_Calculado  25.00  )) 
    (Entrevista (Escolaridad  12 ))  
    => 
    (assert (Diagnostico (Resultado  "DemenciaLeve" )))
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####"))) 
    (printout t " Regla-DIAGNOSTICO-N1-3/11/19/27/35/43/51/59/67/75/83/91/99/107/115/123" crlf))

(defrule  Regla-DIAGNOSTICO-N1-4/12/20/28/36/44/52/60/68/76/84/92/100/108/116/124  
    (Diagnostico (cMiniMental_Calculado  18.00  )) 
    (Entrevista (Escolaridad  12 ))  
    => 
    (assert (Diagnostico (Resultado  "DemenciaModerada" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-4/12/20/28/36/44/52/60/68/76/84/92/100/108/116/124" crlf))

(defrule  Regla-DIAGNOSTICO-N1-5/69/37/101/21/53/85/117/13/29/45/61/77/93/109/125  
    (Diagnostico (cMiniMental_Calculado  27.00  )) 
    (Entrevista (Escolaridad  6 ))  
    => 
    (assert (Diagnostico (Resultado  "OlvidoBenigno" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-5/69/37/101/21/53/85/117/13/29/45/61/77/93/109/125" crlf))

(defrule  Regla-DIAGNOSTICO-N1-6/14/22/30/38/46/54/62/70/78/86/94/102/110/118/126  
    (Diagnostico (cMiniMental_Calculado  20.00  )) 
    (Entrevista (Escolaridad  6 ))  
    => 
    (assert (Diagnostico (Resultado  "DemenciaLeve" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-6/14/22/30/38/46/54/62/70/78/86/94/102/110/118/126" crlf))

(defrule  Regla-DIAGNOSTICO-N1-7/15/71/79  
    (Diagnostico (cMiniMental_Calculado  25.00  )) 
    (Entrevista (Escolaridad  6.00 )) 
    (Diagnostico (cQueja  "R" )) 
    (Diagnostico (cFuncional  "R" ))  
    => 
    (assert (Diagnostico (Resultado  "DemenciaModerada" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-7/15/71/79" crlf))

(defrule  Regla-DIAGNOSTICO-N1-8/24/72/88  
    (Diagnostico (cMiniMental_Calculado  18.00  )) 
    (Entrevista (Escolaridad  6.00 )) 
    (Diagnostico (cOlvido  "R" ))  
    (Diagnostico (cFuncional  "R" ))  
    => 
    (assert (Diagnostico (Resultado  "DemenciaModerada" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-8/24/72/88" crlf))

(defrule  Regla-DIAGNOSTICO-N1-9/25  
    (Diagnostico (cMiniMental_Calculado  27.00  )) 
    (Entrevista (Escolaridad  12.00 )) 
    (Diagnostico (cOlvido  "N" )) 
    (Diagnostico (cFuncional  "R" )) 
    (Diagnostico (cCaracter  "R"  )) 
    => 
    (assert (Diagnostico (Resultado  "DemenciaLeve" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-9/25" crlf))

(defrule  Regla-DIAGNOSTICO-N1-16/32  
    (Diagnostico (cMiniMental_Calculado  18.00  )) 
    (Entrevista (Escolaridad  6.00 )) 
    (Diagnostico (cOlvido  "N" )) 
    (Diagnostico (cFuncional  "R" )) 
    (Diagnostico (cCaracter  "R"  )) 
    => 
    (assert (Diagnostico (Resultado  "DemenciaModerada" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-16/32" crlf))

(defrule  Regla-DIAGNOSTICO-N1-18/26  
    (Diagnostico (cMiniMental_Calculado  20.00  )) 
    (Entrevista (Escolaridad  12.00 )) 
    (Diagnostico (cQueja  "N" )) 
    (Diagnostico (cFuncional  "R" )) 
    (Diagnostico (cCaracter  "R"  )) 
    => 
    (assert (Diagnostico (Resultado  "DemenciaModerada" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-18/26" crlf))

(defrule  Regla-DIAGNOSTICO-N1-23/31  
    (Diagnostico (cMiniMental_Calculado  25.00  )) 
    (Entrevista (Escolaridad  6.00 ))  
    (Diagnostico (cQueja  "N" )) 
    (Diagnostico (cFuncional  "R" )) 
    (Diagnostico (cCaracter  "R"  )) 
    => 
    (assert (Diagnostico (Resultado  "DemenciaModerada" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-23/31" crlf))

(defrule  Regla-DIAGNOSTICO-N1-33/49  
    (Diagnostico (cMiniMental_Calculado  27.00  )) 
    (Entrevista (Escolaridad  12.00 )) 
    (Diagnostico (cOlvido  "R" )) 
    (Diagnostico (cFuncional  "N" )) 
    (Diagnostico (cCaracter  "R"  )) 
    => 
    (assert (Diagnostico (Resultado  "DemenciaLeve" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-33/49" crlf))

(defrule  Regla-DIAGNOSTICO-N1-39/47  
    (Diagnostico (cMiniMental_Calculado  25.00  )) 
    (Entrevista (Escolaridad  6.00 )) 
    (Diagnostico (cQueja  "R" )) 
    (Diagnostico (cFuncional  "N" )) 
    (Diagnostico (cCaracter  "R"  )) 
    => 
    (assert (Diagnostico (Resultado  "DemenciaModerada" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-39/47" crlf))

(defrule  Regla-DIAGNOSTICO-N1-40/56  
    (Diagnostico (cMiniMental_Calculado  18.00  )) 
    (Entrevista (Escolaridad  6.00))  
    (Diagnostico (cOlvido  "R" )) 
    (Diagnostico (cFuncional  "N" )) 
    (Diagnostico (cCaracter  "R"  )) 
    => 
    (assert (Diagnostico (Resultado  "DemenciaModerada" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-40/56" crlf))

(defrule  Regla-DIAGNOSTICO-N1-41  
    (Diagnostico (cMiniMental_Calculado  27.00  )) 
    (Entrevista (Escolaridad  12.00 )) 
    (Diagnostico (cOlvido  "N" )) 
    (Diagnostico (cQueja  "R"))  
    (Diagnostico (cFuncional  "N" )) 
    (Diagnostico (cCaracter  "R"  )) 
    => 
    (assert (Diagnostico (Resultado  "DemenciaLeve" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-41" crlf))

(defrule  Regla-DIAGNOSTICO-N1-48  
    (Diagnostico (cMiniMental_Calculado  18.00  )) 
    (Entrevista (Escolaridad  6.00 )) 
    (Diagnostico (cOlvido  "N" )) 
    (Diagnostico (cQueja  "R" )) 
    (Diagnostico (cFuncional  "N" )) 
    (Diagnostico (cCaracter  "R"  )) 
    => 
    (assert (Diagnostico (Resultado  "DemenciaModerada" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-48" crlf))

(defrule  Regla-DIAGNOSTICO-N1-50  
    (Diagnostico (cMiniMental_Calculado  20.00  )) 
    (Entrevista (Escolaridad  12.00 )) 
    (Diagnostico (cOlvido  "R" )) 
    (Diagnostico (cQueja  "N" )) 
    (Diagnostico (cFuncional  "N" )) 
    (Diagnostico (cCaracter  "R"  )) 
    => 
    (assert (Diagnostico (Resultado  "DemenciaModerada" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-50" crlf))

(defrule  Regla-DIAGNOSTICO-N1-55  
    (Diagnostico (cMiniMental_Calculado  25.00  )) 
    (Entrevista (Escolaridad  6.00 ))  
    (Diagnostico (cOlvido  "R" )) 
    (Diagnostico (cQueja  "N" )) 
    (Diagnostico (cFuncional  "N" )) 
    (Diagnostico (cCaracter  "R"  )) 
    => 
    (assert (Diagnostico (Resultado  "DemenciaModerada" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-55" crlf))

(defrule  Regla-DIAGNOSTICO-N1-57  
    (Diagnostico (cMiniMental_Calculado  27.00  )) 
    (Entrevista (Escolaridad  12.00 )) 
    (Diagnostico (cOlvido  "N" )) 
    (Diagnostico (cQueja  "N" )) 
    (Diagnostico (cFuncional  "N" )) 
    (Diagnostico (cCaracter  "R"  )) 
    => 
    (assert (Diagnostico (Resultado  "OlvidoBenigno" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-57" crlf))

(defrule  Regla-DIAGNOSTICO-N1-58  
    (Diagnostico (cMiniMental_Calculado  20.00  )) 
    (Entrevista (Escolaridad  12.00 )) 
    (Diagnostico (cOlvido  "N" )) 
    (Diagnostico (cQueja  "N"))  
    (Diagnostico (cFuncional  "N" )) 
    (Diagnostico (cCaracter  "R"  )) 
    => 
    (assert (Diagnostico (Resultado  "DemenciaLeve" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-58" crlf))

(defrule  Regla-DIAGNOSTICO-N1-63  
    (Diagnostico (cMiniMental_Calculado  25.00  )) 
    (Entrevista (Escolaridad  6.00 )) 
    (Diagnostico (cOlvido  "N" )) 
    (Diagnostico (cQueja  "N" )) 
    (Diagnostico (cFuncional  "N" )) 
    (Diagnostico (cCaracter  "R"  )) 
    => 
    (assert (Diagnostico (Resultado  "DemenciaLeve" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-63" crlf))

(defrule  Regla-DIAGNOSTICO-N1-64  
    (Diagnostico (cMiniMental_Calculado  18.00  )) 
    (Entrevista (Escolaridad  6.00 )) 
    (Diagnostico (cOlvido  "N" )) 
    (Diagnostico (cQueja  "N" )) 
    (Diagnostico (cFuncional  "N" )) 
    (Diagnostico (cCaracter  "R"  )) 
    => 
    (assert (Diagnostico (Resultado  "DemenciaLeve" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-64" crlf))

(defrule  Regla-DIAGNOSTICO-N1-66/74  
    (Diagnostico (cMiniMental_Calculado  20.00  )) 
    (Entrevista (Escolaridad  12.00 )) 
    (Diagnostico (cQueja  "R" )) 
    (Diagnostico (cFuncional  "R" )) 
    (Diagnostico (cCaracter  "N"  )) 
    => 
    (assert (Diagnostico (Resultado  "DemenciaModerada" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-66/74" crlf))

(defrule  Regla-DIAGNOSTICO-N1-73  
    (Diagnostico (cMiniMental_Calculado  27.00  )) 
    (Entrevista (Escolaridad  12.00 )) 
    (Diagnostico (cOlvido  "N" )) 
    (Diagnostico (cQueja  "R" )) 
    (Diagnostico (cFuncional  "R")) 
    (Diagnostico (cCaracter  "N"  )) 
    => 
    (assert (Diagnostico (Resultado  "DemenciaLeve" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-73" crlf))

(defrule  Regla-DIAGNOSTICO-N1-80  
    (Diagnostico (cMiniMental_Calculado  18.00  )) 
    (Entrevista (Escolaridad  6.00 )) 
    (Diagnostico (cOlvido  "N" )) 
    (Diagnostico (cQueja  "R" )) 
    (Diagnostico (cFuncional  "R" )) 
    (Diagnostico (cCaracter  "N"  )) 
    => 
    (assert (Diagnostico (Resultado  "DemenciaModerada" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-80" crlf))

(defrule  Regla-DIAGNOSTICO-N1-82  
    (Diagnostico (cMiniMental_Calculado  20.00  )) 
    (Entrevista (Escolaridad  12.00 )) 
    (Diagnostico (cOlvido  "R" )) 
    (Diagnostico (cQueja  "N" )) 
    (Diagnostico (cFuncional  "R" )) 
    (Diagnostico (cCaracter  "N"  ))
    => 
    (assert (Diagnostico (Resultado  "DemenciaModerada" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-82" crlf))

(defrule  Regla-DIAGNOSTICO-N1-87  
    (Diagnostico (cMiniMental_Calculado  25.00  )) 
    (Entrevista (Escolaridad  6.00 )) 
    (Diagnostico (cOlvido  "R" )) 
    (Diagnostico (cQueja  "N" )) 
    (Diagnostico (cFuncional  "R" )) 
    (Diagnostico (cCaracter  "N"  )) 
    => 
    (assert (Diagnostico (Resultado  "DemenciaModerada" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-87" crlf))

(defrule  Regla-DIAGNOSTICO-N1-89  
    (Diagnostico (cMiniMental_Calculado  27.00  )) 
    (Entrevista (Escolaridad  12.00 ))
    (Diagnostico (cOlvido  "N" )) 
    (Diagnostico (cQueja  "N" )) 
    (Diagnostico (cFuncional  "R"))  
    (Diagnostico (cCaracter  "N"  )) 
    => 
    (assert (Diagnostico (Resultado  "OlvidoBenigno" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-89" crlf))

(defrule  Regla-DIAGNOSTICO-N1-90  
    (Diagnostico (cMiniMental_Calculado  20.00  )) 
    (Entrevista (Escolaridad  12.00 )) 
    (Diagnostico (cOlvido  "N" )) 
    (Diagnostico (cQueja  "N" )) 
    (Diagnostico (cFuncional  "R" )) 
    (Diagnostico (cCaracter  "N"  )) 
    => 
    (assert (Diagnostico (Resultado  "DemenciaLeve" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-90" crlf))

(defrule  Regla-DIAGNOSTICO-N1-95  
    (Diagnostico (cMiniMental_Calculado  25.00  )) 
    (Entrevista (Escolaridad  6.00 )) 
    (Diagnostico (cOlvido  "N" )) 
    (Diagnostico (cQueja  "N"))  
    (Diagnostico (cFuncional  "R" )) 
    (Diagnostico (cCaracter  "N"  )) 
    => 
    (assert (Diagnostico (Resultado  "DemenciaLeve" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-95" crlf))

(defrule  Regla-DIAGNOSTICO-N1-96  
    (Diagnostico (cMiniMental_Calculado  18.00  )) 
    (Entrevista (Escolaridad  6.00 )) 
    (Diagnostico (cOlvido  "N" )) 
    (Diagnostico (cQueja  "N" )) 
    (Diagnostico (cFuncional  "R" )) 
    (Diagnostico (cCaracter  "N"  )) 
    => 
    (assert (Diagnostico (Resultado  "DemenciaLeve" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-96" crlf))

(defrule  Regla-DIAGNOSTICO-N1-97/105  
    (Diagnostico (cMiniMental_Calculado  27.00  )) 
    (Entrevista (Escolaridad  12.00 )) 
    (Diagnostico (cOlvido  "R" )) 
    (Diagnostico (cQueja  "R" )) 
    (Diagnostico (cFuncional  "N" )) 
    (Diagnostico (cCaracter  "N"  )) 
    => 
    (assert (Diagnostico (Resultado  "OlvidoBenigno" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-97/105" crlf))

(defrule  Regla-DIAGNOSTICO-N1-98/106/114/122  
    (Diagnostico (cMiniMental_Calculado  20.00  )) 
    (Entrevista (Escolaridad  12.00 )) 
    (Diagnostico (cFuncional  "N" )) 
    (Diagnostico (cCaracter  "N"  )) 
    => 
    (assert (Diagnostico (Resultado  "DemenciaLeve" ))) 
    (printout t " Regla-DIAGNOSTICO-N1-98/106/114/122" crlf))

(defrule  Regla-DIAGNOSTICO-N1-103/111/119/127  
    (Diagnostico (cMiniMental_Calculado  25.00  )) 
    (Entrevista (Escolaridad  6.00 )) 
    (Diagnostico (cFuncional  "N" )) 
    (Diagnostico (cCaracter  "N"  )) 
    => 
    (assert (Diagnostico (Resultado  "DemenciaLeve" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-103/111/119/127" crlf))

(defrule  Regla-DIAGNOSTICO-N1-104/112/120/128  
    (Diagnostico (cMiniMental_Calculado  18.00  )) 
    (Entrevista (Escolaridad  6.00 )) 
    (Diagnostico (cFuncional  "N" )) 
    (Diagnostico (cCaracter  "N"  )) 
    => 
    (assert (Diagnostico (Resultado  "DemenciaLeve" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-104/112/120/128" crlf))

(defrule  Regla-DIAGNOSTICO-N1-113/121  
    (Diagnostico (cMiniMental_Calculado  27.00  )) 
    (Entrevista (Escolaridad  12.00 )) 
    (Diagnostico (cQueja  "N" )) 
    (Diagnostico (cFuncional  "N" )) 
    (Diagnostico (cCaracter  "N"  )) 
    => 
    (assert (Diagnostico (Resultado  "OlvidoBenigno" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-113/121" crlf))

(defrule  Regla-DIAGNOSTICO-N1-129  
    (Diagnostico (cMiniMental_Calculado  30.00  ))  
    => 
    (assert (Diagnostico (Resultado  "OlvidoBenigno" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-129" crlf))

(defrule  Regla-DIAGNOSTICO-N1-130  
    (Diagnostico (cMiniMental_Calculado  29.00  ))  
    => 
    (assert (Diagnostico (Resultado  "OlvidoBenigno" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-130" crlf))

(defrule  Regla-DIAGNOSTICO-N1-131  
    (Diagnostico (cMiniMental_Calculado  28.00  ))  
    => 
    (assert (Diagnostico (Resultado  "OlvidoBenigno" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-131" crlf))

(defrule  Regla-DIAGNOSTICO-N1-132  
    (Diagnostico (cMiniMental_Calculado  26.00  )) 
    (Entrevista (Escolaridad  12.00 ))  
    => 
    (assert (Diagnostico (Resultado  "DemenciaLeve" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-132" crlf))

(defrule  Regla-DIAGNOSTICO-N1-133  
    (Diagnostico (cMiniMental_Calculado  26.00  )) 
    (Entrevista (Escolaridad  6.00 ))  
    => 
    (assert (Diagnostico (Resultado  "OlvidoBenigno" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-133" crlf))

(defrule  Regla-DIAGNOSTICO-N1-134  
    (Diagnostico (cMiniMental_Calculado  24.00  ))  
    => 
    (assert (Diagnostico (Resultado  "DemenciaLeve" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-134" crlf))

(defrule  Regla-DIAGNOSTICO-N1-135  
    (Diagnostico (cMiniMental_Calculado  23.00  ))  
    =>  
    (assert (Diagnostico (Resultado  "DemenciaLeve" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-135" crlf))

(defrule  Regla-DIAGNOSTICO-N1-136  
    (Diagnostico (cMiniMental_Calculado  22.00  ))   
    => 
    (assert (Diagnostico (Resultado  "DemenciaLeve" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-136" crlf))

(defrule  Regla-DIAGNOSTICO-N1-137  
    (Diagnostico (cMiniMental_Calculado  21.00  ))   
    => 
    (assert (Diagnostico (Resultado  "DemenciaLeve" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-137" crlf))

(defrule  Regla-DIAGNOSTICO-N1-138  
    (Diagnostico (cMiniMental_Calculado  19.00  )) 
    (Entrevista (Escolaridad  12.00 ))  
    => 
    (assert (Diagnostico (Resultado  "DemenciaModerada" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-138" crlf))

(defrule  Regla-DIAGNOSTICO-N1-139  
    (Diagnostico (cMiniMental_Calculado  19.00  )) 
    (Entrevista (Escolaridad  6.00 ))  
    => 
    (assert (Diagnostico (Resultado  "DemenciaLeve" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-139" crlf))

(defrule  Regla-DIAGNOSTICO-N1-140  
    (Diagnostico (cMiniMental_Calculado  17.00  ))  
    => 
    (assert (Diagnostico (Resultado  "DemenciaModerada" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-140" crlf))

(defrule  Regla-DIAGNOSTICO-N1-141  
    (Diagnostico (cMiniMental_Calculado  16.00  ))  
    => 
    (assert (Diagnostico (Resultado  "DemenciaModerada" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-141" crlf))

(defrule  Regla-DIAGNOSTICO-N1-142  
    (Diagnostico (cMiniMental_Calculado  15.00  ))    
    => 
    (assert (Diagnostico (Resultado  "DemenciaModerada" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-142" crlf))

(defrule  Regla-DIAGNOSTICO-N1-143  
    (Diagnostico (cMiniMental_Calculado  14.00  ))    
    => 
    (assert (Diagnostico (Resultado  "DemenciaModerada" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-143" crlf))

(defrule  Regla-DIAGNOSTICO-N1-144  
    (Diagnostico (cMiniMental_Calculado  13.00  ))    
    => 
    (assert (Diagnostico (Resultado  "DemenciaModerada" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-144" crlf))

(defrule  Regla-DIAGNOSTICO-N1-145  
    (Diagnostico (cMiniMental_Calculado  12.00  ))    
    => 
    (assert (Diagnostico (Resultado  "DemenciaModerada" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-145" crlf))

(defrule  Regla-DIAGNOSTICO-N1-146  
    (Diagnostico (cMiniMental_Calculado  11.00  ))    
    => 
    (assert (Diagnostico (Resultado  "DemenciaModerada" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-146" crlf))

(defrule  Regla-DIAGNOSTICO-N1-147  
    (Diagnostico (cMiniMental_Calculado  10.00  ))  
    => 
    (assert (Diagnostico (Resultado  "DemenciaModerada" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-147" crlf))

(defrule  Regla-DIAGNOSTICO-N1-148  
    (Diagnostico (cMiniMental_Calculado  9.00  )) 
    (Entrevista (Escolaridad  12.00 ))  
    => 
    (assert (Diagnostico (Resultado  "DemenciaSevera" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-148" crlf))

(defrule  Regla-DIAGNOSTICO-N1-149  
    (Diagnostico (cMiniMental_Calculado  9.00  )) 
    (Entrevista (Escolaridad  6.00 ))  
    => 
    (assert (Diagnostico (Resultado  "DemenciaModerada" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-149" crlf))

(defrule  Regla-DIAGNOSTICO-N1-150  
    (Diagnostico (cMiniMental_Calculado  8.00  )) 
    (Entrevista (Escolaridad  12.00 ))  
    => 
    (assert (Diagnostico (Resultado  "DemenciaSevera" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-150" crlf))

(defrule  Regla-DIAGNOSTICO-N1-151  
    (Diagnostico (cMiniMental_Calculado  8.00  )) 
    (Entrevista (Escolaridad  6.00 ))  
    => 
    (assert (Diagnostico (Resultado  "DemenciaModerada" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-151" crlf))

(defrule  Regla-DIAGNOSTICO-N1-152  
    (Diagnostico (cMiniMental_Calculado  7.00  ))  
    => 
    (assert (Diagnostico (Resultado  "DemenciaSevera" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-152" crlf))

(defrule  Regla-DIAGNOSTICO-N1-153  
    (Diagnostico (cMiniMental_Calculado  6.00  ))  
    => 
    (assert (Diagnostico (Resultado  "DemenciaSevera" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-153" crlf))

(defrule  Regla-DIAGNOSTICO-N1-154  
    (Diagnostico (cMiniMental_Calculado  5.00  ))  
    => 
    (assert (Diagnostico (Resultado  "DemenciaSevera" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-154" crlf))

(defrule  Regla-DIAGNOSTICO-N1-155  
    (Diagnostico (cMiniMental_Calculado  4.00  ))  
    => 
    (assert (Diagnostico (Resultado  "DemenciaSevera" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-155" crlf))

(defrule  Regla-DIAGNOSTICO-N1-156  
    (Diagnostico (cMiniMental_Calculado  3.00  ))  
    => 
    (assert (Diagnostico (Resultado  "DemenciaSevera" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-156" crlf))

(defrule  Regla-DIAGNOSTICO-N1-157  
    (Diagnostico (cMiniMental_Calculado  2.00  ))  
    =>
    (assert (Diagnostico (Resultado  "DemenciaSevera" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-157" crlf))

(defrule  Regla-DIAGNOSTICO-N1-158  
    (Diagnostico (cMiniMental_Calculado  1.00  ))  
    => 
    (assert (Diagnostico (Resultado  "DemenciaSevera" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-158" crlf))

(defrule  Regla-DIAGNOSTICO-N1-159  
    (Diagnostico (cMiniMental_Calculado  0.00  ))  
    => 
    (assert (Diagnostico (Resultado  "DemenciaSevera" ))) 
    (assert (DiagnosticoDetalle (ResultadoDetalle "#####")))
    (printout t " Regla-DIAGNOSTICO-N1-159" crlf))
