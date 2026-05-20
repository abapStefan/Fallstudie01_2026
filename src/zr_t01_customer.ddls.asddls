@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZR_T01_CUSTOMER
  as select from zt01_db_customer as Customers
  composition [0..*] of ZR_T01_ORDER              as _Order
  association [0..*] to ZR_T01_CUSTOMER_REVENUE   as _Revenue           on $projection.CustomerId = _Revenue.CustomerId
  association [0..1] to ZR_T01_CUSTOMER_REV_FIELD as _Revenue_rev_field on $projection.CustomerId = _Revenue_rev_field.CustomerId
{
  key customer_id                     as CustomerId,
      first_name                      as FirstName,
      last_name                       as LastName,
      address                         as Address,
      city                            as City,
      zip_code                        as ZipCode,
      country                         as Country,
      telnumber                       as TelNumber,
      email                           as Email,
      note                            as Note,
      status                          as Status,
      @Semantics.amount.currencyCode: 'RevenueCurrencyCode'
      _Revenue_rev_field.TotalRevenue as RevenueField,
      _Revenue_rev_field.CurrencyCode as RevenueCurrencyCode,
      created_by                      as CreatedBy,
      created_at                      as CreatedAt,
      local_last_changed_by           as LocalLastChangedBy,
      local_last_changed_at           as LocalLastChangedAt,
      last_changed_at                 as LastChangedAt,
      _Order,
      _Revenue,
      _Revenue_rev_field
}
