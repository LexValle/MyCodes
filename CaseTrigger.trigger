/*********************************************************************************************
* Nombre del Trigger                 : CaseTrigger
* Versión                            : 1.0
* Fecha de creación                  : 11 Octubre 2017
* Descripción                        : Trigger en Casos para hacer modificaciones
* Registro de Modificación           :
* Nombre del desarrollador                 Fecha                     Descripción
—---------------------------------------------------------------------------------------------
* Axel Alexis Valle Arellano            11/Oct/2017                 Versión Inicial
—---------------------------------------------------------------------------------------------
**********************************************************************************************/
trigger CaseTrigger on Case (after insert)
{
    CaseTriggerHandler.afterInsert(trigger.new);//llamado al método de la clase controladora

}