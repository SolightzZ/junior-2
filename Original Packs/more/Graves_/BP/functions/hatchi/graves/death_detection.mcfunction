tag @a add dead
tag @e[type=player] remove dead
execute as @a[tag=dead, tag=!already_dead] at @s run function hatchi/graves/death_detection_4
tag @a[tag=dead, tag=!already_dead] add already_dead
tag @a[tag=!dead, tag=already_dead] remove already_dead