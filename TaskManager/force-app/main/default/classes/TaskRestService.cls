@RestResource(urlMapping='/tasks')
global with sharing class TaskRestService {
    @HttpGet
    global static List<Task__c> getAllTasks() {
        return [SELECT Id, Name, Due_Date__c, Completed__c FROM Task__c];
    }
}
