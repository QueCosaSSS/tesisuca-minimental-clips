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

(deftemplate LenguajePonderado
    (slot cClasificacionPonderado (type NUMBER))
)
(deftemplate LenguajeAccion
)
(deftemplate LenguajeEscrita
)
(deftemplate LenguajeOrden
)   
(deftemplate LenguajeFrase
)
(deftemplate Lenguaje
    (slot cLenguajePonderado (type NUMBER))
    (slot cLenguajeAccion    (type NUMBER))
    (slot cLenguajeEscrita   (type STRING) (allowed-strings "SI" "NO"))
    (slot cLenguajeOrden     (type STRING) (allowed-strings "SI" "NO"))
    (slot cLenguajeFrase     (type STRING) (allowed-strings "SI" "NO"))
)

(deftemplate MiniMental_Calculado
    (slot cOrientacion (type NUMBER))
)