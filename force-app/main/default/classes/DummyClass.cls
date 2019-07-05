/*------------------------------------------------------------------------------------------------------------------------	
Author:        Salesforce Services	
Company:       Salesforce	
Description:   Dummy class with dummy invocable method for process builders and flows
			   Use this Invocable class in conjunction with the GlobalBypassProcessesSettings__c custom setting
			   Create the bypass as the very first criteria / action group in your process builder. 
			   Criteria: NOT ( $Setup.GlobalBypassProcessesSettings__c.RunProcessBuilders__c )
			   If Criterium is met, the Action Group should invoke the 'Dummy Apex step for Process Builders and Flows'
Inputs:        None	
Test Class:    TestDummyClass	
------------------------------------------------------------------------------------------------------------------------*/	
global class DummyClass {
	@InvocableMethod(label='Dummy Apex Action for Process Builders and Flows')
	global static void DummyMethod() { return; }
}