@isTest
private class LaptopBookingHandlerTest {
  @isTest
    static void testSendEmailNotification(){
        Laptop_Bookings__c testBooking = new Laptop_Bookings__c(
            Email__c='suraj.rai.21@aot.edu.in',
            Name='SnapDeal',
            Amount__c=500,
            core_type__c='i7',
            Name__c='Dell'
        );
        insert testBooking;
        Test.startTest();
        LaptopBookingHandler.sendEmailNotification(new List<Laptop_Bookings__c>{testBooking});
        Test.stopTest();
    }
}