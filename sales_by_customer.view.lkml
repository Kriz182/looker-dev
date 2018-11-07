view: sales_by_customer {
  sql_table_name: dbo.SalesByCustomer ;;

  dimension: customer_yearly_income {
    type: string
    sql: ${TABLE}.CustomerYearlyIncome ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension: number_cars_owned {
    type: number
    sql: ${TABLE}.NumberCarsOwned ;;
  }

  dimension: sales_amount {
    type: string
    sql: ${TABLE}.SalesAmount ;;
  }

  dimension: total_children {
    type: number
    sql: ${TABLE}.TotalChildren ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
