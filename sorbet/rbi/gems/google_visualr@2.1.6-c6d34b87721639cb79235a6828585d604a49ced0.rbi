# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `google_visualr` gem.
# Please instead update this file by running `bin/tapioca gem google_visualr`.


# source://google_visualr//lib/google_visualr/param_helpers.rb#1
module GoogleVisualr; end

# source://google_visualr//lib/google_visualr/formatters.rb#36
class GoogleVisualr::ArrowFormat < ::GoogleVisualr::Formatter; end

# source://google_visualr//lib/google_visualr/formatters.rb#39
class GoogleVisualr::BarFormat < ::GoogleVisualr::Formatter; end

# source://google_visualr//lib/google_visualr/base_chart.rb#3
class GoogleVisualr::BaseChart
  include ::GoogleVisualr::Packages
  include ::GoogleVisualr::ParamHelpers

  # @return [BaseChart] a new instance of BaseChart
  #
  # source://google_visualr//lib/google_visualr/base_chart.rb#9
  def initialize(data_table, options = T.unsafe(nil)); end

  # source://google_visualr//lib/google_visualr/base_chart.rb#27
  def add_listener(event, callback); end

  # source://google_visualr//lib/google_visualr/base_chart.rb#15
  def chart_name; end

  # Returns the value of attribute data_table.
  #
  # source://google_visualr//lib/google_visualr/base_chart.rb#7
  def data_table; end

  # Sets the attribute data_table
  #
  # @param value the value to set the attribute data_table to.
  #
  # source://google_visualr//lib/google_visualr/base_chart.rb#7
  def data_table=(_arg0); end

  # Returns the value of attribute listeners.
  #
  # source://google_visualr//lib/google_visualr/base_chart.rb#7
  def listeners; end

  # Sets the attribute listeners
  #
  # @param value the value to set the attribute listeners to.
  #
  # source://google_visualr//lib/google_visualr/base_chart.rb#7
  def listeners=(_arg0); end

  # source://google_visualr//lib/google_visualr/base_chart.rb#19
  def options; end

  # source://google_visualr//lib/google_visualr/base_chart.rb#23
  def options=(options); end

  # Generates JavaScript and renders the Google Chart in the final HTML output.
  #
  # Parameters:
  #  *div_id            [Required] The ID of the DIV element that the Google Chart should be rendered in.
  #
  # source://google_visualr//lib/google_visualr/base_chart.rb#35
  def to_js(element_id); end
end

# source://google_visualr//lib/google_visualr/formatters.rb#42
class GoogleVisualr::ColorFormat < ::GoogleVisualr::Formatter
  # @return [ColorFormat] a new instance of ColorFormat
  #
  # source://google_visualr//lib/google_visualr/formatters.rb#47
  def initialize; end

  # source://google_visualr//lib/google_visualr/formatters.rb#56
  def add_gradient_range(from, to, color, fromBgColor, toBgColor); end

  # source://google_visualr//lib/google_visualr/formatters.rb#52
  def add_range(from, to, color, bgcolor); end

  # Returns the value of attribute gradient_ranges.
  #
  # source://google_visualr//lib/google_visualr/formatters.rb#45
  def gradient_ranges; end

  # Sets the attribute gradient_ranges
  #
  # @param value the value to set the attribute gradient_ranges to.
  #
  # source://google_visualr//lib/google_visualr/formatters.rb#45
  def gradient_ranges=(_arg0); end

  # Returns the value of attribute ranges.
  #
  # source://google_visualr//lib/google_visualr/formatters.rb#44
  def ranges; end

  # Sets the attribute ranges
  #
  # @param value the value to set the attribute ranges to.
  #
  # source://google_visualr//lib/google_visualr/formatters.rb#44
  def ranges=(_arg0); end

  # source://google_visualr//lib/google_visualr/formatters.rb#60
  def to_js; end
end

# source://google_visualr//lib/google_visualr/data_table.rb#3
class GoogleVisualr::DataTable
  # Constructors
  #
  #
  # GoogleVisualr::DataTable.new
  # Creates an empty data_table instance. Use new_column/s, add_row/s and set_cell methods to populate the data_table.
  #
  # GoogleVisualr::DataTable.new(data_object)
  # Creates a data_table by passing a JavaScript-string-literal like data object into the data parameter. This object can contain formatting options.
  #
  #
  # Syntax Description of a Data Object
  #
  #
  # The data object consists of two required top-level properties, cols and rows.
  #
  # * cols property
  #
  #   cols is an array of objects describing the ID and type of each column. Each property is an object with the following properties (case-sensitive):
  #
  #   * type            [Required] The data type of the data in the column. Supports the following string values:
  #     - 'string'    : String value. Example values: v:'foo', :v:'bar'
  #     - 'number'    : Number value. Example values: v:7, v:3.14, v:-55
  #     - 'boolean'   : Boolean value ('true' or 'false'). Example values: v:true, v:false
  #     - 'date'      : Date object, with the time truncated. Example value: v:Date.parse('2010-01-01')
  #     - 'datetime'  : DateTime/Time object, time inclusive. Example value: v:DateTime.parse('2010-01-01 14:20:25')
  #     - 'timeofday' : Array of 3 numbers or 4 numbers, [Hour,Minute,Second,(Optional) Milliseconds]. Example value: v:[8, 15, 0]
  #   * label           [Optional] A string value that some visualizations display for this column. Example: label:'Height'
  #   * id              [Optional] A unique (basic alphanumeric) string ID of the column. Be careful not to choose a JavaScript keyword. Example: id:'col_1'
  #
  # * rows property
  #
  #   The rows property holds an array of row objects. Each row object has one required property called c, which is an array of cells in that row.
  #
  #   Each cell in the table is described by an object with the following properties:
  #
  #   * v               [Optional] The cell value. The data type should match the column data type.
  #   * f               [Optional] A string version of the v value, formatted strictly for display only. If omitted, a string version of v will be used.
  #   * p               [Optional] An object that is a map of custom values applied to the cell. Example: :p => { :style => 'border: 1px solid green;' }.
  #
  #   Cells in the row array should be in the same order as their column descriptions in cols.
  #
  #   To indicate a null cell, you can either specify null, or set empty string for a cell in an array, or omit trailing array members.
  #   So, to indicate a row with null for the first two cells, you could specify [ '', '', {cell_val}] or [null, null, {cell_val}].
  #
  # @return [DataTable] a new instance of DataTable
  #
  # source://google_visualr//lib/google_visualr/data_table.rb#52
  def initialize(options = T.unsafe(nil)); end

  # Adds a new row to the data_table.
  # Call method without any parameters to add an empty row, otherwise, call method with a row object.
  #
  # Parameters:
  #   * row             [Optional] An array of cell values specifying the data for the new row.
  #     - You can specify a value for a cell (e.g. 'hi') or specify a formatted value using cell objects (e.g. {v:55, f:'Fifty-five'}) as described in the constructor section.
  #     - You can mix simple values and cell objects in the same method call.
  #     - To create an empty cell, use nil or empty string.
  #
  # source://google_visualr//lib/google_visualr/data_table.rb#127
  def add_row(row_values = T.unsafe(nil)); end

  # Adds multiple rows to the data_table. You can call this method with data to populate a set of new rows or create new empty rows.
  #
  # Parameters:
  #   * array_or_num    [Required] Either an array or a number.
  #     - Array: An array of row objects used to populate a set of new rows. Each row is an object as described in add_row().
  #     - Number: A number specifying the number of new empty rows to create.
  #
  # source://google_visualr//lib/google_visualr/data_table.rb#142
  def add_rows(array_or_num); end

  # Returns the value of attribute cols.
  #
  # source://google_visualr//lib/google_visualr/data_table.rb#5
  def cols; end

  # Sets the attribute cols
  #
  # @param value the value to set the attribute cols to.
  #
  # source://google_visualr//lib/google_visualr/data_table.rb#5
  def cols=(_arg0); end

  # Applies one or more formatters to the data_table to format the columns as specified by the formatter/s.
  #
  # Parameters:
  #   * formatter/s     [Required] One, or an array of formatters.
  #
  # source://google_visualr//lib/google_visualr/data_table.rb#197
  def format(*formatters); end

  # Gets a cell value from the visualization, at row_index, column_index. row_index and column_index start from 0.
  #
  # Parameters:
  #   * row_index       [Required] row_index starts from 0.
  #   * column_index    [Required] column_index starts from 0.
  #
  # source://google_visualr//lib/google_visualr/data_table.rb#185
  def get_cell(row_index, column_index); end

  # Gets a column of cell values from the data_table, at column_index. column_index starts from 0.
  #
  # Parameters
  #   * column_index    [Required] The column to retrieve column values. column_index starts from 0.
  #
  # source://google_visualr//lib/google_visualr/data_table.rb#115
  def get_column(column_index); end

  # Gets a row of cell values from the data_table, at row_index. row_index starts from 0.
  #
  # Parameters
  #   * row_index       [Required] The row to retrieve row values. row_index starts from 0.
  #
  # source://google_visualr//lib/google_visualr/data_table.rb#158
  def get_row(row_index); end

  # Adds a new column to the data_table.
  # Experimental support for role (and pattern): http://code.google.com/apis/chart/interactive/docs/roles.html.
  #
  # Parameters:
  #   * type            [Required] The data type of the data in the column. Supports the following string values:
  #     - 'string'    : String value. Example values: v:'hello'
  #     - 'number'    : Number value. Example values: v:7 , v:3.14, v:-55
  #     - 'date'      : Date object, with the time truncated. Example values: v:Date.parse('2010-01-01')
  #     - 'datetime'  : Date object including the time. Example values: v:Date.parse('2010-01-01 14:20:25')
  #     - 'boolean'   : Boolean value ('true' or 'false'). Example values: v: true
  #   * label           [Optional] A string value that some visualizations display for this column. Example: label:'Height'
  #   * id              [Optional] A unique (basic alphanumeric) string ID of the column. Be careful not to choose a JavaScript keyword. Example: id:'col_1'
  #   * role            [Optional] A string value that describes the purpose of the data in that column. Example, a column might hold data describing tooltip text, data point annotations, or uncertainty indicators.
  #   * pattern         [Optional] A number (or date) format string specifying how to display the column value; used in conjunction with role.
  #
  # source://google_visualr//lib/google_visualr/data_table.rb#81
  def new_column(type, label = T.unsafe(nil), id = T.unsafe(nil), role = T.unsafe(nil), pattern = T.unsafe(nil)); end

  # Adds multiple columns to the data_table.
  #
  # Parameters:
  #   * columns         [Required] An array of column objects {:type, :label, :id, :role, :pattern}. Calls new_column for each column object.
  #
  # source://google_visualr//lib/google_visualr/data_table.rb#90
  def new_columns(columns); end

  # Returns the value of attribute rows.
  #
  # source://google_visualr//lib/google_visualr/data_table.rb#6
  def rows; end

  # Sets the attribute rows
  #
  # @param value the value to set the attribute rows to.
  #
  # source://google_visualr//lib/google_visualr/data_table.rb#6
  def rows=(_arg0); end

  # Sets the value (and formatted value) of a cell.
  #
  # Parameters:
  #   * row_index       [Required] A number greater than or equal to zero, but smaller than the total number of rows.
  #   * column_index    [Required] A number greater than or equal to zero, but smaller than the total number of columns.
  #   * value           [Required] The cell value.
  #                       The data type should match the column data type.
  #                       You can specify a value for a cell (e.g. 'hi').
  #                       Or specify a formatted value using cell objects (e.g. {v:55, f:'Fifty-five'}).
  #
  # source://google_visualr//lib/google_visualr/data_table.rb#171
  def set_cell(row_index, column_index, value); end

  # Sets a column in data_table, specified by column_index with an array of column_values. column_index starts from 0.
  #
  # Parameters
  #   * column_index    [Required] The column to assign column_values. column_index starts from 0.
  #   * column_values   [Required] An array of cell values.
  #
  # source://google_visualr//lib/google_visualr/data_table.rb#101
  def set_column(column_index, column_values); end

  # Returns the JavaScript equivalent for this data_table instance.
  #
  # source://google_visualr//lib/google_visualr/data_table.rb#203
  def to_js; end

  private

  # source://google_visualr//lib/google_visualr/data_table.rb#233
  def verify_against_column_type(type, value); end

  # @return [Boolean]
  #
  # source://google_visualr//lib/google_visualr/data_table.rb#229
  def within_range?(row_index, column_index); end
end

# source://google_visualr//lib/google_visualr/data_table.rb#252
class GoogleVisualr::DataTable::Cell
  include ::GoogleVisualr::ParamHelpers

  # @return [Cell] a new instance of Cell
  #
  # source://google_visualr//lib/google_visualr/data_table.rb#259
  def initialize(*args); end

  # formatted
  #
  # source://google_visualr//lib/google_visualr/data_table.rb#256
  def f; end

  # formatted
  #
  # source://google_visualr//lib/google_visualr/data_table.rb#256
  def f=(_arg0); end

  # properties
  #
  # source://google_visualr//lib/google_visualr/data_table.rb#257
  def p; end

  # properties
  #
  # source://google_visualr//lib/google_visualr/data_table.rb#257
  def p=(_arg0); end

  # source://google_visualr//lib/google_visualr/data_table.rb#271
  def to_js; end

  # value
  #
  # source://google_visualr//lib/google_visualr/data_table.rb#255
  def v; end

  # value
  #
  # source://google_visualr//lib/google_visualr/data_table.rb#255
  def v=(_arg0); end
end

# source://google_visualr//lib/google_visualr/formatters.rb#72
class GoogleVisualr::DateFormat < ::GoogleVisualr::Formatter; end

# http://code.google.com/apis/chart/interactive/docs/reference.html#formatters
#
# source://google_visualr//lib/google_visualr/formatters.rb#4
class GoogleVisualr::Formatter
  include ::GoogleVisualr::ParamHelpers

  # @return [Formatter] a new instance of Formatter
  #
  # source://google_visualr//lib/google_visualr/formatters.rb#7
  def initialize(options = T.unsafe(nil)); end

  # source://google_visualr//lib/google_visualr/formatters.rb#12
  def columns(*columns); end

  # source://google_visualr//lib/google_visualr/formatters.rb#16
  def options(*options); end

  # @yield [js]
  #
  # source://google_visualr//lib/google_visualr/formatters.rb#20
  def to_js(&block); end
end

# source://google_visualr//lib/google_visualr/image/spark_line.rb#2
module GoogleVisualr::Image; end

# http://code.google.com/apis/chart/interactive/docs/gallery/imagebarchart.html
#
# source://google_visualr//lib/google_visualr/image/bar_chart.rb#5
class GoogleVisualr::Image::BarChart < ::GoogleVisualr::BaseChart
  include ::GoogleVisualr::Packages::ImageChart

  # Create URI for image bar chart.  Override parameters by passing in a hash.
  # (see http://code.google.com/apis/chart/image/docs/chart_params.html)
  #
  # Parameters:
  #  *params         [Optional] Hash of url query parameters
  #
  # source://google_visualr//lib/google_visualr/image/bar_chart.rb#16
  def uri(params = T.unsafe(nil)); end
end

# http://code.google.com/apis/chart/interactive/docs/gallery/imagelinechart.html
#
# source://google_visualr//lib/google_visualr/image/line_chart.rb#5
class GoogleVisualr::Image::LineChart < ::GoogleVisualr::BaseChart
  include ::GoogleVisualr::Packages::ImageChart

  # Create URI for image line chart. Override parameters by passing in a hash.
  # (see http://code.google.com/apis/chart/image/docs/chart_params.html)
  #
  # Parameters:
  #  *params         [Optional] Hash of url query parameters
  #
  # source://google_visualr//lib/google_visualr/image/line_chart.rb#16
  def uri(params = T.unsafe(nil)); end
end

# http://code.google.com/apis/chart/interactive/docs/gallery/imagepiechart.html
#
# source://google_visualr//lib/google_visualr/image/pie_chart.rb#5
class GoogleVisualr::Image::PieChart < ::GoogleVisualr::BaseChart
  include ::GoogleVisualr::Packages::ImageChart

  # Create URI for image pie chart.  Override parameters by passing in a hash.
  # (see http://code.google.com/apis/chart/image/docs/chart_params.html)
  #
  # Parameters:
  #  *params         [Optional] Hash of url query parameters
  #
  # source://google_visualr//lib/google_visualr/image/pie_chart.rb#16
  def uri(params = T.unsafe(nil)); end
end

# http://code.google.com/apis/chart/interactive/docs/gallery/imagesparkline.html
#
# source://google_visualr//lib/google_visualr/image/spark_line.rb#5
class GoogleVisualr::Image::SparkLine < ::GoogleVisualr::BaseChart
  include ::GoogleVisualr::Packages::ImageChart

  # Create URI for sparkline. Override parameters by passing in a hash.
  # (see http://code.google.com/apis/chart/image/docs/chart_params.html)
  #
  # Parameters:
  #  *params         [Optional] Hash of url query parameters
  #
  # source://google_visualr//lib/google_visualr/image/spark_line.rb#16
  def uri(params = T.unsafe(nil)); end
end

# source://google_visualr//lib/google_visualr/interactive/area_chart.rb#2
module GoogleVisualr::Interactive; end

# http://code.google.com/apis/chart/interactive/docs/gallery/annotatedtimeline.html
#
# source://google_visualr//lib/google_visualr/interactive/annotated_time_line.rb#5
class GoogleVisualr::Interactive::AnnotatedTimeLine < ::GoogleVisualr::BaseChart; end

# http://code.google.com/apis/chart/interactive/docs/gallery/areachart.html
#
# source://google_visualr//lib/google_visualr/interactive/area_chart.rb#5
class GoogleVisualr::Interactive::AreaChart < ::GoogleVisualr::BaseChart
  include ::GoogleVisualr::Packages::CoreChart
end

# http://code.google.com/apis/chart/interactive/docs/gallery/barchart.html
#
# source://google_visualr//lib/google_visualr/interactive/bar_chart.rb#5
class GoogleVisualr::Interactive::BarChart < ::GoogleVisualr::BaseChart
  include ::GoogleVisualr::Packages::CoreChart
end

# https://developers.google.com/chart/interactive/docs/gallery/bubblechart
#
# source://google_visualr//lib/google_visualr/interactive/bubble_chart.rb#5
class GoogleVisualr::Interactive::BubbleChart < ::GoogleVisualr::BaseChart
  include ::GoogleVisualr::Packages::CoreChart
end

# http://code.google.com/apis/chart/interactive/docs/gallery/candlestickchart.html
#
# source://google_visualr//lib/google_visualr/interactive/candlestick_chart.rb#5
class GoogleVisualr::Interactive::CandlestickChart < ::GoogleVisualr::BaseChart
  include ::GoogleVisualr::Packages::CoreChart
end

# http://code.google.com/apis/chart/interactive/docs/gallery/columnchart.html
#
# source://google_visualr//lib/google_visualr/interactive/column_chart.rb#5
class GoogleVisualr::Interactive::ColumnChart < ::GoogleVisualr::BaseChart
  include ::GoogleVisualr::Packages::CoreChart
end

# http://code.google.com/apis/chart/interactive/docs/gallery/combochart.html
#
# source://google_visualr//lib/google_visualr/interactive/combo_chart.rb#5
class GoogleVisualr::Interactive::ComboChart < ::GoogleVisualr::BaseChart
  include ::GoogleVisualr::Packages::CoreChart
end

# http://code.google.com/apis/chart/interactive/docs/gallery/gauge.html
#
# source://google_visualr//lib/google_visualr/interactive/gauge.rb#5
class GoogleVisualr::Interactive::Gauge < ::GoogleVisualr::BaseChart; end

# http://code.google.com/apis/chart/interactive/docs/gallery/geochart.html
#
# source://google_visualr//lib/google_visualr/interactive/geo_chart.rb#5
class GoogleVisualr::Interactive::GeoChart < ::GoogleVisualr::BaseChart; end

# http://code.google.com/apis/chart/interactive/docs/gallery/geomap.html
#
# source://google_visualr//lib/google_visualr/interactive/geo_map.rb#5
class GoogleVisualr::Interactive::GeoMap < ::GoogleVisualr::BaseChart; end

# http://code.google.com/apis/chart/interactive/docs/gallery/intensitymap.html
#
# source://google_visualr//lib/google_visualr/interactive/intensity_map.rb#5
class GoogleVisualr::Interactive::IntensityMap < ::GoogleVisualr::BaseChart; end

# http://code.google.com/apis/chart/interactive/docs/gallery/linechart.html
#
# source://google_visualr//lib/google_visualr/interactive/line_chart.rb#5
class GoogleVisualr::Interactive::LineChart < ::GoogleVisualr::BaseChart
  include ::GoogleVisualr::Packages::CoreChart
end

# http://code.google.com/apis/chart/interactive/docs/gallery/map.html
#
# source://google_visualr//lib/google_visualr/interactive/map.rb#5
class GoogleVisualr::Interactive::Map < ::GoogleVisualr::BaseChart; end

# http://code.google.com/apis/chart/interactive/docs/gallery/motionchart.html
#
# source://google_visualr//lib/google_visualr/interactive/motion_chart.rb#5
class GoogleVisualr::Interactive::MotionChart < ::GoogleVisualr::BaseChart; end

# http://code.google.com/apis/chart/interactive/docs/gallery/orgchart.html
#
# source://google_visualr//lib/google_visualr/interactive/org_chart.rb#5
class GoogleVisualr::Interactive::OrgChart < ::GoogleVisualr::BaseChart; end

# http://code.google.com/apis/chart/interactive/docs/gallery/piechart.html
#
# source://google_visualr//lib/google_visualr/interactive/pie_chart.rb#5
class GoogleVisualr::Interactive::PieChart < ::GoogleVisualr::BaseChart
  include ::GoogleVisualr::Packages::CoreChart
end

# http://code.google.com/apis/chart/interactive/docs/gallery/scatterchart.html
#
# source://google_visualr//lib/google_visualr/interactive/scatter_chart.rb#5
class GoogleVisualr::Interactive::ScatterChart < ::GoogleVisualr::BaseChart
  include ::GoogleVisualr::Packages::CoreChart
end

# https://developers.google.com/chart/interactive/docs/gallery/steppedareachart
#
# source://google_visualr//lib/google_visualr/interactive/stepped_area_chart.rb#5
class GoogleVisualr::Interactive::SteppedAreaChart < ::GoogleVisualr::BaseChart
  include ::GoogleVisualr::Packages::CoreChart
end

# http://code.google.com/apis/chart/interactive/docs/gallery/table.html
#
# source://google_visualr//lib/google_visualr/interactive/table.rb#5
class GoogleVisualr::Interactive::Table < ::GoogleVisualr::BaseChart; end

# http://code.google.com/apis/chart/interactive/docs/gallery/treemap.html
#
# source://google_visualr//lib/google_visualr/interactive/tree_map.rb#5
class GoogleVisualr::Interactive::TreeMap < ::GoogleVisualr::BaseChart; end

# source://google_visualr//lib/google_visualr/formatters.rb#75
class GoogleVisualr::NumberFormat < ::GoogleVisualr::Formatter; end

# source://google_visualr//lib/google_visualr/packages.rb#3
module GoogleVisualr::Packages
  # source://google_visualr//lib/google_visualr/packages.rb#9
  def class_name; end

  # source://google_visualr//lib/google_visualr/packages.rb#5
  def package_name; end
end

# source://google_visualr//lib/google_visualr/packages.rb#13
module GoogleVisualr::Packages::CoreChart
  # source://google_visualr//lib/google_visualr/packages.rb#14
  def package_name; end
end

# source://google_visualr//lib/google_visualr/packages.rb#19
module GoogleVisualr::Packages::ImageChart
  include ::GoogleVisualr::ParamHelpers

  # Generates HTTP GET URL for the chart image
  #
  # Parameters:
  #  *opts         [Optional] Hash of standard chart options (see http://code.google.com/apis/chart/image/docs/chart_params.html)
  #
  # source://google_visualr//lib/google_visualr/packages.rb#43
  def chart_image_url(superseding_params = T.unsafe(nil)); end

  # source://google_visualr//lib/google_visualr/packages.rb#25
  def class_name; end

  # source://google_visualr//lib/google_visualr/packages.rb#22
  def package_name; end
end

# Set defaults according to http://code.google.com/apis/chart/interactive/docs/gallery/genericimagechart.html#Configuration_Options
#
# source://google_visualr//lib/google_visualr/packages.rb#30
GoogleVisualr::Packages::ImageChart::IMAGE_DEFAULTS = T.let(T.unsafe(nil), Hash)

# source://google_visualr//lib/google_visualr/param_helpers.rb#3
module GoogleVisualr::ParamHelpers
  # source://google_visualr//lib/google_visualr/param_helpers.rb#12
  def js_parameters(options); end

  # source://google_visualr//lib/google_visualr/param_helpers.rb#5
  def stringify_keys!(options); end

  # If the column type is 'string'    , the value should be a string.
  # If the column type is 'number'    , the value should be a number.
  # If the column type is 'boolean'   , the value should be a boolean.
  # If the column type is 'date'      , the value should be a Date object.
  # If the column type is 'datetime'  , the value should be a DateTime or Time object.
  # If the column type is 'timeofday' , the value should be an array of three or four numbers: [hour, minute, second, optional milliseconds].
  # Returns an array of strings if given an array
  # Returns 'null' when value is nil.
  # Recursive typecasting when value is a hash.
  #
  # source://google_visualr//lib/google_visualr/param_helpers.rb#28
  def typecast(value); end
end

# source://google_visualr//lib/google_visualr/app/helpers/view_helper.rb#3
module GoogleVisualr::Rails; end

# source://google_visualr//lib/google_visualr/app/railtie.rb#7
class GoogleVisualr::Rails::Railtie < ::Rails::Railtie; end

# source://google_visualr//lib/google_visualr/app/helpers/view_helper.rb#5
module GoogleVisualr::Rails::ViewHelper
  extend ::ActiveSupport::Concern

  # source://google_visualr//lib/google_visualr/app/helpers/view_helper.rb#13
  def render_chart(chart, dom); end
end
