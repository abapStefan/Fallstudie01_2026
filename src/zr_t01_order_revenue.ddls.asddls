@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Order Revenue View'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZR_T01_ORDER_REVENUE as select from ZR_T01_ORDER_ITEM as OrderItem
{
  key OrderItem.OrderId as OrderId,
  @Semantics.amount.currencyCode: 'CurrencyCode'
 // sum (OrderItem.UnitPriceAtOrder) as UnitPrice,
 sum (OrderItem.ItemTotalPrice) as UnitTotalPrice,
  CurrencyCode as CurrencyCode
    
}
group by
    OrderItem.OrderId,
    CurrencyCode
