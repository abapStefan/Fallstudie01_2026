@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer Revenue Field View'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZR_T01_CUSTOMER_REV_FIELD
  as select from ZR_T01_ORDER as Orders
{

  key Orders.CustomerId,
   Orders.CurrencyCode,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      sum(TotalAmount) as TotalRevenue
  


}
where Orders.Status = 'P'
group by

  Orders.CustomerId,
  Orders.CurrencyCode
  
