view: sales_by_region {
  sql_table_name: dbo.SalesByRegion ;;

  dimension: postal_code {
    type: string
    sql: ${TABLE}.PostalCode ;;
  }

  dimension: sales_amount {
    type: string
    sql: ${TABLE}.SalesAmount ;;
  }

  dimension: state_province_code {
    type: string
    sql: ${TABLE}.StateProvinceCode ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
