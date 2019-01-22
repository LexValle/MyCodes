/*********************************************************************************************
* Nombre de la clase                 : TestCaseTrigger
* Versión                            : 1.0
* Fecha de creación                  : 11 Octubre 2017
* Descripción                        : Método de prueba para la revisión del CaseTrigger
* Registro de Modificación           :
* Nombre del desarrollador                 Fecha                     Descripción
—---------------------------------------------------------------------------------------------
* Axel Alexis Valle Arellano            11/Oct/2017                 Versión Inicial
—---------------------------------------------------------------------------------------------
**********************************************************************************************/
@isTest
private class TestCaseTrigger
{
	
	@isTest static void test_method_one()
	{
		List<Case> casos = Utility.creaCasos(200);
		insert casos;
	}
	
	
}