view: aggregate_sales {
  sql_table_name: dbo.AggregateSales ;;

  dimension: customer_income {
    type: string
    sql: ${TABLE}.CustomerIncome ;;
  }

  dimension_group: order {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.OrderDate ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.PostalCode ;;
  }

  dimension: sales_amount {
    type: string
    sql: ${TABLE}.SalesAmount ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
