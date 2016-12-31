$(document).on('turbolinks:load', function() {
  $('.search-button').click(function(event) {
    event.preventDefault()
    var search_input = $('.search-homes').val()
    console.log(search_input)
    $.ajax({
      url: '/tweets',
      data: { search: search_input},
      dataType: 'script'
    })
  })
})
