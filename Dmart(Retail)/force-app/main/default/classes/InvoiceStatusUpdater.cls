global class InvoiceStatusUpdater implements Database.Batchable<SObject>, Database.Stateful {
    global Database.QueryLocator start(Database.BatchableContext BC) {
        String query = 'SELECT Id, Invoice_Status__c FROM Invoice__c WHERE Invoice_Status__c = "Open" AND LastModifiedDate <= :System.now().addDays(-30)';
        return Database.getQueryLocator(query);
    }
 
    global void execute(Database.BatchableContext BC, List<Invoice__c> scope) {
        for (Invoice__c invoice : scope) {
            invoice.Invoice_Status__c = 'Void';
        }
        update scope;
    }
 
    global void finish(Database.BatchableContext BC) {
    }
}