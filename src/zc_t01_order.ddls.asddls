@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Order Projection View'
//@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_T01_ORDER
  //  provider contract transactional_query
  as projection on ZR_T01_ORDER
{

  key OrderId,
      CustomerId,
      OrderDate,
      //      @Semantics.amount.currencyCode: 'CurrencyCode'
      //      TotalAmount,
      CurrencyCode,
      Status,

      @Semantics.amount.currencyCode: 'CurrencyCode'
      _OrderRevenue.UnitTotalPrice as TotalRevenue,

      CreatedBy,
      CreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,

      //für ui felder
      _Customer.FirstName          as CustomerFirstName,
      _Customer.LastName           as CustomerLastName,
      _Customer.Email              as CustomerEmail,
      _Customer.TelNumber          as CustomerTelNumber,
      _Customer.Address            as CustomerAddress,
      _Customer.City               as CustomerCity,
      _Customer.ZipCode            as CustomerZipCode,
      _Customer.Country            as CustomerCountry,

      /* Associations */
      _Customer  : redirected to parent ZC_T01_CUSTOMER,
      _OrderItem : redirected to composition child ZC_T01_ORDER_ITEM
}
