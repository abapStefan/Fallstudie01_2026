@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer Revenue Projection View'
//@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_T01_CUSTOMER_REVENUE
  as select from ZR_T01_CUSTOMER_REVENUE
  //  association [1..1] to ZC_T01_CUSTOMER as _Customer on $projection.CustomerId = _Customer.CustomerId
{

  key CustomerId,
  key CurrencyCode,
  
  
  // OrderDate,

      TotalRevenue
      //      @UI.lineItem: [{ position: 20}]
      //      @UI.identification: [{ position: 20 }]

      //      @UI.lineItem: [{ position: 30 }]
      //      @UI.identification: [{ position: 30 }]
      //      @EndUserText.label: 'First Name'
      //      _Customer.FirstName as FirstName,
      //
      //      @UI.lineItem: [{ position: 40 }]
      //      @UI.identification: [{ position: 40 }]
      //      @EndUserText.label: 'Last Name'
      //      _Customer.LastName  as LastName,
      //
      //            @UI.lineItem: [{ position: 50}]
      //            _Customer
      
      
}
