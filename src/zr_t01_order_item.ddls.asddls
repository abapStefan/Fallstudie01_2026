@AbapCatalog.viewEnhancementCategory: [#PROJECTION_LIST]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Order Item View'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZR_T01_ORDER_ITEM
  as select from zt01_db_order_it as OrderItems
  association        to parent ZR_T01_ORDER as _Order    on $projection.OrderId = _Order.OrderId
  association [1..1] to ZR_T01_PRODUCT      as _Product  on $projection.ProductId = _Product.ProductId
  association [1..1] to ZR_T01_CUSTOMER     as _Customer on $projection.CustomerId = _Customer.CustomerId

{
  key order_item_id         as OrderItemId,
      order_id              as OrderId,
      product_id            as ProductId,
      quantity              as Quantity,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      unit_price_at_order   as UnitPriceAtOrder,

      @Semantics.amount.currencyCode: 'CurrencyCode'
      cast(
        cast( quantity as abap.dec(16, 2) )
        * cast( unit_price_at_order as abap.dec(16, 2) )
        as abap.dec(16, 2)) as ItemTotalPrice,
      currency_code         as CurrencyCode,
      
      created_by            as CreatedBy,
      created_at            as CreatedAt,
      local_last_changed_by as LocalLastChangedBy,
      local_last_changed_at as LocalLastChangedAt,
      last_changed_at       as LastChangedAt,
      customer_id           as CustomerId,
      _Order,
      _Product,
      _Customer
}
