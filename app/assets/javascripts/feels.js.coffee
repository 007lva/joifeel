$(document).ready ->
  $("#picture").on "change", ->
    $(this).closest("form").ajaxSubmit
      beforeSubmit: (a, f, o) ->
        o.dataType = "json"
      complete: (XMLHttpRequest, status) ->
        picture = JSON.parse(XMLHttpRequest.responseText)
        console.log picture.picture_url.picture.url
        $("#feel_image_url").val(picture.picture_url.picture.url)
