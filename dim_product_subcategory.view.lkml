view: dim_product_subcategory {
  sql_table_name: dbo.DimProductSubcategory ;;

  dimension: english_product_subcategory_name {
    label: "Sub Category"
    type: string
    sql: ${TABLE}.EnglishProductSubcategoryName ;;
  }

  dimension: french_product_subcategory_name {
    type: string
    sql: ${TABLE}.FrenchProductSubcategoryName ;;
    hidden: yes
  }

  dimension: product_category_key {
    type: number
    sql: ${TABLE}.ProductCategoryKey ;;
    hidden: yes
  }

  dimension: product_subcategory_alternate_key {
    type: number
    sql: ${TABLE}.ProductSubcategoryAlternateKey ;;
    hidden: yes
  }

  dimension: product_subcategory_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProductSubcategoryKey ;;
    hidden: yes
  }

  dimension: spanish_product_subcategory_name {
    type: string
    sql: ${TABLE}.SpanishProductSubcategoryName ;;
    hidden: yes
  }

  measure: count {
    type: count
    drill_fields: [english_product_subcategory_name, spanish_product_subcategory_name, french_product_subcategory_name]
  }
}
