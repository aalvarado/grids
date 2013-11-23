class Grids.Grid

  constructor: (@_document, @size) ->
    @_first_index = 1
    @_default_element_name = 'div'
    @_row_css_class = 'row'
    @_cell_css_class = 'cell'

  build_grid: ->
    @_append_children( @_fragment(), @_rows() )

  # private

  _rows: ->
    __rows = @_grid_range().map (i) => @_create_div( @_row_css_class )
    for row in __rows
      do (row) =>
        @_append_children( row, @_cells() )
    __rows

  _cells: ->
    @_grid_range().map (i) => @_create_div( @_cell_css_class )

  _create_div: (css_class) ->
    e = @_document.createElement @_default_element_name
    e.className = css_class
    e

  _fragment: ->
    @_document.createDocumentFragment()

  _append_children: (node, children) ->
    for child in children
      do (child) ->
        node.appendChild(child)
    node

  _grid_range: ->
    grid_size = [@_first_index..@size]
