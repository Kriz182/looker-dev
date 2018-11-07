view: sales_by_date {
  sql_table_name: dbo.SalesByDate ;;

  dimension: calendar_year {
    type: number
    sql: ${TABLE}.CalendarYear ;;
  }

  dimension: english_month_name {
    type: string
    sql: ${TABLE}.EnglishMonthName ;;
  }

  dimension: sales_amount {
    type: string
    sql: ${TABLE}.SalesAmount ;;
  }

  measure: count {
    type: count
    drill_fields: [english_month_name]
  }
}
