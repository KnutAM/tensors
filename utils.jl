function hfun_bar(vname)
  val = Meta.parse(vname[1])
  return round(sqrt(val), digits=2)
end

function hfun_m1fill(vname)
  var = vname[1]
  return pagevar("index", var)
end

function hfun_menuitem(input_strings)
  page = input_strings[1]
  parent = input_strings[2:3]
  childs = ((input_strings[i-1], input_strings[i]) for i=5:2:length(input_strings))
  return _menuitem(page, parent, childs...)
end

function _menuitem(page, parent, childs...)

  html_code = "<li class=\"menu-list-parent {{ispage $(parent[1])/*}}active{{end}}\"><a href=\"/$(parent[1])/\" class=\"menu-list-link {{ispage $(parent[1])}}active{{end}}\">$(parent[2])</a>\n"
  html_code *= "<ul class=\"menu-list-child-list \">\n"
  for child in childs
    html_code *= "<li class=\"menu-list-item {{ispage $(parent[1])/$(child[1])}}active{{end}}\"><a href=\"/$(parent[1])/$(child[1])/\" class=\"menu-list-link\">$(child[2])</a>\n"
  end
  html_code *= "</ul>" * "<!-- $page -->"
  return html_code
end


function lx_baz(com, _)
  # keep this first line
  brace_content = Franklin.content(com.braces[1]) # input string
  # do whatever you want here
  return uppercase(brace_content)
end

