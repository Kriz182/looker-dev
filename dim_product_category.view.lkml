view: dim_product_category {
  sql_table_name: dbo.DimProductCategory ;;

  dimension: english_product_category_name {
    label: "Category"
    type: string
    sql: ${TABLE}.EnglishProductCategoryName ;;
  }

  dimension: french_product_category_name {
    type: string
    sql: ${TABLE}.FrenchProductCategoryName ;;
    hidden: yes
  }

  dimension: product_category_alternate_key {
    type: number
    sql: ${TABLE}.ProductCategoryAlternateKey ;;
    hidden: yes
  }

  dimension: product_category_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProductCategoryKey ;;
    hidden: yes
  }

  dimension: spanish_product_category_name {
    type: string
    sql: ${TABLE}.SpanishProductCategoryName ;;
    hidden: yes
  }

  measure: count {
    type: count
    drill_fields: [english_product_category_name, spanish_product_category_name, french_product_category_name]
  }
}
