- dashboard: business_pulse
  title: Business Pulse
  layout: newspaper
  description: 'Our go-to dashboard for everything ecommerce related - shows metrics like sales price, orders, and information about uses'
  query_timezone: user_timezone
  embed_style:
    background_color: "#f6f8fa"
    show_title: true
    title_color: "#3a4245"
    show_filters_bar: false
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  elements:
  - title: Number of First Purchasers
    name: Number of First Purchasers
    model: thelook
    explore: order_items
    type: single_value
    fields: [order_items.first_purchase_count]
    filters: {}
    sorts: [order_items.first_purchase_count desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: goal, label: Goal, expression: '15000', value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: dimension, _type_hint: number}]
    query_timezone: America/Los_Angeles
    font_size: medium
    colors: ["#5245ed", "#a2dcf3", "#776fdf", "#1ea8df", "#49cec1", "#776fdf", "#49cec1",
      "#1ea8df", "#a2dcf3", "#776fdf", "#776fdf", "#635189"]
    text_color: black
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    single_value_title: New Users Acquired
    custom_color_enabled: false
    custom_color: forestgreen
    hidden_fields: []
    y_axes: []
    note_state: collapsed
    note_display: above
    note_text: ''
    listen:
      Date: order_items.created_date
      State: users.state
      City: users.city
      Traffic Source: users.traffic_source
      User Gender: users.gender
    row: 2
    col: 0
    width: 4
    height: 4
  - title: Average Order Sale Price
    name: Average Order Sale Price
    model: thelook
    explore: order_items
    type: single_value
    fields: [order_items.average_sale_price]
    filters: {}
    sorts: [orders.average_profit desc, order_items.average_sale_price desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: date, label: date, expression: now(), value_format: !!null '',
        value_format_name: !!null '', _kind_hint: dimension, is_disabled: true}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    font_size: medium
    text_color: black
    colors: ["#5245ed", "#a2dcf3", "#776fdf", "#1ea8df", "#49cec1", "#776fdf", "#49cec1",
      "#1ea8df", "#a2dcf3", "#776fdf", "#776fdf", "#635189"]
    series_types: {}
    hidden_fields: []
    y_axes: []
    note_state: expanded
    note_display: below
    note_text: ''
    listen:
      Date: order_items.created_date
      State: users.state
      City: users.city
      Traffic Source: users.traffic_source
      User Gender: users.gender
    row: 2
    col: 4
    width: 4
    height: 4
  - title: Orders by Day and Category
    name: Orders by Day and Category
    model: thelook
    explore: order_items
    type: looker_area
    fields: [products.category, order_items.count, order_items.created_date]
    pivots: [products.category]
    fill_fields: [order_items.created_date]
    filters:
      products.category: Blazers & Jackets,Sweaters,Pants,Shorts,Fashion Hoodies &
        Sweatshirts,Accessories
    sorts: [products.category, order_items.created_date desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: true
    y_axes: [{label: Number of Orders, orientation: left, series: [{id: Accessories
              - order_items.count, name: Accessories, axisId: order_items.count},
          {id: Blazers & Jackets - order_items.count, name: Blazers &amp; Jackets,
            axisId: order_items.count}, {id: Fashion Hoodies & Sweatshirts - order_items.count,
            name: Fashion Hoodies &amp; Sweatshirts, axisId: order_items.count}, {
            id: Pants - order_items.count, name: Pants, axisId: order_items.count},
          {id: Shorts - order_items.count, name: Shorts, axisId: order_items.count},
          {id: Sweaters - order_items.count, name: Sweaters, axisId: order_items.count}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_labels: ["# Order Items"]
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    hide_legend: false
    legend_position: center
    colors: ["#64518A", "#8D7FB9", "#EA8A2F", "#F2B431", "#2DA5DE", "#57BEBE", "#7F7977",
      "#B2A898", "#494C52"]
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    x_axis_datetime_tick_count: 4
    show_null_points: true
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_datetime: true
    hide_points: true
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: ''
    listen:
      Date: order_items.created_date
      State: users.state
      City: users.city
      Traffic Source: users.traffic_source
      User Gender: users.gender
    row: 6
    col: 0
    width: 16
    height: 6
  - title: Website Visit Volume vs. Conversion Rate
    name: Website Visit Volume vs Conversion Rate
    model: thelook
    explore: events
    type: looker_column
    fields: [events.event_day_of_week, events.sessions_count, events.unique_visitors,
      sessions.overall_conversion]
    filters: {}
    sorts: [events.event_day_of_week]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axis_combined: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    colors: ["#1EA8DF", "#8ED3EF", "#B1A8C4", "#635189"]
    y_axis_orientation: [left, right]
    label_color: ["#EA8A2F", "#e9b404"]
    ordering: none
    show_null_labels: false
    show_null_points: true
    point_style: circle_outline
    interpolation: linear
    series_types:
      events.count: line
      events.unique_visitors: line
      events.sessions_count: line
    series_labels:
      sessions.overall_conversion: Conversion Rate
      events.sessions_count: Total Visitors
    limit_displayed_rows: false
    y_axis_scale_mode: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_colors: {}
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: events.unique_visitors,
            name: Unique Visitors}, {id: events.sessions_count, name: Sessions Count}]},
      {label: '', maxValue: !!null '', minValue: !!null '', orientation: right, showLabels: true,
        showValues: true, tickDensity: default, tickDensityCustom: 5, type: linear,
        unpinAxis: false, valueFormat: !!null '', series: [{id: sessions.overall_conversion,
            name: Conversion Rate}]}]
    hidden_fields: []
    note_state: collapsed
    note_display: below
    note_text: ''
    listen:
      Date: events.event_date
      State: users.state
      City: users.city
      Traffic Source: users.traffic_source
      User Gender: users.gender
    row: 26
    col: 0
    width: 10
    height: 7
  - title: Percent of Cohort Still Active by Traffic Source
    name: Percent of Cohort Still Active by Traffic Source
    model: thelook
    explore: order_items
    type: looker_line
    fields: [order_items.months_since_signup, users.count, users.traffic_source]
    pivots: [users.traffic_source]
    filters:
      order_items.months_since_signup: "[0, 12]"
      users.created_month: 12 months
    sorts: [order_items.months_since_signup, users.age_tier__sort_, users.traffic_source]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: pct_cohort_still_active, label: Pct Cohort
          Still Active, expression: "${users.count} / max(${users.count})", value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: []
    y_axis_max: ['50']
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_labels: [Percent of Cohort still Active]
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_value_format: "#\\%"
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: '1'
    legend_position: center
    colors: ["#64518A", "#8D7FB9", "#EA8A2F", "#F2B431", "#2DA5DE", "#57BEBE", "#7F7977",
      "#B2A898", "#494C52"]
    point_style: none
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    hidden_fields: [cumulative_lifetime_spend, order_items.total_sale_price, users.count]
    note_state: collapsed
    note_display: below
    note_text: ''
    listen:
      State: users.state
      City: users.city
      Traffic Source: users.traffic_source
      User Gender: users.gender
    row: 33
    col: 10
    width: 14
    height: 7
  - title: Total Sales, Year over Year
    name: Total Sales, Year over Year
    model: thelook
    explore: order_items
    type: looker_line
    fields: [order_items.created_month_name, order_items.total_sale_price, order_items.created_year]
    pivots: [order_items.created_year]
    fill_fields: [order_items.created_month_name]
    filters:
      order_items.created_date: before 0 months ago
      order_items.created_year: 4 years
    sorts: [order_items.created_year desc 0, order_items.created_month_name]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{id: '2018', name: '2018', axisId: order_items.total_sale_price},
          {id: '2017', name: '2017', axisId: order_items.total_sale_price}, {id: '2016',
            name: '2016', axisId: order_items.total_sale_price}, {id: '2015', name: '2015',
            axisId: order_items.total_sale_price}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear, valueFormat: "$0,\\\
          K\\"}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_value_format: "$#,##0"
    show_x_axis_label: false
    x_axis_label: Month of Year
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: right
    colors: ["#635189", "#B1A8C4", "#1EA8DF", "#8ED3EF"]
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [calculation_1]
    note_state: collapsed
    note_display: above
    note_text: ''
    listen:
      State: users.state
      City: users.city
      Traffic Source: users.traffic_source
      User Gender: users.gender
    row: 2
    col: 16
    width: 8
    height: 10
  - title: Highest Spending Users
    name: Highest Spending Users
    model: thelook
    explore: order_items
    type: looker_map
    fields: [users.approx_location, users.gender, order_items.order_count, users.count,
      order_items.total_sale_price, order_items.average_spend_per_user, users.country]
    pivots: [users.gender]
    filters:
      users.country: USA
    sorts: [users.gender 0, order_items.total_sale_price desc 0]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    map_plot_mode: points
    heatmap_gridlines: true
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_latitude: 37.57941251343841
    map_longitude: -99.31640625000001
    map_zoom: 4
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_radius_max: 15
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    map_marker_color: ["#64518A", "#1ea8df", "#a2dcf3#57BEBE", "#7F7977", "#B2A898",
      "#494C52"]
    show_view_names: false
    show_legend: true
    map_value_colors: [white, purple]
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_value_scale_clamp_min: 0
    map_value_scale_clamp_max: 200
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    loading: false
    hidden_fields: [orders.count, users.count, order_items.total_sale_price, order_items.order_count]
    map: usa
    map_projection: ''
    quantize_colors: false
    colors: [whitesmoke, "#64518A"]
    outer_border_color: "#64518A"
    inner_border_color: ''
    inner_border_width: 0.6
    outer_border_width: 2
    empty_color: ''
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: Bubble size corresponds to average user spend
    listen:
      Date: order_items.created_date
      State: users.state
      City: users.city
      Traffic Source: users.traffic_source
      User Gender: users.gender
    row: 14
    col: 10
    width: 14
    height: 9
  - title: User Behaviors by Traffic Source
    name: User Behaviors by Traffic Source
    model: thelook
    explore: order_items
    type: looker_column
    fields: [users.traffic_source, order_items.average_sale_price, user_order_facts.average_lifetime_orders]
    filters: {}
    sorts: [user_order_facts.lifetime_orders_tier__sort_, users.traffic_source]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{id: order_items.average_sale_price,
            name: Average Sale Price, axisId: order_items.average_sale_price}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {
        label: !!null '', orientation: right, series: [{id: user_order_facts.average_lifetime_orders,
            name: Average Lifetime Orders, axisId: user_order_facts.average_lifetime_orders}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_labels: [Average Sale Price ($)]
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_value_format: '0'
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    hide_legend: false
    legend_position: center
    colors: ["#1ea8df", "#a2dcf3", "#929292", "#9fdee0", "#1f3e5a", "#90c8ae", "#92818d",
      "#c5c6a6", "#82c2ca", "#cee0a0", "#928fb4", "#9fc190"]
    font_size: '13'
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: false
    y_axis_orientation: [left, right]
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [percent_repeat_customers]
    value_labels: legend
    label_type: labPer
    show_null_points: true
    interpolation: linear
    listen:
      Date: order_items.created_date
      State: users.state
      City: users.city
      Traffic Source: users.traffic_source
      User Gender: users.gender
    row: 33
    col: 0
    width: 10
    height: 7
  - title: User Basic Demographic Profile
    name: User Basic Demographic Profile
    model: thelook
    explore: order_items
    type: looker_donut_multiples
    fields: [users.gender, users.traffic_source, order_items.count]
    pivots: [users.traffic_source]
    filters: {}
    sorts: [user_order_facts.lifetime_orders_tier__sort_, users.traffic_source, order_items.count
        desc 0]
    limit: 500
    column_limit: 15
    query_timezone: America/Los_Angeles
    show_value_labels: true
    show_view_names: true
    font_size: 15
    stacking: ''
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    hide_legend: false
    colors: ["#64518A", "#8D7FB9", "#EA8A2F", "#F2B431", "#2DA5DE", "#57BEBE", "#7F7977",
      "#B2A898", "#494C52"]
    series_colors: {}
    hidden_fields: []
    y_axes: []
    note_state: collapsed
    note_display: below
    note_text: ''
    listen:
      Date: order_items.created_date
      State: users.state
      City: users.city
      Traffic Source: users.traffic_source
      User Gender: users.gender
    row: 14
    col: 0
    width: 10
    height: 9
  - title: 30 Day Repeat Purchase Rate
    name: 30 Day Repeat Purchase Rate
    model: thelook
    explore: order_items
    type: single_value
    fields: [order_items.30_day_repeat_purchase_rate]
    filters:
      users.country: "{{ _user_attributes['country'] }}"
    sorts: [repeat_purchase_facts.30_day_repeat_purchase_rate desc, order_items.30_day_repeat_purchase_rate
        desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    font_size: medium
    text_color: black
    colors: ["#1f78b4", "#a6cee3", "#33a02c", "#b2df8a", "#e31a1c", "#fb9a99", "#ff7f00",
      "#fdbf6f", "#6a3d9a", "#cab2d6", "#b15928", "#edbc0e"]
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    single_value_title: Repeat Purchase Rate
    hidden_fields: []
    y_axes: []
    note_state: collapsed
    note_display: hover
    note_text: What percent of orders are followed by a repeat purchase by the same
      user within 30 days?
    listen:
      Date: order_items.created_date
      State: users.state
      City: users.city
      Traffic Source: users.traffic_source
      User Gender: users.gender
    row: 2
    col: 12
    width: 4
    height: 4
  - title: Total Order Count
    name: Total Order Count
    model: thelook
    explore: order_items
    type: single_value
    fields: [order_items.reporting_period, order_items.count]
    filters:
      order_items.reporting_period: "-NULL"
    sorts: [order_items.count desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: percent_change, label: Percent Change, expression: "${order_items.count}/offset(${order_items.count},1)\
          \ - 1", value_format: !!null '', value_format_name: percent_0}]
    query_timezone: America/Los_Angeles
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    colors: ["#5245ed", "#a2dcf3", "#776fdf", "#1ea8df", "#49cec1", "#776fdf", "#49cec1",
      "#1ea8df", "#a2dcf3", "#776fdf", "#776fdf", "#635189"]
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_single_value_title: true
    single_value_title: Orders This Year
    hidden_fields: [order_items.reporting_period]
    comparison_label: vs Same Period Last Year
    custom_color_enabled: false
    custom_color: forestgreen
    y_axes: []
    note_state: collapsed
    note_display: below
    note_text: ''
    listen:
      State: users.state
      City: users.city
      Traffic Source: users.traffic_source
      User Gender: users.gender
    row: 2
    col: 8
    width: 4
    height: 4
  - name: "<span class='fa fa-tachometer'> Topline KPIs</span>"
    type: text
    title_text: "<span class='fa fa-tachometer'> Topline KPIs</span>"
    subtitle_text: Are we headed in the right direction?
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
  - name: "<span class='fa fa-users'> Customer Demographics </span>"
    type: text
    title_text: "<span class='fa fa-users'> Customer Demographics </span>"
    subtitle_text: Who are our customers?
    row: 12
    col: 0
    width: 24
    height: 2
  - title: Most Viewed Brands Online
    name: Most Viewed Brands Online
    model: thelook
    explore: sessions
    type: looker_grid
    fields: [product_viewed.brand, sessions.count, sessions.cart_to_checkout_conversion,
      product_viewed.department]
    pivots: [product_viewed.department]
    filters:
      product_viewed.brand: "-NULL"
    sorts: [sessions.count desc 0, product_viewed.department]
    limit: 10
    column_limit: 50
    row_total: right
    query_timezone: user_timezone
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    series_labels:
      sessions.cart_to_checkout_conversion: Cart Conversion
    series_cell_visualizations:
      sessions.count:
        is_active: true
        palette:
          palette_id: ee88a1c3-7740-d253-5f7a-a98d5bf716e7
          collection_id: f14810d2-98d7-42df-82d0-bc185a074e42
          custom_colors:
          - "#8ED3EF"
          - "#1EA8DF"
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#2196F3",
        font_color: !!null '', color_application: {collection_id: f14810d2-98d7-42df-82d0-bc185a074e42,
          palette_id: 493e0f89-1e28-4f9b-9f49-9cb1e77a0331}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting_ignored_fields: []
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    truncate_column_names: true
    colors: ["#5245ed", "#a2dcf3", "#776fdf", "#1ea8df", "#49cec1", "#776fdf", "#49cec1",
      "#1ea8df", "#a2dcf3", "#776fdf", "#776fdf", "#635189"]
    hidden_fields: []
    y_axes: []
    series_types: {}
    listen:
      Date: events.event_date
      State: users.state
      City: users.city
      Traffic Source: users.traffic_source
      User Gender: users.gender
    row: 26
    col: 10
    width: 14
    height: 7
  - name: "<span class='fa fa-laptop'> Web Analytics </span>"
    type: text
    title_text: "<span class='fa fa-laptop'> Web Analytics </span>"
    subtitle_text: What are customers doing on our website?
    body_text: "**Recommended Action** Dive into successful brands to see what they're\
      \ doing that's working, drill by category or head to the Brand Analytics report"
    row: 23
    col: 0
    width: 24
    height: 3
  filters:
  - name: Date
    title: Date
    type: date_filter
    default_value: 90 days
    allow_multiple_values: true
    required: false
  - name: State
    title: State
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: thelook
    explore: order_items
    listens_to_filters: [Country]
    field: users.state
  - name: City
    title: City
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    model: thelook
    explore: order_items
    listens_to_filters: [State, Country]
    field: users.city
  - name: Traffic Source
    title: Traffic Source
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: thelook
    explore: order_items
    listens_to_filters: []
    field: users.traffic_source
  - name: User Gender
    title: User Gender
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: thelook
    explore: order_items
    listens_to_filters: []
    field: users.gender
