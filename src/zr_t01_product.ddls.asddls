@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZR_T01_PRODUCT
  as select from zt01_db_product as Products
  association [0..*] to ZR_T01_ORDER_ITEM as _OrderItem on $projection.ProductId = _OrderItem.ProductId
{
  key product_id            as ProductId,
      product_name          as ProductName,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      price                 as Price,
      currency_code         as CurrencyCode,
      created_by            as CreatedBy,
      created_at            as CreatedAt,
      local_last_changed_by as LocalLastChangedBy,
      local_last_changed_at as LocalLastChangedAt,
      last_changed_at       as LastChangedAt,

      _OrderItem
}
