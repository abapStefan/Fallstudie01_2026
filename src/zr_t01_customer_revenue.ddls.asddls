@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer Revenue'
//@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZR_T01_CUSTOMER_REVENUE
  as select from ZR_T01_ORDER as Orders
{

  key Orders.CustomerId       as CustomerId,
  key Orders.CurrencyCode     as CurrencyCode,

  @Semantics.amount.currencyCode: 'CurrencyCode'
  sum(Orders.TotalAmount) as TotalRevenue
//  ,
//  Orders.OrderDate as OrderDate

}
where Orders.Status = 'P'
group by
  Orders.CustomerId,
  Orders.CurrencyCode
//  ,
//  Orders.OrderDate
