trigger MerchandiseTri on Merchandise__c (before insert,after insert,before update,after update,after undelete,after delete,before delete) {
if(Trigger.isBefore && Trigger.isDelete){
MerCls.insertMerchandise(Trigger.old);
}

}