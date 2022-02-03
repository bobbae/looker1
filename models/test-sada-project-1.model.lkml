connection: "external-bqml-demo"

# include all the views
include: "/views/**/*.view"

datagroup: test_sada_project_1_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test_sada_project_1_default_datagroup

explore: county_2021_view {}

explore: county_2022_view {}
