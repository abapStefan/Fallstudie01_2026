@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Order Views'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZR_T01_ORDER
  as select from zt01_db_order
  association        to parent ZR_T01_CUSTOMER as _Customer     on $projection.CustomerId = _Customer.CustomerId
  composition [0..*] of ZR_T01_ORDER_ITEM      as _OrderItem
  association [1..1] to ZR_T01_ORDER_REVENUE   as _OrderRevenue on $projection.OrderId = _OrderRevenue.OrderId
{
  key order_id                     as OrderId,
      customer_id                  as CustomerId,
      order_date                   as OrderDate,
      // @Semantics.amount.currencyCode: 'CurrencyCode'
      //  total_amount as TotalAmount,
      currency_code                as CurrencyCode,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      _OrderRevenue.UnitTotalPrice as TotalAmount,
      status                       as Status,
      created_by                   as CreatedBy,
      created_at                   as CreatedAt,
      local_last_changed_by        as LocalLastChangedBy,
      local_last_changed_at        as LocalLastChangedAt,
      last_changed_at              as LastChangedAt,

      _Customer,
      _OrderItem,
      _OrderRevenue

}
