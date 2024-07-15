public class MerCls {
     public static void insertMer(List<Merchandise__c > mer){
        List<Merchandise_Archive__c> myArchiveList = new List<Merchandise_Archive__c>();
 
        for(Merchandise__c m : mer){
                  Merchandise_Archive__c ma = new Merchandise_Archive__c();
                  ma.Name = m.name;
        		  ma.Merchandise_Archive_Price__c = m.Merchandise_Price__c;
            	  ma.Merchandise_Archive_Stock__c = m.Merchandise_Stock__c;
            	  ma.Merchandise_Archive_Description__c = m.Merchandise_Desc__c;
            	  myArchiveList.add(ma);
        }
        insert(myArchiveList);
    }
}