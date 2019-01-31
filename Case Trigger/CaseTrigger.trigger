/*********************************************************************************************
* Nombre del Trigger                 : CaseTrigger
* Versión                            : 1.0
* Fecha de creación                  : 11 Octubre 2017
* Descripción                        : Trigger en Casos para hacer modificaciones
* Registro de Modificación           :
* Nombre del desarrollador                 Fecha                     Descripción
* @author Axel Alexis Valle Arellano
* @version 1.0.0
**********************************************************************************************/
trigger CaseTrigger on Case (after insert)
{
    CaseTriggerHandler.afterInsert(trigger.new);//llamado al método de la clase controladora

}