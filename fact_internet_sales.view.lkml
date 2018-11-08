view: fact_internet_sales {
  sql_table_name: dbo.FactInternetSales ;;
  view_label: "Internet Sales"

  dimension: carrier_tracking_number {
    type: string
    sql: ${TABLE}.CarrierTrackingNumber ;;
  }

  dimension: currency_key {
    type: number
    sql: ${TABLE}.CurrencyKey ;;
    hidden: yes
  }

  dimension: customer_key {
    type: number
    sql: ${TABLE}.CustomerKey ;;
    hidden: yes
  }

  dimension: customer_ponumber {
    type: string
    sql: ${TABLE}.CustomerPONumber ;;
  }

  dimension: discount_amount {
    type: number
    sql: ${TABLE}.DiscountAmount ;;
  }

  dimension: due_date_key {
    type: number
    sql: ${TABLE}.DueDateKey ;;
    hidden: yes
  }

  dimension: extended_amount {
    type: string
    sql: ${TABLE}.ExtendedAmount ;;
  }

  dimension: freight {
    type: string
    sql: ${TABLE}.Freight ;;
  }

  dimension: order_date_key {
    type: number
    sql: ${TABLE}.OrderDateKey ;;
    hidden: yes
  }

  dimension: order_quantity {
    type: number
    sql: ${TABLE}.OrderQuantity ;;
  }

  dimension: product_key {
    type: number
    sql: ${TABLE}.ProductKey ;;
    hidden: yes
  }

  dimension: product_standard_cost {
    type: string
    sql: ${TABLE}.ProductStandardCost ;;
    value_format_name: usd
  }

  dimension: promotion_key {
    type: number
    sql: ${TABLE}.PromotionKey ;;
    hidden: yes
  }

  dimension: revision_number {
    type: number
    sql: ${TABLE}.RevisionNumber ;;
    hidden: yes
  }

  dimension: sales_amount {
    type: string
    sql: ${TABLE}.SalesAmount ;;
    value_format_name: usd
  }

  dimension: sales_order_line_number {
    type: number
    sql: ${TABLE}.SalesOrderLineNumber ;;
    hidden: yes
  }

  dimension: sales_order_number {
    type: string
    sql: ${TABLE}.SalesOrderNumber ;;
  }

  dimension: sales_territory_key {
    type: number
    sql: ${TABLE}.SalesTerritoryKey ;;
    hidden: yes
  }

  dimension: ship_date_key {
    type: number
    sql: ${TABLE}.ShipDateKey ;;
    hidden: yes
  }

  dimension: tax_amt {
    type: string
    sql: ${TABLE}.TaxAmt ;;
    value_format_name: usd
  }

  dimension: total_product_cost {
    type: string
    sql: ${TABLE}.TotalProductCost ;;
    value_format_name: usd
  }

  dimension: unit_price {
    type: string
    sql: ${TABLE}.UnitPrice ;;
    value_format_name: usd
  }

  dimension: unit_price_discount_pct {
    type: number
    sql: ${TABLE}.UnitPriceDiscountPct ;;
  }

  measure: count {
    type: count
    drill_fields: [order_details*]
  }

  measure: total_sales {
    type:  sum
    sql: ${sales_amount} ;;
    value_format_name: usd
    drill_fields: [order_details*]
  }

  measure: average_sales  {
    type: average
    sql: ${sales_amount} ;;
    value_format_name: usd
  }

  dimension: gross_margin {
    type: number
    sql: ${sales_amount}-${total_product_cost} ;;
    value_format_name: usd
  }

  measure: total_gross_margin {
    type: sum
    sql: ${gross_margin} ;;
    value_format_name: usd
  }

  measure: total_quantity {
    type: sum
    sql: ${order_quantity} ;;
  }

  set: order_details  {
    fields: [total_sales, average_sales, total_gross_margin, total_quantity, count]
  }
}
