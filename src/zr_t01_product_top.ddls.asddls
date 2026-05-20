@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Top Producut View'
//@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZR_T01_PRODUCT_TOP as select from ZR_T01_OITEM_ANALYTICS
{
    key ProductID,
    ProductName,
    sum(Quantity) as TotalQuantiy,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    sum(ItemTotalPrice) as Revenue,
    CurrencyCode


}
group by
ProductID,
ProductName,
CurrencyCode
