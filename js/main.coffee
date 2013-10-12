$ ->
  fragment = document.createDocumentFragment()
  [1..10].forEach ->
    row = document.createElement('div')
    row.className = 'row'

    [1..10].forEach ->
      div = document.createElement('div')
      div.className = 'cell'
      row.appendChild(div)
    fragment.appendChild(row)

  document.getElementById('grids').appendChild(fragment)

  $('#grids').on click: ->
    $(this).toggleClass 'clicked'
    $('#coords').val find_col(this)
  , '.cell'

find_col = (cell) ->
  row = $(cell).parent('.row')
  map = row.parent('#grids')

  for child, i in row.children()
    if child == cell
      x = i
      break

  for child, i in map.children('')
    if child == row[0]
      y = i
      break

  return [y,x]

grid_size = () -> 10
