@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Projection View'
//@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_T01_PRODUCT
  provider contract transactional_query
  as projection on ZR_T01_PRODUCT
{
  key ProductId,
      ProductName,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      Price,
      CurrencyCode,
      CreatedBy,
      CreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,

      /* Associations */
      @UI.lineItem: [{ position: 50 }]
      _OrderItem : redirected to ZC_T01_ORDER_ITEM
}
