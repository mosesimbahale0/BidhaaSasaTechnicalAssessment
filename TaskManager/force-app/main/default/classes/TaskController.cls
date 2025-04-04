public with sharing class TaskController {
    @AuraEnabled(cacheable=true)
    public static List<Task__c> getTasks() {
        return [SELECT Id, Name, Due_Date__c, Completed__c FROM Task__c ORDER BY Due_Date__c ASC];
    }

    @AuraEnabled
    public static void markCompleted(Id taskId) {
        Task__c task = [SELECT Id, Completed__c FROM Task__c WHERE Id = :taskId];
        task.Completed__c = true;
        update task;
    }
}
