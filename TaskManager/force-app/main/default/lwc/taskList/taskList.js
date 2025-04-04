import { LightningElement, wire, track } from 'lwc';
import getTasks from '@salesforce/apex/TaskController.getTasks';
import markCompleted from '@salesforce/apex/TaskController.markCompleted';

export default class TaskList extends LightningElement {
    @track tasks;
    columns = [
        { label: 'Task Name', fieldName: 'Name', type: 'text' },
        { label: 'Due Date', fieldName: 'Due_Date__c', type: 'date' },
        { label: 'Completed', fieldName: 'Completed__c', type: 'boolean' }
    ];

    @wire(getTasks)
    wiredTasks({ error, data }) {
        if (data) this.tasks = data;
        else if (error) console.error(error);
    }
}
