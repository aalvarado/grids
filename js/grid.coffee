class Grid
  @_first_index = 1
  @_default_element_name = 'div'
  @_row_css_class = 'row'
  @_cell_css_class = 'cell'

  constructor: (@document, @size) ->

  build_grid: ->
    _fragment.appendChild _rows

  _rows: ->
    __rows = _grid_range.map(i) -> _create_div @_row_css_class
    for row in __rows
      do (row) ->
        row.appendChild _cells

  _cells: ->
    _grid_range.map(i) -> _create_div @_cell_css_class


  _create_div: (css_class) ->
    e = @document.createElement @_default_element_name
    e.className = css_class

  _fragment: ->
    @document.createDocumentFragment

  _grid_range: ->
    [@_first_index..@size]
