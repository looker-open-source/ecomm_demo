- dashboard: customer_lookup
  title: Customer Lookup
  layout: newspaper
  description: 'Drill dashboard, linked on customer email, which shows ecommerce behavior for a given user '
  embed_style:
    background_color: "#f6f8fa"
    show_title: true
    title_color: "#3a4245"
    show_filters_bar: true
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  elements:
  - title: User Info
    name: User Info
    model: thelook
    explore: order_items
    type: looker_single_record
    fields: [users.id, users.email, users.name, users.traffic_source, users.created_month,
      users.age, users.gender, users.city, users.state, users.zip]
    filters:
      order_items.created_date: 99 years
    sorts: [users.zip]
    limit: 1
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_null_labels: false
    show_view_names: false
    show_row_numbers: true
    hidden_fields: []
    y_axes: []
    listen:
      Email: users.email
    row: 0
    col: 0
    width: 6
    height: 6
  - title: Lifetime Orders
    name: Lifetime Orders
    model: thelook
    explore: order_items
    type: single_value
    fields: [order_items.order_count]
    filters:
      order_items.created_date: 99 years
    sorts: [order_items.order_count desc]
    limit: 500
    show_null_labels: false
    user_access_filters: {}
    hidden_fields: []
    y_axes: []
    listen:
      Email: users.email
    row: 0
    col: 14
    width: 5
    height: 3
  - title: Total Items Returned
    name: Total Items Returned
    model: thelook
    explore: order_items
    type: single_value
    fields: [order_items.count]
    filters:
      order_items.returned_date: NOT NULL
    sorts: [order_items.count desc]
    limit: 500
    show_null_labels: false
    font_size: medium
    text_color: black
    hidden_fields: []
    y_axes: []
    listen:
      Email: users.email
    row: 0
    col: 19
    width: 5
    height: 3
  - title: Lifetime Spend
    name: Lifetime Spend
    model: thelook
    explore: order_items
    type: single_value
    fields: [order_items.total_sale_price]
    filters:
      order_items.created_date: 99 years
    sorts: [order_items.total_sale_price desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_null_labels: false
    font_size: medium
    text_color: black
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    colors: ["#5245ed", "#a2dcf3", "#776fdf", "#1ea8df", "#49cec1", "#776fdf", "#49cec1",
      "#1ea8df", "#a2dcf3", "#776fdf", "#776fdf", "#635189"]
    color_palette: Default
    hidden_fields: []
    y_axes: []
    listen:
      Email: users.email
    row: 0
    col: 9
    width: 5
    height: 3
  - title: Items Order History
    name: Items Order History
    model: thelook
    explore: order_items
    type: looker_grid
    fields: [order_items.id, products.item_name, order_items.status, order_items.created_date,
      order_items.shipped_date, order_items.delivered_date, order_items.returned_date,
      distribution_centers.name]
    filters: {}
    sorts: [order_items.created_date desc]
    limit: 500
    show_view_names: true
    show_row_numbers: true
    hidden_fields: []
    y_axes: []
    series_types: {}
    listen:
      Email: users.email
    row: 3
    col: 15
    width: 9
    height: 9
  - title: Favorite Categories
    name: Favorite Categories
    model: thelook
    explore: order_items
    type: looker_pie
    fields: [products.category, order_items.count]
    filters:
      order_items.created_date: 99 years
    sorts: [order_items.count desc]
    limit: 500
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    show_view_names: true
    colors: ["#64518A", "#8D7FB9", "#EA8A2F", "#F2B431", "#2DA5DE", "#57BEBE", "#7F7977",
      "#B2A898", "#494C52"]
    hidden_fields: []
    y_axes: []
    listen:
      Email: users.email
    row: 3
    col: 9
    width: 6
    height: 9
  - title: User Location
    name: User Location
    model: thelook
    explore: order_items
    type: looker_geo_coordinates
    fields: [users.zip, users.count]
    filters: {}
    sorts: [users.created_month desc, users.zip]
    limit: 1
    query_timezone: America/Los_Angeles
    show_view_names: true
    font_size: medium
    text_color: "#49719a"
    map: usa
    map_projection: ''
    map_plot_mode: points
    heatmap_gridlines: true
    map_tile_provider: positron
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: icon
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    map_latitude: 42.35930500076174
    map_longitude: -71.02283477783203
    map_zoom: 11
    point_radius: 10
    loading: false
    point_color: "#64518A"
    hidden_fields: []
    y_axes: []
    listen:
      Email: users.email
    row: 6
    col: 0
    width: 9
    height: 6
  - name: Customer Image and Name
    title: Customer Image and Name
    model: thelook
    explore: order_items
    type: single_value
    fields: [users.user_image, users.name]
    filters:
      order_items.created_date: 99 years
    sorts: [users.created_month desc, users.user_image]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: false
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    font_size: medium
    hidden_fields: []
    y_axes: []
    listen:
      Email: users.email
    row: 0
    col: 6
    width: 3
    height: 6
  filters:
  - name: Email
    title: Email
    type: field_filter
    default_value: jgraham@gmail.com
    allow_multiple_values: true
    required: false
    model: thelook
    explore: order_items
    listens_to_filters: []
    field: users.email
