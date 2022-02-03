view: county_2021_view {
  sql_table_name: `bqml_demo.county_2021_view`
    ;;

  dimension: county_fips_code {
    type: string
    sql: ${TABLE}.county_fips_code ;;
  }

  dimension: county_geom {
    type: string
    sql: ${TABLE}.county_geom ;;
  }

  dimension: county_name {
    type: string
    sql: ${TABLE}.county_name ;;
  }

  dimension: cumulative_confirmed {
    type: number
    sql: ${TABLE}.cumulative_confirmed ;;
  }

  dimension: cumulative_deceased {
    type: number
    sql: ${TABLE}.cumulative_deceased ;;
  }

  dimension: cumulative_persons_fully_vaccinated {
    type: number
    sql: ${TABLE}.cumulative_persons_fully_vaccinated ;;
  }

  dimension_group: date_week {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_week ;;
  }

  dimension: grocery_and_pharmacy_percent_change_from_baseline {
    type: number
    sql: ${TABLE}.grocery_and_pharmacy_percent_change_from_baseline ;;
  }

  dimension: percent_fully_vaccinated {
    type: number
    sql: ${TABLE}.percent_fully_vaccinated ;;
  }

  dimension: percent_new_confirmed {
    type: number
    sql: ${TABLE}.percent_new_confirmed ;;
  }

  dimension: percent_new_deceased {
    type: number
    sql: ${TABLE}.percent_new_deceased ;;
  }

  dimension: percent_new_persons_vaccinated {
    type: number
    sql: ${TABLE}.percent_new_persons_vaccinated ;;
  }

  dimension: population {
    type: number
    sql: ${TABLE}.population ;;
  }

  dimension: retail_and_recreation_percent_change_from_baseline {
    type: number
    sql: ${TABLE}.retail_and_recreation_percent_change_from_baseline ;;
  }

  dimension: seven_day_confirmed {
    type: number
    sql: ${TABLE}.seven_day_confirmed ;;
  }

  dimension: seven_day_deceased {
    type: number
    sql: ${TABLE}.seven_day_deceased ;;
  }

  dimension: seven_day_new_vaccinated {
    type: number
    sql: ${TABLE}.seven_day_new_vaccinated ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: state_fips_code {
    type: string
    sql: ${TABLE}.state_fips_code ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
  }

  dimension: transit_stations_percent_change_from_baseline {
    type: number
    sql: ${TABLE}.transit_stations_percent_change_from_baseline ;;
  }

  dimension: workplaces_percent_change_from_baseline {
    type: number
    sql: ${TABLE}.workplaces_percent_change_from_baseline ;;
  }

  measure: count {
    type: count
    drill_fields: [county_name, state_name]
  }
}
