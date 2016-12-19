public class searchController {

   String searchText;
   List<List<SObject>> results;
   List<Account> accounts;
   List<Lead> leads;
   List<Contact> contacts;

   public String getSearchText() {
      return searchText;
   }

   public void setSearchText(String s) {
      searchText = s;
   }

   public List<List<SObject>> getResults() {
      return results;
   }
   
   public List<Account> getAccounts(){
       return accounts;
   }
   
   public List<Lead> getLeads(){
       return leads;
   }
   
   public List<Contact> getcontacts(){
       return contacts;
   }

   public PageReference doSearch() {
    String queryString =  'FIND\'searchText*\'IN ALL FIELDS RETURNING Account(id,name),Lead,Opportunity,Contact';
    results = search.query(queryString);
    accounts = ((List<Account>)results[0]);
    leads = ((List<Lead>)results[1]);
    contacts = ((List<Contact>)results[3]);
    system.debug('----values are---a)accounts--'+accounts+'---b)--leads'+leads+'---c) contact--'+contacts);

     return null;
   }

}