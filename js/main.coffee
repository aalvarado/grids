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
  , '.cell'

grid_size = () -> 10


