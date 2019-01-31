/*********************************************************************************************
* Nombre de la clase                 : CaseTriggerHandler
* Versión                            : 1.0
* Fecha de creación                  : 11 Octubre 2017
* Descripción                        : Clase que contiene la lógica de CaseTrigger.
* Registro de Modificación           :
* Nombre del desarrollador                 Fecha                     Descripción
* @author Axel Alexis Valle Arellano
* @version 1.0.0
**********************************************************************************************/
public class CaseTriggerHandler
{
	public static void afterInsert(List<Case> newList)
	{
		List<Contact> listaContactos = new List<Contact>(); //lista de contactos a insertar
		Map<String, String> mapa = new Map<String,String>(); //mapa que se enviará al método asíncrono

		for(Case c : newList)
		{
			// se crea un nuevo contacto con sus datos correspondientes dentro del Caso
			Contact con = new Contact(); 
			con.FirstName = c.Names__c;
			con.LastName = c.LastName__c;
			con.AccountId = c.AccountId;
			listaContactos.add(con);//se añade a la lista de contactos a insertar
		}

		insert listaContactos;//se inserta la lista de contactos

		/*Como ambas listas tienen el mismo tamaño se utilizan para llenar el mapa que se 
		 enviará al método asíncrono de la clase Utility*/
		for(Integer i = 0; i < listaContactos.size(); i++)
		{
			mapa.put(newList.get(i).Id, listaContactos.get(i).Id);
		}

		//Llamada al método asíncrono
		Utility.AsignaContacto(mapa);
	}
}