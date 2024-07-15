public class ScheduleInvoiceStatusUpdater implements Schedulable {
    public void execute(SchedulableContext SC) {
        InvoiceStatusUpdater batch = new InvoiceStatusUpdater();
        Database.executeBatch(batch); 
    }
 
}