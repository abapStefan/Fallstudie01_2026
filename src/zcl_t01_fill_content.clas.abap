CLASS zcl_t01_fill_content DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_T01_FILL_CONTENT IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*
*    DELETE FROM zt01_db_order_it.
*    out->write( |Order Items deleted: { sy-dbcnt } rows| ).
*
*    DELETE FROM zt01_db_order.
*    out->write( |Orders deleted: { sy-dbcnt } rows| ).
*
*    DELETE FROM zt01_db_product.
*    out->write( |Products deleted: { sy-dbcnt } rows| ).
*
*    DELETE FROM zt01_db_customer.
*    out->write( |Customers deleted: { sy-dbcnt } rows| ).
*
*    out->write( '------------------------------------------------------------------------' ).
*
*
*" ─────────────────────────────────────────
*" FILL CUSTOMERS
*" ─────────────────────────────────────────
*
*    INSERT zt01_db_customer FROM TABLE @(
*      VALUE #(
*        ( client = sy-mandt customer_id = '1'  first_name = 'John'  last_name = 'Smith'
*         address = 'Invalidenstraße 12' city = 'Berlin'     zip_code = '10115' country = 'DE'
*          telnumber = '+49 30 5550101'  email = 'john.smith@example.com'    note = 'Key account'        status = 'S' )
*        ( client = sy-mandt customer_id = '2'  first_name = 'Jane'  last_name = 'Doe'
*          address = 'Mönckebergstraße 7' city = 'Hamburg'    zip_code = '20095' country = 'DE'
*           telnumber = '+49 40 5550102'  email = 'jane.doe@example.com'      note = 'No orders yet'     status = 'N' )
*        ( client = sy-mandt customer_id = '3'  first_name = 'Anna'  last_name = 'Mueller'
*         address = 'Marienplatz 1'      city = 'Munich'     zip_code = '80331' country = 'DE'
*          telnumber = '+49 89 5550103'  email = 'anna.mueller@example.com'  note = 'Prefers email'     status = 'S' )
*        ( client = sy-mandt customer_id = '4'  first_name = 'Peter' last_name = 'Weber'
*         address = 'Schildergasse 15'   city = 'Cologne'    zip_code = '50667' country = 'DE'
*          telnumber = '+49 221 5550104' email = 'peter.weber@example.com'   note = 'Open invoices'    status = 'S' )
*        ( client = sy-mandt customer_id = '5'  first_name = 'Laura' last_name = 'Fischer'
*         address = 'Zeil 42'            city = 'Frankfurt'  zip_code = '60313' country = 'DE'
*          telnumber = '+49 69 5550105'  email = 'laura.fischer@example.com' note = 'Regular buyer'    status = 'S' )
*        ( client = sy-mandt customer_id = '6'  first_name = 'Max'   last_name = 'Schulz'
*         address = 'Königstraße 20'     city = 'Stuttgart'  zip_code = '70173' country = 'DE'
*          telnumber = '+49 711 5550106' email = 'max.schulz@example.com'    note = 'New customer'     status = 'N' )
*        ( client = sy-mandt customer_id = '7'  first_name = 'Mia'   last_name = 'Hoffmann'
*         address = 'Marktplatz 3'       city = 'Düsseldorf' zip_code = '40213' country = 'DE'
*          telnumber = '+49 211 5550107' email = 'mia.hoffmann@example.com'  note = 'High revenue'     status = 'S' )
*        ( client = sy-mandt customer_id = '8'  first_name = 'Noah'  last_name = 'Becker'
*         address = 'Grimmaische Str. 9' city = 'Leipzig'    zip_code = '04109' country = 'DE'
*          telnumber = '+49 341 5550108' email = 'noah.becker@example.com'   note = 'Discount requested' status = 'S' )
*        ( client = sy-mandt customer_id = '9'  first_name = 'Emma'  last_name = 'Wagner'
*         address = 'Altmarkt 8'         city = 'Dresden'    zip_code = '01067' country = 'DE'
*          telnumber = '+49 351 5550109' email = 'emma.wagner@example.com'   note = 'Fast payment'     status = 'N' )
*        ( client = sy-mandt customer_id = '10' first_name = 'Liam'  last_name = 'Koch'
*         address = 'Breite Gasse 11'    city = 'Nuremberg'  zip_code = '90402' country = 'DE'
*          telnumber = '+49 911 5550110' email = 'liam.koch@example.com'     note = 'Single order'     status = 'N' )
*      )
*    ).
*
*
*    out->write( |Customers inserted: { sy-dbcnt } rows | ).
*
*
*" ─────────────────────────────────────────
*" FILL PRODUCTS
*" ─────────────────────────────────────────
*
*    INSERT zt01_db_product FROM TABLE @(
*      VALUE #(
*        ( client = sy-mandt product_id = '1'  product_name = 'Laptop Pro 15'           price = '999.99' currency_code = 'EUR' )
*        ( client = sy-mandt product_id = '2'  product_name = 'Wireless Mouse'          price = '29.99'  currency_code = 'EUR' )
*        ( client = sy-mandt product_id = '3'  product_name = 'USB-C Hub'               price = '49.99'  currency_code = 'EUR' )
*        ( client = sy-mandt product_id = '4'  product_name = 'Mechanical Keyboard'     price = '89.99'  currency_code = 'EUR' )
*        ( client = sy-mandt product_id = '5'  product_name = '27 Inch Monitor'         price = '249.99' currency_code = 'EUR' )
*        ( client = sy-mandt product_id = '6'  product_name = 'Docking Station'         price = '179.99' currency_code = 'EUR' )
*        ( client = sy-mandt product_id = '7'  product_name = 'Noise Cancelling Headset' price = '149.99' currency_code = 'EUR' )
*        ( client = sy-mandt product_id = '8'  product_name = 'Webcam HD'               price = '79.99'  currency_code = 'EUR' )
*        ( client = sy-mandt product_id = '9'  product_name = 'Office Chair'            price = '329.99' currency_code = 'EUR' )
*        ( client = sy-mandt product_id = '10' product_name = 'Standing Desk'           price = '499.99' currency_code = 'EUR' )
*        ( client = sy-mandt product_id = '11' product_name = 'Tablet 11'               price = '599.99' currency_code = 'EUR' )
*        ( client = sy-mandt product_id = '12' product_name = 'External SSD 1TB'        price = '119.99' currency_code = 'EUR' )
*      )
*    ).
*
*    out->write( |Products inserted: { sy-dbcnt } rows | ).
*
*" ─────────────────────────────────────────
*" FILL ORDERS
*" ─────────────────────────────────────────
*
*    INSERT zt01_db_order FROM TABLE @(
*      VALUE #(
*        ( client = sy-mandt order_id = '1'  customer_id = '1'  order_date = '20240501' total_amount = '1029.98' currency_code = 'EUR' status = 'P' )
*        ( client = sy-mandt order_id = '2'  customer_id = '1'  order_date = '20240512' total_amount = '299.98'  currency_code = 'EUR' status = 'O' )
*        ( client = sy-mandt order_id = '3'  customer_id = '1'  order_date = '20240603' total_amount = '179.99'  currency_code = 'EUR' status = 'P' )
*        ( client = sy-mandt order_id = '4'  customer_id = '1'  order_date = '20240618' total_amount = '149.99'  currency_code = 'EUR' status = 'O' )
*
*        ( client = sy-mandt order_id = '5'  customer_id = '3'  order_date = '20240505' total_amount = '189.97'  currency_code = 'EUR' status = 'P' )
*        ( client = sy-mandt order_id = '6'  customer_id = '3'  order_date = '20240522' total_amount = '249.99'  currency_code = 'EUR' status = 'P' )
*        ( client = sy-mandt order_id = '7'  customer_id = '3'  order_date = '20240608' total_amount = '79.99'   currency_code = 'EUR' status = 'O' )
*
*        ( client = sy-mandt order_id = '8'  customer_id = '4'  order_date = '20240511' total_amount = '329.99'  currency_code = 'EUR' status = 'O' )
*        ( client = sy-mandt order_id = '9'  customer_id = '4'  order_date = '20240601' total_amount = '499.99'  currency_code = 'EUR' status = 'P' )
*
*        ( client = sy-mandt order_id = '10' customer_id = '5'  order_date = '20240503' total_amount = '599.99'  currency_code = 'EUR' status = 'P' )
*        ( client = sy-mandt order_id = '11' customer_id = '5'  order_date = '20240509' total_amount = '119.99'  currency_code = 'EUR' status = 'P' )
*        ( client = sy-mandt order_id = '12' customer_id = '5'  order_date = '20240519' total_amount = '359.98'  currency_code = 'EUR' status = 'O' )
*        ( client = sy-mandt order_id = '13' customer_id = '5'  order_date = '20240604' total_amount = '89.99'   currency_code = 'EUR' status = 'P' )
*        ( client = sy-mandt order_id = '14' customer_id = '5'  order_date = '20240621' total_amount = '249.99'  currency_code = 'EUR' status = 'O' )
*
*        ( client = sy-mandt order_id = '15' customer_id = '6'  order_date = '20240514' total_amount = '49.99'   currency_code = 'EUR' status = 'O' )
*
*        ( client = sy-mandt order_id = '16' customer_id = '7'  order_date = '20240502' total_amount = '1999.98' currency_code = 'EUR' status = 'P' )
*        ( client = sy-mandt order_id = '17' customer_id = '7'  order_date = '20240510' total_amount = '499.99'  currency_code = 'EUR' status = 'P' )
*        ( client = sy-mandt order_id = '18' customer_id = '7'  order_date = '20240527' total_amount = '379.97'  currency_code = 'EUR' status = 'O' )
*        ( client = sy-mandt order_id = '19' customer_id = '7'  order_date = '20240606' total_amount = '239.98'  currency_code = 'EUR' status = 'P' )
*        ( client = sy-mandt order_id = '20' customer_id = '7'  order_date = '20240616' total_amount = '689.97'  currency_code = 'EUR' status = 'P' )
*        ( client = sy-mandt order_id = '21' customer_id = '7'  order_date = '20240625' total_amount = '179.99'  currency_code = 'EUR' status = 'O' )
*
*        ( client = sy-mandt order_id = '22' customer_id = '8'  order_date = '20240517' total_amount = '149.99'  currency_code = 'EUR' status = 'P' )
*        ( client = sy-mandt order_id = '23' customer_id = '8'  order_date = '20240612' total_amount = '59.98'   currency_code = 'EUR' status = 'O' )
*
*        ( client = sy-mandt order_id = '24' customer_id = '9'  order_date = '20240528' total_amount = '119.99'  currency_code = 'EUR' status = 'P' )
*        ( client = sy-mandt order_id = '25' customer_id = '10' order_date = '20240630' total_amount = '999.99'  currency_code = 'EUR' status = 'O' )
*      )
*    ).
*
*    out->write( |Orders inserted: : { sy-dbcnt } rows| ).
*
*
*" ─────────────────────────────────────────
*" FILL ORDER ITEMS: 30 Positionen
*" ─────────────────────────────────────────
*
*    INSERT zt01_db_order_it FROM TABLE @(
*      VALUE #(
*        ( client = sy-mandt order_item_id = '1'  order_id = '1'  product_id = '1'  quantity = 1 unit_price_at_order = '999.99' currency_code = 'EUR' customer_id = '1' )
*        ( client = sy-mandt order_item_id = '2'  order_id = '1'  product_id = '2'  quantity = 1 unit_price_at_order = '29.99'  currency_code = 'EUR' customer_id = '1' )
*        ( client = sy-mandt order_item_id = '3'  order_id = '2'  product_id = '5'  quantity = 1 unit_price_at_order = '249.99' currency_code = 'EUR' customer_id = '1' )
*        ( client = sy-mandt order_item_id = '4'  order_id = '2'  product_id = '3'  quantity = 1 unit_price_at_order = '49.99'  currency_code = 'EUR' customer_id = '1' )
*        ( client = sy-mandt order_item_id = '5'  order_id = '3'  product_id = '6'  quantity = 1 unit_price_at_order = '179.99' currency_code = 'EUR' customer_id = '1' )
*        ( client = sy-mandt order_item_id = '6'  order_id = '4'  product_id = '7'  quantity = 1 unit_price_at_order = '149.99' currency_code = 'EUR' customer_id = '1' )
*
*        ( client = sy-mandt order_item_id = '7'  order_id = '5'  product_id = '3'  quantity = 2 unit_price_at_order = '49.99'  currency_code = 'EUR' customer_id = '3' )
*        ( client = sy-mandt order_item_id = '8'  order_id = '5'  product_id = '4'  quantity = 1 unit_price_at_order = '89.99'  currency_code = 'EUR' customer_id = '3' )
*        ( client = sy-mandt order_item_id = '9'  order_id = '6'  product_id = '5'  quantity = 1 unit_price_at_order = '249.99' currency_code = 'EUR' customer_id = '3' )
*        ( client = sy-mandt order_item_id = '10' order_id = '7'  product_id = '8'  quantity = 1 unit_price_at_order = '79.99'  currency_code = 'EUR' customer_id = '3' )
*
*        ( client = sy-mandt order_item_id = '11' order_id = '8'  product_id = '9'  quantity = 1 unit_price_at_order = '329.99' currency_code = 'EUR' customer_id = '4' )
*        ( client = sy-mandt order_item_id = '12' order_id = '9'  product_id = '10' quantity = 1 unit_price_at_order = '499.99' currency_code = 'EUR' customer_id = '4' )
*
*        ( client = sy-mandt order_item_id = '13' order_id = '10' product_id = '11' quantity = 1 unit_price_at_order = '599.99' currency_code = 'EUR' customer_id = '5' )
*        ( client = sy-mandt order_item_id = '14' order_id = '11' product_id = '12' quantity = 1 unit_price_at_order = '119.99' currency_code = 'EUR' customer_id = '5' )
*        ( client = sy-mandt order_item_id = '15' order_id = '12' product_id = '6'  quantity = 2 unit_price_at_order = '179.99' currency_code = 'EUR' customer_id = '5' )
*        ( client = sy-mandt order_item_id = '16' order_id = '13' product_id = '4'  quantity = 1 unit_price_at_order = '89.99'  currency_code = 'EUR' customer_id = '5' )
*        ( client = sy-mandt order_item_id = '17' order_id = '14' product_id = '5'  quantity = 1 unit_price_at_order = '249.99' currency_code = 'EUR' customer_id = '5' )
*
*        ( client = sy-mandt order_item_id = '18' order_id = '15' product_id = '3'  quantity = 1 unit_price_at_order = '49.99'  currency_code = 'EUR' customer_id = '6' )
*
*        ( client = sy-mandt order_item_id = '19' order_id = '16' product_id = '1'  quantity = 2 unit_price_at_order = '999.99' currency_code = 'EUR' customer_id = '7' )
*        ( client = sy-mandt order_item_id = '20' order_id = '17' product_id = '10' quantity = 1 unit_price_at_order = '499.99' currency_code = 'EUR' customer_id = '7' )
*        ( client = sy-mandt order_item_id = '21' order_id = '18' product_id = '7'  quantity = 2 unit_price_at_order = '149.99' currency_code = 'EUR' customer_id = '7' )
*        ( client = sy-mandt order_item_id = '22' order_id = '19' product_id = '12' quantity = 2 unit_price_at_order = '119.99' currency_code = 'EUR' customer_id = '7' )
*        ( client = sy-mandt order_item_id = '23' order_id = '20' product_id = '9'  quantity = 2 unit_price_at_order = '329.99' currency_code = 'EUR' customer_id = '7' )
*        ( client = sy-mandt order_item_id = '24' order_id = '21' product_id = '6'  quantity = 1 unit_price_at_order = '179.99' currency_code = 'EUR' customer_id = '7' )
*
*        ( client = sy-mandt order_item_id = '25' order_id = '22' product_id = '7'  quantity = 1 unit_price_at_order = '149.99' currency_code = 'EUR' customer_id = '8' )
*        ( client = sy-mandt order_item_id = '26' order_id = '23' product_id = '2'  quantity = 2 unit_price_at_order = '29.99'  currency_code = 'EUR' customer_id = '8' )
*
*        ( client = sy-mandt order_item_id = '27' order_id = '24' product_id = '12' quantity = 1 unit_price_at_order = '119.99' currency_code = 'EUR' customer_id = '9' )
*
*        ( client = sy-mandt order_item_id = '28' order_id = '25' product_id = '1'  quantity = 1 unit_price_at_order = '999.99' currency_code = 'EUR' customer_id = '10' )
*
*        ( client = sy-mandt order_item_id = '29' order_id = '20' product_id = '2'  quantity = 1 unit_price_at_order = '29.99'  currency_code = 'EUR' customer_id = '7' )
*        ( client = sy-mandt order_item_id = '30' order_id = '18' product_id = '8'  quantity = 1 unit_price_at_order = '79.99'  currency_code = 'EUR' customer_id = '7' )
*      )
*    ).
*
*
*    out->write( |Order items inserted: : { sy-dbcnt } rows| ).
*
*    out->write( '------------------------------------------------------------------------' ).
*
*    SELECT * FROM zt01_db_customer INTO TABLE @DATA(lt_customers).
*    out->write( lt_customers ).
*
*    SELECT * FROM zt01_db_product INTO TABLE @DATA(lt_products).
*    out->write( lt_products ).
*
*    SELECT * FROM zt01_db_order INTO TABLE @DATA(lt_orders).
*    out->write( lt_orders ).
*
*    SELECT * FROM zt01_db_order_it INTO TABLE @DATA(lt_items).
*    out->write( lt_items ).

    DATA lt_customers   TYPE STANDARD TABLE OF zt01_db_customer.
    DATA lt_products    TYPE STANDARD TABLE OF zt01_db_product.
    DATA lt_orders      TYPE STANDARD TABLE OF zt01_db_order.
    DATA lt_order_items TYPE STANDARD TABLE OF zt01_db_order_it.

    " ─────────────────────────────────────────
    " PREPARE CUSTOMERS
    " ─────────────────────────────────────────

    lt_customers = VALUE #(
      ( client = sy-mandt customer_id = '1'  first_name = 'John'  last_name = 'Smith'
        address = 'Invalidenstraße 12' city = 'Berlin' zip_code = '10115' country = 'DE'
        telnumber = '+49 30 5550101' email = 'john.smith@example.com' note = 'Key account' status = 'S' )

      ( client = sy-mandt customer_id = '2'  first_name = 'Jane'  last_name = 'Doe'
        address = 'Mönckebergstraße 7' city = 'Hamburg' zip_code = '20095' country = 'DE'
        telnumber = '+49 40 5550102' email = 'jane.doe@example.com' note = 'No orders yet' status = 'N' )

      ( client = sy-mandt customer_id = '3'  first_name = 'Anna'  last_name = 'Mueller'
        address = 'Marienplatz 1' city = 'Munich' zip_code = '80331' country = 'DE'
        telnumber = '+49 89 5550103' email = 'anna.mueller@example.com' note = 'Prefers email' status = 'S' )

      ( client = sy-mandt customer_id = '4'  first_name = 'Peter' last_name = 'Weber'
        address = 'Schildergasse 15' city = 'Cologne' zip_code = '50667' country = 'DE'
        telnumber = '+49 221 5550104' email = 'peter.weber@example.com' note = 'Open invoices' status = 'S' )

      ( client = sy-mandt customer_id = '5'  first_name = 'Laura' last_name = 'Fischer'
        address = 'Zeil 42' city = 'Frankfurt' zip_code = '60313' country = 'DE'
        telnumber = '+49 69 5550105' email = 'laura.fischer@example.com' note = 'Regular buyer' status = 'S' )

      ( client = sy-mandt customer_id = '6'  first_name = 'Max' last_name = 'Schulz'
        address = 'Königstraße 20' city = 'Stuttgart' zip_code = '70173' country = 'DE'
        telnumber = '+49 711 5550106' email = 'max.schulz@example.com' note = 'New customer' status = 'N' )

      ( client = sy-mandt customer_id = '7'  first_name = 'Mia' last_name = 'Hoffmann'
        address = 'Marktplatz 3' city = 'Düsseldorf' zip_code = '40213' country = 'DE'
        telnumber = '+49 211 5550107' email = 'mia.hoffmann@example.com' note = 'High revenue' status = 'S' )

      ( client = sy-mandt customer_id = '8'  first_name = 'Noah' last_name = 'Becker'
        address = 'Grimmaische Str. 9' city = 'Leipzig' zip_code = '04109' country = 'DE'
        telnumber = '+49 341 5550108' email = 'noah.becker@example.com' note = 'Discount requested' status = 'S' )

      ( client = sy-mandt customer_id = '9'  first_name = 'Emma' last_name = 'Wagner'
        address = 'Altmarkt 8' city = 'Dresden' zip_code = '01067' country = 'DE'
        telnumber = '+49 351 5550109' email = 'emma.wagner@example.com' note = 'Fast payment' status = 'N' )

      ( client = sy-mandt customer_id = '10' first_name = 'Liam' last_name = 'Koch'
        address = 'Breite Gasse 11' city = 'Nuremberg' zip_code = '90402' country = 'DE'
        telnumber = '+49 911 5550110' email = 'liam.koch@example.com' note = 'Single order' status = 'N' )
    ).

    " ─────────────────────────────────────────
    " PREPARE PRODUCTS
    " ─────────────────────────────────────────

    lt_products = VALUE #(
      ( client = sy-mandt product_id = '1'  product_name = 'Laptop Pro 15'            price = '999.99' currency_code = 'EUR' )
      ( client = sy-mandt product_id = '2'  product_name = 'Wireless Mouse'           price = '29.99'  currency_code = 'EUR' )
      ( client = sy-mandt product_id = '3'  product_name = 'USB-C Hub'                price = '49.99'  currency_code = 'EUR' )
      ( client = sy-mandt product_id = '4'  product_name = 'Mechanical Keyboard'      price = '89.99'  currency_code = 'EUR' )
      ( client = sy-mandt product_id = '5'  product_name = '27 Inch Monitor'          price = '249.99' currency_code = 'EUR' )
      ( client = sy-mandt product_id = '6'  product_name = 'Docking Station'          price = '179.99' currency_code = 'EUR' )
      ( client = sy-mandt product_id = '7'  product_name = 'Noise Cancelling Headset' price = '149.99' currency_code = 'EUR' )
      ( client = sy-mandt product_id = '8'  product_name = 'Webcam HD'                price = '79.99'  currency_code = 'EUR' )
      ( client = sy-mandt product_id = '9'  product_name = 'Office Chair'             price = '329.99' currency_code = 'EUR' )
      ( client = sy-mandt product_id = '10' product_name = 'Standing Desk'            price = '499.99' currency_code = 'EUR' )
      ( client = sy-mandt product_id = '11' product_name = 'Tablet 11'                price = '599.99' currency_code = 'EUR' )
      ( client = sy-mandt product_id = '12' product_name = 'External SSD 1TB'         price = '119.99' currency_code = 'EUR' )
    ).

    " ─────────────────────────────────────────
    " PREPARE ORDERS
    " ─────────────────────────────────────────

    lt_orders = VALUE #(
      ( client = sy-mandt order_id = '1'  customer_id = '1'  order_date = '20260105' total_amount = '1029.98' currency_code = 'EUR' status = 'P' )
      ( client = sy-mandt order_id = '2'  customer_id = '1'  order_date = '20260118' total_amount = '299.98'  currency_code = 'EUR' status = 'O' )
      ( client = sy-mandt order_id = '3'  customer_id = '1'  order_date = '20260203' total_amount = '179.99'  currency_code = 'EUR' status = 'P' )
      ( client = sy-mandt order_id = '4'  customer_id = '1'  order_date = '20260220' total_amount = '149.99'  currency_code = 'EUR' status = 'O' )

      ( client = sy-mandt order_id = '5'  customer_id = '3'  order_date = '20260109' total_amount = '189.97'  currency_code = 'EUR' status = 'P' )
      ( client = sy-mandt order_id = '6'  customer_id = '3'  order_date = '20260214' total_amount = '249.99'  currency_code = 'EUR' status = 'P' )
      ( client = sy-mandt order_id = '7'  customer_id = '3'  order_date = '20260302' total_amount = '79.99'   currency_code = 'EUR' status = 'O' )

      ( client = sy-mandt order_id = '8'  customer_id = '4'  order_date = '20260122' total_amount = '329.99'  currency_code = 'EUR' status = 'O' )
      ( client = sy-mandt order_id = '9'  customer_id = '4'  order_date = '20260311' total_amount = '499.99'  currency_code = 'EUR' status = 'P' )

      ( client = sy-mandt order_id = '10' customer_id = '5'  order_date = '20260112' total_amount = '599.99'  currency_code = 'EUR' status = 'P' )
      ( client = sy-mandt order_id = '11' customer_id = '5'  order_date = '20260201' total_amount = '119.99'  currency_code = 'EUR' status = 'P' )
      ( client = sy-mandt order_id = '12' customer_id = '5'  order_date = '20260228' total_amount = '359.98'  currency_code = 'EUR' status = 'O' )
      ( client = sy-mandt order_id = '13' customer_id = '5'  order_date = '20260407' total_amount = '89.99'   currency_code = 'EUR' status = 'P' )
      ( client = sy-mandt order_id = '14' customer_id = '5'  order_date = '20260509' total_amount = '249.99'  currency_code = 'EUR' status = 'O' )

      ( client = sy-mandt order_id = '15' customer_id = '6'  order_date = '20260318' total_amount = '49.99'   currency_code = 'EUR' status = 'O' )

      ( client = sy-mandt order_id = '16' customer_id = '7'  order_date = '20260115' total_amount = '1999.98' currency_code = 'EUR' status = 'P' )
      ( client = sy-mandt order_id = '17' customer_id = '7'  order_date = '20260210' total_amount = '499.99'  currency_code = 'EUR' status = 'P' )
      ( client = sy-mandt order_id = '18' customer_id = '7'  order_date = '20260305' total_amount = '379.97'  currency_code = 'EUR' status = 'O' )
      ( client = sy-mandt order_id = '19' customer_id = '7'  order_date = '20260326' total_amount = '239.98'  currency_code = 'EUR' status = 'P' )
      ( client = sy-mandt order_id = '20' customer_id = '7'  order_date = '20260418' total_amount = '689.97'  currency_code = 'EUR' status = 'P' )
      ( client = sy-mandt order_id = '21' customer_id = '7'  order_date = '20260513' total_amount = '179.99'  currency_code = 'EUR' status = 'O' )

      ( client = sy-mandt order_id = '22' customer_id = '8'  order_date = '20260217' total_amount = '149.99'  currency_code = 'EUR' status = 'P' )
      ( client = sy-mandt order_id = '23' customer_id = '8'  order_date = '20260402' total_amount = '59.98'   currency_code = 'EUR' status = 'O' )

      ( client = sy-mandt order_id = '24' customer_id = '9'  order_date = '20260330' total_amount = '119.99'  currency_code = 'EUR' status = 'P' )
      ( client = sy-mandt order_id = '25' customer_id = '10' order_date = '20260514' total_amount = '999.99'  currency_code = 'EUR' status = 'O' )
    ).

    " ─────────────────────────────────────────
    " PREPARE ORDER ITEMS
    " ─────────────────────────────────────────

    lt_order_items = VALUE #(
      ( client = sy-mandt order_item_id = '1'  order_id = '1'  product_id = '1'  quantity = 1 unit_price_at_order = '999.99' currency_code = 'EUR' customer_id = '1' )
      ( client = sy-mandt order_item_id = '2'  order_id = '1'  product_id = '2'  quantity = 1 unit_price_at_order = '29.99'  currency_code = 'EUR' customer_id = '1' )
      ( client = sy-mandt order_item_id = '3'  order_id = '2'  product_id = '5'  quantity = 1 unit_price_at_order = '249.99' currency_code = 'EUR' customer_id = '1' )
      ( client = sy-mandt order_item_id = '4'  order_id = '2'  product_id = '3'  quantity = 1 unit_price_at_order = '49.99'  currency_code = 'EUR' customer_id = '1' )
      ( client = sy-mandt order_item_id = '5'  order_id = '3'  product_id = '6'  quantity = 1 unit_price_at_order = '179.99' currency_code = 'EUR' customer_id = '1' )
      ( client = sy-mandt order_item_id = '6'  order_id = '4'  product_id = '7'  quantity = 1 unit_price_at_order = '149.99' currency_code = 'EUR' customer_id = '1' )

      ( client = sy-mandt order_item_id = '7'  order_id = '5'  product_id = '3'  quantity = 2 unit_price_at_order = '49.99'  currency_code = 'EUR' customer_id = '3' )
      ( client = sy-mandt order_item_id = '8'  order_id = '5'  product_id = '4'  quantity = 1 unit_price_at_order = '89.99'  currency_code = 'EUR' customer_id = '3' )
      ( client = sy-mandt order_item_id = '9'  order_id = '6'  product_id = '5'  quantity = 1 unit_price_at_order = '249.99' currency_code = 'EUR' customer_id = '3' )
      ( client = sy-mandt order_item_id = '10' order_id = '7'  product_id = '8'  quantity = 1 unit_price_at_order = '79.99'  currency_code = 'EUR' customer_id = '3' )

      ( client = sy-mandt order_item_id = '11' order_id = '8'  product_id = '9'  quantity = 1 unit_price_at_order = '329.99' currency_code = 'EUR' customer_id = '4' )
      ( client = sy-mandt order_item_id = '12' order_id = '9'  product_id = '10' quantity = 1 unit_price_at_order = '499.99' currency_code = 'EUR' customer_id = '4' )

      ( client = sy-mandt order_item_id = '13' order_id = '10' product_id = '11' quantity = 1 unit_price_at_order = '599.99' currency_code = 'EUR' customer_id = '5' )
      ( client = sy-mandt order_item_id = '14' order_id = '11' product_id = '12' quantity = 1 unit_price_at_order = '119.99' currency_code = 'EUR' customer_id = '5' )
      ( client = sy-mandt order_item_id = '15' order_id = '12' product_id = '6'  quantity = 2 unit_price_at_order = '179.99' currency_code = 'EUR' customer_id = '5' )
      ( client = sy-mandt order_item_id = '16' order_id = '13' product_id = '4'  quantity = 1 unit_price_at_order = '89.99'  currency_code = 'EUR' customer_id = '5' )
      ( client = sy-mandt order_item_id = '17' order_id = '14' product_id = '5'  quantity = 1 unit_price_at_order = '249.99' currency_code = 'EUR' customer_id = '5' )

      ( client = sy-mandt order_item_id = '18' order_id = '15' product_id = '3'  quantity = 1 unit_price_at_order = '49.99'  currency_code = 'EUR' customer_id = '6' )

      ( client = sy-mandt order_item_id = '19' order_id = '16' product_id = '1'  quantity = 2 unit_price_at_order = '999.99' currency_code = 'EUR' customer_id = '7' )
      ( client = sy-mandt order_item_id = '20' order_id = '17' product_id = '10' quantity = 1 unit_price_at_order = '499.99' currency_code = 'EUR' customer_id = '7' )
      ( client = sy-mandt order_item_id = '21' order_id = '18' product_id = '7'  quantity = 2 unit_price_at_order = '149.99' currency_code = 'EUR' customer_id = '7' )
      ( client = sy-mandt order_item_id = '22' order_id = '19' product_id = '12' quantity = 2 unit_price_at_order = '119.99' currency_code = 'EUR' customer_id = '7' )
      ( client = sy-mandt order_item_id = '23' order_id = '20' product_id = '9'  quantity = 2 unit_price_at_order = '329.99' currency_code = 'EUR' customer_id = '7' )
      ( client = sy-mandt order_item_id = '24' order_id = '21' product_id = '6'  quantity = 1 unit_price_at_order = '179.99' currency_code = 'EUR' customer_id = '7' )

      ( client = sy-mandt order_item_id = '25' order_id = '22' product_id = '7'  quantity = 1 unit_price_at_order = '149.99' currency_code = 'EUR' customer_id = '8' )
      ( client = sy-mandt order_item_id = '26' order_id = '23' product_id = '2'  quantity = 2 unit_price_at_order = '29.99'  currency_code = 'EUR' customer_id = '8' )

      ( client = sy-mandt order_item_id = '27' order_id = '24' product_id = '12' quantity = 1 unit_price_at_order = '119.99' currency_code = 'EUR' customer_id = '9' )

      ( client = sy-mandt order_item_id = '28' order_id = '25' product_id = '1'  quantity = 1 unit_price_at_order = '999.99' currency_code = 'EUR' customer_id = '10' )

      ( client = sy-mandt order_item_id = '29' order_id = '20' product_id = '2'  quantity = 1 unit_price_at_order = '29.99'  currency_code = 'EUR' customer_id = '7' )
      ( client = sy-mandt order_item_id = '30' order_id = '18' product_id = '8'  quantity = 1 unit_price_at_order = '79.99'  currency_code = 'EUR' customer_id = '7' )
    ).

    " ─────────────────────────────────────────
    " VALIDATIONS BEFORE INSERT
    " ─────────────────────────────────────────

    LOOP AT lt_products ASSIGNING FIELD-SYMBOL(<ls_product>).
      IF <ls_product>-price < 0.
        out->write( |ERROR: Product { <ls_product>-product_id } has invalid price { <ls_product>-price }. Insert stopped.| ).
        RETURN.
      ENDIF.
    ENDLOOP.

    LOOP AT lt_orders ASSIGNING FIELD-SYMBOL(<ls_order>).
      IF <ls_order>-total_amount < 0.
        out->write( |ERROR: Order { <ls_order>-order_id } has invalid total amount { <ls_order>-total_amount }. Insert stopped.| ).
        RETURN.
      ENDIF.

      IF <ls_order>-status <> 'O' AND <ls_order>-status <> 'P'.
        out->write( |ERROR: Order { <ls_order>-order_id } has invalid status { <ls_order>-status }. Insert stopped.| ).
        RETURN.
      ENDIF.

      READ TABLE lt_customers WITH KEY customer_id = <ls_order>-customer_id TRANSPORTING NO FIELDS.
      IF sy-subrc <> 0.
        out->write( |ERROR: Order { <ls_order>-order_id } references unknown customer { <ls_order>-customer_id }. Insert stopped.| ).
        RETURN.
      ENDIF.
    ENDLOOP.

    LOOP AT lt_order_items ASSIGNING FIELD-SYMBOL(<ls_item>).
      IF <ls_item>-quantity < 0.
        out->write( |ERROR: Order item { <ls_item>-order_item_id } has invalid quantity { <ls_item>-quantity }. Insert stopped.| ).
        RETURN.
      ENDIF.

      IF <ls_item>-unit_price_at_order < 0.
        out->write( |ERROR: Order item { <ls_item>-order_item_id } has invalid unit price { <ls_item>-unit_price_at_order }. Insert stopped.| ).
        RETURN.
      ENDIF.

      READ TABLE lt_orders WITH KEY order_id = <ls_item>-order_id ASSIGNING FIELD-SYMBOL(<ls_order_for_item>).
      IF sy-subrc <> 0.
        out->write( |ERROR: Order item { <ls_item>-order_item_id } references unknown order { <ls_item>-order_id }. Insert stopped.| ).
        RETURN.
      ENDIF.

      IF <ls_order_for_item>-customer_id <> <ls_item>-customer_id.
        out->write( |ERROR: Order item { <ls_item>-order_item_id } customer { <ls_item>-customer_id } does not match order customer { <ls_order_for_item>-customer_id }. Insert stopped.| ).
        RETURN.
      ENDIF.

      READ TABLE lt_products WITH KEY product_id = <ls_item>-product_id TRANSPORTING NO FIELDS.
      IF sy-subrc <> 0.
        out->write( |ERROR: Order item { <ls_item>-order_item_id } references unknown product { <ls_item>-product_id }. Insert stopped.| ).
        RETURN.
      ENDIF.
    ENDLOOP.

    LOOP AT lt_orders ASSIGNING <ls_order>.
      DATA(lv_calc_total) = CONV zt01_db_order-total_amount( 0 ).

      LOOP AT lt_order_items ASSIGNING <ls_item> WHERE order_id = <ls_order>-order_id.
        DATA(lv_item_total) = CONV zt01_db_order-total_amount( <ls_item>-quantity * <ls_item>-unit_price_at_order ).
        lv_calc_total = lv_calc_total + lv_item_total.
      ENDLOOP.

      IF lv_calc_total <> <ls_order>-total_amount.
        out->write( |ERROR: Order { <ls_order>-order_id } total amount { <ls_order>-total_amount } does not match calculated item total { lv_calc_total }. Insert stopped.| ).
        RETURN.
      ENDIF.
    ENDLOOP.

    LOOP AT lt_customers ASSIGNING FIELD-SYMBOL(<ls_customer>).
      DATA(lv_order_count) = 0.

      LOOP AT lt_orders ASSIGNING <ls_order> WHERE customer_id = <ls_customer>-customer_id.
        lv_order_count = lv_order_count + 1.
      ENDLOOP.

      IF lv_order_count <= 1 AND <ls_customer>-status <> 'N'.
        out->write( |ERROR: Customer { <ls_customer>-customer_id } has { lv_order_count } orders and must have status N. Insert stopped.| ).
        RETURN.
      ENDIF.

      IF lv_order_count >= 2 AND <ls_customer>-status <> 'S'.
        out->write( |ERROR: Customer { <ls_customer>-customer_id } has { lv_order_count } orders and must have status S. Insert stopped.| ).
        RETURN.
      ENDIF.
    ENDLOOP.

    out->write( 'Validation successful. Starting database refresh.' ).
    out->write( '------------------------------------------------------------------------' ).

    " ─────────────────────────────────────────
    " DELETE OLD DATA
    " ─────────────────────────────────────────

    DELETE FROM zt01_db_order_it.
    out->write( |Order Items deleted: { sy-dbcnt } rows| ).

    DELETE FROM zt01_db_order.
    out->write( |Orders deleted: { sy-dbcnt } rows| ).

    DELETE FROM zt01_db_product.
    out->write( |Products deleted: { sy-dbcnt } rows| ).

    DELETE FROM zt01_db_customer.
    out->write( |Customers deleted: { sy-dbcnt } rows| ).

    out->write( '------------------------------------------------------------------------' ).

    " ─────────────────────────────────────────
    " INSERT NEW DATA
    " ─────────────────────────────────────────

    INSERT zt01_db_customer FROM TABLE @lt_customers.
    out->write( |Customers inserted: { sy-dbcnt } rows| ).

    INSERT zt01_db_product FROM TABLE @lt_products.
    out->write( |Products inserted: { sy-dbcnt } rows| ).

    INSERT zt01_db_order FROM TABLE @lt_orders.
    out->write( |Orders inserted: { sy-dbcnt } rows| ).

    INSERT zt01_db_order_it FROM TABLE @lt_order_items.
    out->write( |Order items inserted: { sy-dbcnt } rows| ).

    out->write( '------------------------------------------------------------------------' ).

    SELECT * FROM zt01_db_customer INTO TABLE @DATA(lt_customers_db).
    out->write( lt_customers_db ).

    SELECT * FROM zt01_db_product INTO TABLE @DATA(lt_products_db).
    out->write( lt_products_db ).

    SELECT * FROM zt01_db_order INTO TABLE @DATA(lt_orders_db).
    out->write( lt_orders_db ).

    SELECT * FROM zt01_db_order_it INTO TABLE @DATA(lt_items_db).
    out->write( lt_items_db ).


  ENDMETHOD.
ENDCLASS.
