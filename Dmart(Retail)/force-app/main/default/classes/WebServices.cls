@RestResource(urlMapping='/myMerchandise/*')
global class WebServices {
@httpPost
    global static void insertMerc(List <Merchandise__c> merc){
    	List <Merchandise__c> mc = new List <Merchandise__c>();
        for(Merchandise__c m : merc){
            Merchandise__c merch = new Merchandise__c();
            merch.Name = m.Name;
            merch.Merchandise_Desc__c = m.Merchandise_Desc__c;
            merch.Merchandise_Stock__c = m.Merchandise_Stock__c;  
            merch.Merchandise_Price__c = m.Merchandise_Price__c;
            mc.add(merch);
        }
        insert mc;
}
}