public class MarkOverdueTasksComplete implements Database.Batchable<sObject> {
    public Database.QueryLocator start(Database.BatchableContext BC) {
        return Database.getQueryLocator('SELECT Id FROM Task__c WHERE Due_Date__c < TODAY AND Completed__c = false');
    }

    public void execute(Database.BatchableContext BC, List<Task__c> tasks) {
        for (Task__c task : tasks) {
            task.Completed__c = true;
        }
        update tasks;
    }

    public void finish(Database.BatchableContext BC) {}
}
