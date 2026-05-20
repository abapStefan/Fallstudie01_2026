@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Order Analytics View'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZR_T01_ORDER_ANALYTICS
  as select from    zt01_db_order    as O
    left outer join zt01_db_customer as C on O.customer_id = C.customer_id
{
  key O.order_id,
      O.customer_id,

      concat_with_space ( C.first_name, C.last_name, 1) as CustomerName,
      O.order_date,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      O.total_amount,
      O.currency_code                                   as CurrencyCode
}
