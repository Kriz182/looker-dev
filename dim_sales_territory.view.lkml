view: dim_sales_territory {
  sql_table_name: dbo.DimSalesTerritory ;;

  dimension: sales_territory_alternate_key {
    type: number
    sql: ${TABLE}.SalesTerritoryAlternateKey ;;
    hidden: yes
  }

  dimension: sales_territory_country {
    label: "Country"
    type: string
    sql: ${TABLE}.SalesTerritoryCountry ;;
    map_layer_name: countries
  }

  dimension: sales_territory_group {
    label: "Territory Group"
    type: string
    sql: ${TABLE}.SalesTerritoryGroup ;;
  }

  dimension: sales_territory_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.SalesTerritoryKey ;;
    hidden: yes
  }

  dimension: sales_territory_region {
    label: "Territory Region"
    type: string
    sql: ${TABLE}.SalesTerritoryRegion ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
