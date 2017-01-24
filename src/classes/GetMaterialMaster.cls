@RestResource (urlmapping='/GetMaterial/*')
global class GetMaterialMaster {
    // Jenkins deployment by Pallavi Sharma - test - 1/24/2017 timestamp should be changed for this class only.
@HttpPost
    global static String getMaterials(){
        List<Material_Master__c> mtest1 = [select name,Select_Material__c, id from Material_Master__c];
    	system.debug('------>>> '+ mtest1);
        String prettyJson;
        if(mtest1.size()>0){
            
            for(Material_Master__c mtest : mtest1){
            
                JSONGenerator gen = JSON.createGenerator(true);
                gen.writeStartObject();
                gen.writeStringField('Name',mtest.name);
                if(String.isNotBlank(mtest.Select_Material__c)){
                gen.writeStringField('Select material',mtest.Select_Material__c);
                }
                gen.writeEndObject();
              prettyJson = gen.GetAsString();
            }  
        }
       
        return prettyJson;
     }

}