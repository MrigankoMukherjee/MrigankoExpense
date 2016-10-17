@isTest

public class ExpenseTest {                                                   // Test class
    public testMethod static void myTest() {                                // Test method
        Expense__c expense = new Expense__c();                             // Expense Test object
            expense.Amount__c=1000;                                       // Test value for Amount field
            expense.Name='party';                                         // Test value for Name field
            expense.Event_Date__c = system.today();                       //  Test value for Event Date field
            insert expense;                                               // Inserting expence object field value for test run
                                                          
        Member__c member = new Member__c();                               // Expense Member object
            member.Name='abc';                                           // Test value for Name field
            member.Email__c='abc@abc.com';                               // Test value for Email field          
            insert member;                                               // Inserting Member object field value for test run
                                                           
        Expense_Member__c expmem = new Expense_Member__c();              // Expense Member object
            expmem.Member__c=member.Id;                                  // Test value for Member lookup field
            expmem.Expense__c=expense.Id;                                // Test value for Expense lookup field                              
            expmem.Contribution_Amount__c=100;                           // Test value for Contribution Amount field
            insert expmem;                                               // Inserting Expense Member object field value for test run
             
        ExpenseEXT expExt = new ExpenseEXT(new ApexPages.StandardController(expense));        // ExpenseEXT object
            expExt.getExpMembers();                                                           
                                                                       
        
            
        
    }
}