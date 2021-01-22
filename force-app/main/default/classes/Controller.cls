public with sharing class Controller {
    @AuraEnabled(cacheable=true)
    public static Product2[] getProductData(){
        try {
            return [SELECT Id,IsActive, CreatedById,CreatedBy.Name , LastModifiedById, Family,
            ProductCode, Description, ProductImage__c, Name, StockKeepingUnit , 
            QuantityUnitOfMeasure
            FROM Product2 ];

            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}