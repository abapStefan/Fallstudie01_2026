@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Order Item Analytics View'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZR_T01_OITEM_ANALYTICS
  as select from    zt01_db_order_it as OI
      inner join zt01_db_order as O on OI.order_id = O.order_id
  
    left outer join zt01_db_product  as P on OI.product_id = P.product_id
{
  key OI.product_id          as ProductID,
      P.product_name         as ProductName,
      OI.quantity            as Quantity,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      cast(
         cast( OI.quantity as abap.dec(16, 2) )
         * cast( OI.unit_price_at_order as abap.dec(16, 2) )
         as abap.dec(16, 2)) as ItemTotalPrice,
      //cast(oi.unit_price_at_order * OI.quantity as zt01_e_price) as ItemRevenue,
      OI.currency_code       as CurrencyCode,
    O.status

}
where O.status = 'P'
