@RestResource (urlMapping='/GetBullets/*')
global class GetBullets{

@HttpPost
// to get the details of bullets and threats...
 global static List<Bullet_Master__c> getBulletData(){
 
 List<Bullet_Master__c> bm = [select id, name, Shooting_Distance__c,Wastage__c from Bullet_Master__c limit 1000];
 // test egit commit
 return bm;
 
 }

}