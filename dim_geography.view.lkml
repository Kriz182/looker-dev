view: dim_geography {
  sql_table_name: dbo.DimGeography ;;

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: country_region_code {
    type: string
    sql: ${TABLE}.CountryRegionCode ;;
  }

  dimension: english_country_region_name {
    label: "Country Region"
    type: string
    sql: ${TABLE}.EnglishCountryRegionName ;;
  }

  dimension: french_country_region_name {
    type: string
    sql: ${TABLE}.FrenchCountryRegionName ;;
    hidden: yes
  }

  dimension: geography_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.GeographyKey ;;
    hidden: yes
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.PostalCode ;;
  }

  dimension: sales_territory_key {
    type: number
    sql: ${TABLE}.SalesTerritoryKey ;;
    hidden: yes
  }

  dimension: spanish_country_region_name {
    type: string
    sql: ${TABLE}.SpanishCountryRegionName ;;
    hidden: yes
  }

  dimension: state_province_code {
    type: string
    sql: ${TABLE}.StateProvinceCode ;;
  }

  dimension: state_province_name {
    type: string
    sql: ${TABLE}.StateProvinceName ;;
  }

  measure: count {
    type: count
    drill_fields: [state_province_name, english_country_region_name, spanish_country_region_name, french_country_region_name]
  }
}
