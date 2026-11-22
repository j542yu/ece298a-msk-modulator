set project [file rootname [lindex $argv end]]
load $project
gds write ../gds/$project.gds
lef write ../lef/$project.lef -pinonly -hide
