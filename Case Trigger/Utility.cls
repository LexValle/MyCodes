/*********************************************************************************************
* Nombre de la clase                 : Utility
* Versión                            : 1.0
* Fecha de creación                  : 11 Octubre 2017
* Descripción                        : Clase que contiene métodos de ayuda para otras clases
* @author Axel Alexis Valle Arellano
* @version 1.0.0
—---------------------------------------------------------------------------------------------
**********************************************************************************************/
public class Utility
{
	//Método asíncrono que permite la asignación de contactos a casos
	@future(callout=true)
	public static void AsignaContacto(Map<String,String> mapa)
	{
		//El mapa contiene como llave los Id de los casos insertados previamente 
		//así que se utiliza Query para traer dichos registros.
		List<Case> casos = [SELECT Id, ContactId FROM Case WHERE Id IN: mapa.keySet()];
		for(Case c : casos)
		{
			//El mapa tiene como valores el Id de los contactos creados previamente.
			//Se le asigna dicho contacto a cada caso.
			c.ContactId = mapa.get(c.Id);
		}

		update casos;//actualiza casos
	}

	//Método que nos ayuda a crear n cantidad de registros para el objeto Casos
	public static List<Case> creaCasos(Integer numeroRegistros)
	{
		List<Case> casos = new List<Case>();
		for(Integer i = 0; i<numeroRegistros; i++)
		{
			Case c = new Case();
			c.Status = 'New';
			c.Origin = 'Web';
			c.Names__c = 'Contacto '+i;
			c.LastName__c = 'Apellido '+ i;
			c.Description = 'Caso número: ' +(i+1);
			casos.add(c);
		}

		return casos;
	}
	
}