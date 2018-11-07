connection: "lookml-azuresql-ah"

# include all the views
include: "*.view"

datagroup: adventureworks_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: adventureworks_default_datagroup

explore: fact_internet_sales {
  label: "(1) Internet Sales"
  view_name: fact_internet_sales

  join: dim_product {
    view_label: "Product"
    type: left_outer
    sql_on: ${dim_product.product_key} = ${fact_internet_sales.product_key} ;;
    relationship: many_to_one
  }

  join: dim_product_subcategory {
    view_label: "Sub Category"
    type: left_outer
    sql_on: ${dim_product_subcategory.product_subcategory_key} = ${dim_product.product_subcategory_key} ;;
    relationship: many_to_one
  }

  join: dim_product_category {
    view_label: "Category"
    type: left_outer
    sql_on: ${dim_product_subcategory.product_category_key} = ${dim_product_category.product_category_key} ;;
    relationship: many_to_one
  }

  join: dim_date {
    view_label: "Date"
    type: left_outer
    sql_on: ${dim_date.date_key} = ${fact_internet_sales.order_date_key} ;;
    relationship: many_to_one
  }

  join: dim_customer {
    view_label: "Customer"
    type: left_outer
    sql_on: ${dim_customer.customer_key} = ${fact_internet_sales.customer_key} ;;
    relationship: many_to_one
  }

  join: dim_sales_territory {
    view_label: "Sales Territory"
    type:  left_outer
    sql_on: ${dim_sales_territory.sales_territory_key} = ${fact_internet_sales.sales_territory_key};;
    relationship: many_to_one
  }

  join: dim_geography {
    view_label: "Geography"
    type: left_outer
    sql_on: ${dim_sales_territory.sales_territory_key} = ${dim_geography.geography_key};;
    relationship: many_to_one
  }
}

# explore: aggregate_sales {}

# explore: dim_account {}
#
# explore: dim_currency {}
#
# explore: dim_customer {}
#
# explore: dim_date {}
#
# explore: dim_department_group {}
#
# explore: dim_employee {}
#
# explore: dim_geography {}
#
# explore: dim_organization {}
#
# explore: dim_product {}
#
# explore: dim_product_category {}
#
# explore: dim_product_subcategory {}
#
# explore: dim_promotion {}
#
# explore: dim_reseller {}
#
# explore: dim_sales_reason {}
#
# explore: dim_sales_territory {}
#
# # explore: dim_scenario {}
# #
# # explore: fact_call_center {}
# #
# # explore: fact_currency_rate {}
# #
# # explore: fact_finance {}
# #
# # explore: fact_internet_sales {}
# #
# # explore: fact_internet_sales_reason {}
# #
# # explore: fact_reseller_sales {}
# #
# # explore: fact_sales_quota {}
# #
# # explore: fact_survey_response {}
# #
# # explore: prospective_buyer {}
# #
# # explore: sales_by_category {}
# #
# # explore: sales_by_customer {}
#
# explore: sales_by_date {}
#
# explore: sales_by_region {}
#
# explore: v_dmprep {}
#
# explore: v_target_mail {} #
