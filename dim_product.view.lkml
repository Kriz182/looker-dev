view: dim_product {
  sql_table_name: dbo.DimProduct ;;

  dimension: arabic_description {
    type: string
    sql: ${TABLE}.ArabicDescription ;;
    hidden: yes
  }

  dimension: chinese_description {
    type: string
    sql: ${TABLE}.ChineseDescription ;;
    hidden: yes
  }

  dimension: class {
    type: string
    sql: ${TABLE}.Class ;;
  }

  dimension: color {
    type: string
    sql: ${TABLE}.Color ;;
  }

  dimension: days_to_manufacture {
    type: number
    sql: ${TABLE}.DaysToManufacture ;;
  }

  dimension: dealer_price {
    type: string
    sql: ${TABLE}.DealerPrice ;;
  }

  dimension_group: end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.EndDate ;;
  }

  dimension: english_description {
    label: "Description"
    type: string
    sql: ${TABLE}.EnglishDescription ;;
  }

  dimension: english_product_name {
    label: "Product Name"
    type: string
    sql: ${TABLE}.EnglishProductName ;;
  }

  dimension: finished_goods_flag {
    type: string
    sql: ${TABLE}.FinishedGoodsFlag ;;
  }

  dimension: french_description {
    type: string
    sql: ${TABLE}.FrenchDescription ;;
    hidden: yes
  }

  dimension: french_product_name {
    type: string
    sql: ${TABLE}.FrenchProductName ;;
    hidden: yes
  }

  dimension: german_description {
    type: string
    sql: ${TABLE}.GermanDescription ;;
    hidden: yes
  }

  dimension: hebrew_description {
    type: string
    sql: ${TABLE}.HebrewDescription ;;
    hidden: yes
  }

  dimension: japanese_description {
    type: string
    sql: ${TABLE}.JapaneseDescription ;;
    hidden: yes
  }

  dimension: list_price {
    type: string
    sql: ${TABLE}.ListPrice ;;
    value_format_name: usd
  }

  dimension: model_name {
    type: string
    sql: ${TABLE}.ModelName ;;
  }

  dimension: product_alternate_key {
    type: string
    sql: ${TABLE}.ProductAlternateKey ;;
    hidden: yes
  }

  dimension: product_key {
    primary_key: yes
    type: number
    sql: ${TABLE}.ProductKey ;;
    hidden: yes
  }

  dimension: product_line {
    type: string
    sql: ${TABLE}.ProductLine ;;
  }

  dimension: product_subcategory_key {
    type: number
    sql: ${TABLE}.ProductSubcategoryKey ;;
    hidden: yes
  }

  dimension: reorder_point {
    type: number
    sql: ${TABLE}.ReorderPoint ;;
  }

  dimension: safety_stock_level {
    type: number
    sql: ${TABLE}.SafetyStockLevel ;;
  }

  dimension: size {
    type: string
    sql: ${TABLE}.Size ;;
  }

  dimension: size_range {
    type: string
    sql: ${TABLE}.SizeRange ;;
  }

  dimension: size_unit_measure_code {
    type: string
    sql: ${TABLE}.SizeUnitMeasureCode ;;
  }

  dimension: spanish_product_name {
    type: string
    sql: ${TABLE}.SpanishProductName ;;
    hidden: yes
  }

  dimension: standard_cost {
    type: string
    sql: ${TABLE}.StandardCost ;;
    value_format_name: usd
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.StartDate ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: style {
    type: string
    sql: ${TABLE}.Style ;;
  }

  dimension: thai_description {
    type: string
    sql: ${TABLE}.ThaiDescription ;;
    hidden: yes
  }

  dimension: turkish_description {
    type: string
    sql: ${TABLE}.TurkishDescription ;;
    hidden: yes
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.Weight ;;
  }

  dimension: weight_unit_measure_code {
    type: string
    sql: ${TABLE}.WeightUnitMeasureCode ;;
  }

  measure: count {
    type: count
    drill_fields: [english_product_name, spanish_product_name, french_product_name, model_name]
  }
}
