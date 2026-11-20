set project [file rootname [lindex $argv end]]
load $project.mag
flatten tt_um_flat
load tt_um_flat
select top cell
cellname delete $project
cellname rename tt_um_flat ${project}_no_parax

# Disable parasitic extraction
extract no capacitance
extract no resistance
extract no coupling

# Extract the layout
extract all

# Export to NGSpice format
ext2spice lvs
ext2spice -o ${project}_no_parax.spice
