###
$(document).on 'nested:fieldAdded', (event) ->
  # this field was just inserted into your form
  field = event.field
  # it's a jQuery object already! Now you can find date input
  ##kindeiitor_field = field.find('.kindeditor')
  # and activate on it
  KindEditor.create('.kindeditor')

$(document).on 'page:load', ->
  if $(".kindeditor_area").length > 0
    KindEditor.create ".kindeditor_area",
      width: "50%"
###

@load_kindeditor = () ->
  KindEditor.create ".kindeditor_area",
    width: "100%",
    allowFileManager: true,
    uploadJson: "/kindeditor/upload",
    fileManagerJson: "/kindeditor/filemanager",
    items: ["formatblock", "fontname", "fontsize","|","bold","italic","underline","strikethrough","forecolor","hilitecolor","lineheight","removeformat","|","insertorderedlist","insertunorderedlist","indent","outdent","justifyleft","justifycenter","justifyright","justifyfull","clearhtml","quickformat","|","emoticons","image","insertfile","table","hr","link","unlink","|","preview","fullscreen"]
