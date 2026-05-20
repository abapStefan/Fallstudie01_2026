@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Top Product Projection'
@Metadata.allowExtensions: true
define view entity ZC_T01_PRODUCT_TOP
  as select from ZR_T01_PRODUCT_TOP

  association [0..1] to ZC_T01_PRODUCT as _Product
    on $projection.ProductID = _Product.ProductId
    
      association [0..*] to ZC_T01_ORDER_ITEM as _OrderItem
    on $projection.ProductID = _OrderItem.ProductId

{
  key cast( Revenue * -1 as abap.dec(16,2) ) as SortRevenue, //vorgezogener key zur sortierung (hidden)

  key ProductID,
      ProductName,
      TotalQuantiy,
      
      @Semantics.amount.currencyCode: 'CurrencyCode'
      Revenue,
      
      CurrencyCode,

      _Product,
      _OrderItem
}
