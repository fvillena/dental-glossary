function getAllUrlParams(url) {

  // get query string from url (optional) or window
  var queryString = url ? url.split('?')[1] : window.location.search.slice(1);

  // we'll store the parameters here
  var obj = {};

  // if query string exists
  if (queryString) {

      // stuff after # is not part of query string, so get rid of it
      queryString = queryString.split('#')[0];

      // split our query string into its component parts
      var arr = queryString.split('&');

      for (var i = 0; i < arr.length; i++) {
          // separate the keys and the values
          var a = arr[i].split('=');

          // set parameter name and value (use 'true' if empty)
          var paramName = a[0];
          var paramValue = typeof(a[1]) === 'undefined' ? true : a[1];

          // (optional) keep case consistent
          paramName = paramName.toLowerCase();
          if (typeof paramValue === 'string') paramValue = paramValue.toLowerCase();

          // if the paramName ends with square brackets, e.g. colors[] or colors[2]
          if (paramName.match(/\[(\d+)?\]$/)) {

              // create key if it doesn't exist
              var key = paramName.replace(/\[(\d+)?\]/, '');
              if (!obj[key]) obj[key] = [];

              // if it's an indexed array e.g. colors[2]
              if (paramName.match(/\[\d+\]$/)) {
                  // get the index value and add the entry at the appropriate position
                  var index = /\[(\d+)\]/.exec(paramName)[1];
                  obj[key][index] = paramValue;
              } else {
                  // otherwise add the value to the end of the array
                  obj[key].push(paramValue);
              }
          } else {
              // we're dealing with a string
              if (!obj[paramName]) {
                  // if it doesn't exist, create property
                  obj[paramName] = paramValue;
              } else if (obj[paramName] && typeof obj[paramName] === 'string') {
                  // if property does exist and it's a string, convert it to an array
                  obj[paramName] = [obj[paramName]];
                  obj[paramName].push(paramValue);
              } else {
                  // otherwise add the property
                  obj[paramName].push(paramValue);
              }
          }
      }
  }

  return obj;
}

var anchors = [];
$(document).ready(function() {
  $.ajax({
      url: "api.php",
      data: {
          'action': 'viewTerm',
          'id': id
      },
      type: 'GET',
      success: function(result) {
          $("#category").html("<a href=category.php?id=" + result.category_id + ">" + result.category + "</a>");
          $(".concept").html(result.name);
          $("#description_short").html(result.description_short);
          $("#description_long").html(result.description_long);
          document.title = result.name;
      },
      complete: function() {
        $('#concept-content').find('a').each(function () {
          console.log($(this));
          anchors.push($(this));
        });
    }
  });
  $.ajax({
      url: "api.php",
      data: {
          'action': 'randomTerms',
          'n': 5
      },
      type: 'GET',
      success: function(result) {
          $("#more").html('');
          $.each(result, function(index, value) {
              $("#more").append("<li>" + "<a href=term.php?id=" + value.id + ">" + value.concept + "</a>" + "</li>");
          });
      },
      complete: function() {
          $('#view-more').find('a').each(function () {
            console.log($(this));
            anchors.push($(this));
          });
      }
  });
  $(document).ajaxComplete(function() {

  });

});
// $("a").each(function() {
//   current_id = getAllUrlParams(this.href).id
//   var description_short;
//   if (current_id) {
//       $.ajax({
//           async: false,
//           url: "api.php",
//           data: {
//               'action': 'viewTerm',
//               'id': current_id
//           },
//           type: 'GET',
//           success: function(result) {
//               description_short = result.description_short;
//           }
//       });
//       console.log(current_id);
//       console.log(description_short);
//       $(this).prop('title', description_short);
//       $(this).attr('data-toggle', 'tooltip');
//   }
// });