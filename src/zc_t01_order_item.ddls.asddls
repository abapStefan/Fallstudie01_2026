@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Order Item Projection View'
//@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_T01_ORDER_ITEM
  //  provider contract transactional_query
  as projection on ZR_T01_ORDER_ITEM
{

    
  key OrderItemId,

      OrderId,
      ProductId,
      Quantity,
      _Product.ProductName,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      UnitPriceAtOrder,
      
      ItemTotalPrice,
      
      CurrencyCode,
      CreatedBy,
      CreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,   
      CustomerId,
      /* Associations */
      _Customer : redirected to ZC_T01_CUSTOMER,
      _Order    : redirected to parent ZC_T01_ORDER,
      _Product  : redirected to ZC_T01_PRODUCT
}
