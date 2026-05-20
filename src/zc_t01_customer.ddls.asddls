@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer Projection View'
//@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_T01_CUSTOMER
  provider contract transactional_query
  as projection on ZR_T01_CUSTOMER
   
{

  key CustomerId,
      FirstName,  
      LastName,
      Address,
      City,
      ZipCode,
      Country,
      TelNumber,
      Email,
      Note,
      Status,
      RevenueField,
      RevenueCurrencyCode,
//      @UI.lineItem: [{ position: 190 }]
//      @UI.identification: [{ position: 190 }]
//      @EndUserText.label: 'Revenue Test'
//      @Semantics.amount.currencyCode: 'CurrencyCode'
//      _Revenue.TotalRevenue,
//
//      @UI.lineItem: [{ position: 100 }]
//      @UI.identification: [{ position: 100 }]
//      _Revenue.CurrencyCode as CurrencyCode,
      CreatedBy,
      CreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,

      /* Associations */
      _Order : redirected to composition child ZC_T01_ORDER,
      _Revenue,
      _Revenue_rev_field
      

}
