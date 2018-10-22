public class Acc_Con_TabPanel_Example {
    public Account acc {set;get;}
    public Contact con {set;get;}
    public String selected {set;get;}
    
    public Acc_Con_TabPanel_Example(){
        acc=new Account();
        con=new Contact();
        con.AccountId=acc.Id;
    }
    public void Next(){
        selected='two';
    }
    public pageReference Submit(){
        insert acc;
        insert con;
        
        pageReference p = new pageReference('/'+acc.id);
        return p;
    }                                         
}