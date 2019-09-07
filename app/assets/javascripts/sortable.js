let urlPath = () => {
  let path = `${window.location.pathname}`;

  if (path == '/services') {
    return '/service_sections/sort';
  } else if (path == '/all-services') {
    return '/services/sort';
  }  else {
    return '/abouts/sort'
  } 
}

(function() {
  var ready, set_positions;

  ready = void 0;

  set_positions = void 0;

  set_positions = function() {
    $('.card').each(function(i) {
      $(this).attr('data-pos', i + 1);
    });
  };

  ready = function() {
    set_positions();
    $('.sortable').sortable();
    $('.sortable').sortable().bind('sortupdate', function(e, ui) {
      var updated_order;
      updated_order = [];
      set_positions();
      $('.item').each(function(i) {
        updated_order.push({
          id: $(this).data('id'),
          position: i + 1
        });
      });
      $.ajax({
        type: 'PUT',
        url: urlPath(),
        data: {
          order: updated_order
        }
      });
    });
  };

  $(document).ready(ready);

}).call(this);

