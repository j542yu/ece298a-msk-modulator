set project [file rootname [lindex $argv end]]
load $project.mag
select top cell
extract all
antennacheck debug
antennacheck
