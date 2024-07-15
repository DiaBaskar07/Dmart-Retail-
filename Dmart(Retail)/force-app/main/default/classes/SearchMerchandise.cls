public class SearchMerchandise {
    @auraenabled(cacheable=true)
    public static List<Merchandise__c> getAllMerchandise(String mName){
        String merName = '%' + mName + '%';
        List<Merchandise__c> mer = [select id,Name,Merchandise_Stock__c,Merchandise_Price__c,Merchandise_Desc__c from Merchandise__c where Name like : merName];
        return mer;
    }
        public static List<Merchandise__c> getAllMerchandise(Integer mStock){
        String merStock = '%' + mStock + '%';
        List<Merchandise__c> mer = [select id,Name,Merchandise_Stock__c,Merchandise_Price__c,Merchandise_Desc__c from Merchandise__c where Name like : merStock];
        return mer;
    }
 
 
}