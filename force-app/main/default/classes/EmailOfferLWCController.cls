/**
 *@author        : Gabriel Barbosa de Lima
 *@date          : 10/18/2021 
 *@testClass     : EmailOfferLWCController_Test
 *@description   : Controller Class for EmailOfferLWC
*/
public class EmailOfferLWCController {
    String CLASS_NAME = 'EmailOfferLWCController';
    

    /**
     *@author        : Gabriel Barbosa de Lima
     *@date          : 10/18/2021 
     *@description   : Update User Language
    */
    @AuraEnabled
    public static void updateLanguage(String pLanguageISOCode){
        String METHOD_NAME = 'updateLanguage';
        User user = [SELECT Id, LanguageLocaleKey FROM User WHERE Id =: UserInfo.getUserId()];
        user.LanguageLocaleKey = pLanguageISOCode;
        System.debug(pLanguageISOCode);
        Update user;
    }


    /**
     *@author        : Gabriel Barbosa de Lima
     *@date          : 10/18/2021 
     *@description   : retrieve Labels User Language
    */
    @AuraEnabled
    public static String retrieveLabels(){
        String METHOD_NAME = 'updateLanguage';
        
        String label = System.Label.TestLabel;
        System.debug(label);
        return label;
    }
}