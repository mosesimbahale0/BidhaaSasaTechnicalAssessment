#  Project Overview: Salesforce Task Management

This project demonstrates how to manage a list of tasks using Salesforce. It includes a custom object, a Lightning Web Component (LWC) for UI, an Apex Batch/Queueable job to update overdue tasks, an Apex REST endpoint to expose task data, and documentation for deployment and testing. The project is organized in a GitHub repository with a structure that follows Salesforce DX conventions.


# Deploy Command
sf project deploy start --target-org mosesimbahale0-35wq@force.com



# Bug 

 Status: Failed
 Deploy ID: 0AfQH00000K1Ocf0AF
 Target Org: mosesimbahale0-35wq@force.com
 Elapsed Time: 3.33s


Component Failures [8]
┌──────────────────────────┬──────────────────────────┬──────────────────────────────────────────┬─────────────┐
│ Type                     │ Name                     │ Problem                                  │ Line:Column │
├──────────────────────────┼──────────────────────────┼──────────────────────────────────────────┼─────────────┤
│ ApexClass                │ MarkOverdueTasksComplete │ Not available for deploy for this        │             │
│                          │                          │ organization                             │             │
│ ApexClass                │ MarkOverdueTasksComplete │ Not available for deploy for this        │             │
│                          │                          │ organization                             │             │
│ ApexClass                │ TaskController           │ Not available for deploy for this        │             │
│                          │                          │ organization                             │             │
│ ApexClass                │ TaskController           │ Not available for deploy for this        │             │
│                          │                          │ organization                             │             │
│ ApexClass                │ TaskRestService          │ Not available for deploy for this        │             │
│                          │                          │ organization                             │             │
│ ApexClass                │ TaskRestService          │ Not available for deploy for this        │             │
│                          │                          │ organization                             │             │
│ CustomObject             │ Task__c                  │ reached maximum number of custom objects │             │
│ LightningComponentBundle │ taskList                 │ Cannot find Lightning Component Bundle   │             │
│                          │                          │ taskList.                                │             │
└──────────────────────────┴──────────────────────────┴──────────────────────────────────────────┴─────────────┘


Test Results Summary
Passing: 0
Failing: 0
Total: 0
