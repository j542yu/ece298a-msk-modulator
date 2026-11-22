set project [file rootname [lindex $argv end]]
load $project.mag
select top cell
drc euclidean on
drc style drc(full)
drc check
set drcresult [drc listall why]
