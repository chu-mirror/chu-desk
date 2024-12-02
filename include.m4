m4_changequote({{, }})m4_dnl
m4_define({{chu_desk_dependencies}}, {{===DEPENDENCIES===}})m4_dnl
m4_define({{chu_desk_add_dep}}, 
    {{m4_define({{chu_desk_dependencies}},
chu_desk_dependencies
$1)m4_dnl}}
)m4_dnl
m4_define({{chu_desk_custom_dependencies}}, {{===CUSTOM-DEPENDENCIES===}})m4_dnl
m4_define({{chu_desk_add_custom_dep}}, 
    {{m4_define({{chu_desk_custom_dependencies}},
chu_desk_custom_dependencies
$1)m4_dnl}}
)m4_dnl
m4_define({{chu_desk_username}}, {{chu}})m4_dnl
m4_dnl
