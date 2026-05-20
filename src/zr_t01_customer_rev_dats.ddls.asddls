@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer Revenue Dats View'
//@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZR_T01_CUSTOMER_REV_DATS

  with parameters

    @Consumption.defaultValue: '00010101'
    p_date_from : zt01_e_date_from,
    @Consumption.defaultValue: '99991231'
    p_date_to   : zt01_e_date_to

  as select from ZR_T01_ORDER_ANALYTICS
{
  key customer_id,
      CurrencyCode,
      CustomerName,

      cast(count(distinct order_id) as abap.int4)    as NumberOfOrders,

      @Semantics.amount.currencyCode: 'CurrencyCode'
      cast(sum(total_amount) as zt01_e_total_amount) as Revenue



}
where
  order_date between $parameters.p_date_from and $parameters.p_date_to

group by
  customer_id,
  CustomerName,
  CurrencyCode

