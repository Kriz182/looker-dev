view: sales_by_category {
  sql_table_name: dbo.SalesByCategory ;;

  dimension: product_line {
    type: string
    sql: ${TABLE}.ProductLine ;;
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
