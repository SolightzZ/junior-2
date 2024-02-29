scoreboard objectives add end_delay dummy
scoreboard objectives add loop_wither dummy
scoreboard objectives add loop_dragon dummy
scoreboard objectives add loop_warden dummy
scoreboard objectives add loop_elder_guardian dummy
execute as @a[tag=!in_end] at @s in the_end if entity @s[r=2] run scoreboard players set @s end_delay 601
execute as @a[tag=!in_end] at @s in the_end if entity @s[r=2] run tag @s add in_end
execute as @a[tag=in_end] at @s in overworld if entity @s[r=2] run tag @s remove in_end
stopsound @a[scores={end_delay=2..}] dragonbossmusic
stopsound @a[scores={end_delay=2..}] witherbossmusic
stopsound @a[scores={end_delay=2..}] wardenbossmusic
stopsound @a[scores={end_delay=2..}] elder_guardianbossmusic
scoreboard players remove @a[scores={end_delay=1..}] end_delay 1
scoreboard players set @a[scores={end_delay=1}] loop_dragon 0
scoreboard players set @a[scores={end_delay=1}] loop_wither 0
execute as @a[tag=!neardragon] at @s if entity @e[type=ender_dragon,r=300] run scoreboard players set @s loop_dragon 0
execute as @a[tag=!neardragon] at @s if entity @e[type=ender_dragon,r=300] run tag @s add neardragon
playsound dragonbossmusic @a[tag=neardragon,scores={loop_dragon=0}] ~~~ 0.5 1 0.5
scoreboard players add @a[tag=neardragon] loop_dragon 1
scoreboard players set @a[scores={loop_dragon=2767..}] loop_dragon 0
stopsound @a[tag=!neardragon] dragonbossmusic
execute as @a[tag=neardragon] at @s unless entity @e[type=ender_dragon,r=300] run tag @s remove neardragon
execute as @a[tag=!nearwither] at @s if entity @e[type=wither,r=100] run scoreboard players set @s loop_wither 0
execute as @a[tag=!nearwither] at @s if entity @e[type=wither,r=100] run tag @s add nearwither
playsound witherbossmusic @a[tag=nearwither,scores={loop_wither=0},tag=!neardragon] ~~~ 0.25 1 0.25
scoreboard players add @a[tag=nearwither] loop_wither 1
scoreboard players set @a[scores={loop_wither=2038..}] loop_wither 0
stopsound @a[tag=!nearwither] witherbossmusic
execute as @a[tag=nearwither] at @s unless entity @e[type=wither,r=100] run tag @s remove nearwither
stopsound @a[tag=neardragon] witherbossmusic
execute as @a[tag=!nearwarden] at @s if entity @e[type=warden,r=100] run scoreboard players set @s loop_warden 0
execute as @a[tag=!nearwarden] at @s if entity @e[type=warden,r=100] run tag @s add nearwarden
playsound wardenbossmusic @a[tag=nearwarden,scores={loop_warden=0},tag=!neardragon,tag=!nearwither] ~~~ 0.35 1 0.35
scoreboard players add @a[tag=nearwarden] loop_warden 1
scoreboard players set @a[scores={loop_warden=3720..}] loop_warden 0
stopsound @a[tag=!nearwarden] wardenbossmusic
execute as @a[tag=nearwarden] at @s unless entity @e[type=warden,r=100] run tag @s remove nearwarden
stopsound @a[tag=neardragon] wardenbossmusic
stopsound @a[tag=nearwither] wardenbossmusic
execute as @a[tag=!nearelder_guardian] at @s if entity @e[type=elder_guardian,r=50] run scoreboard players set @s loop_elder_guardian 0
execute as @a[tag=!nearelder_guardian] at @s if entity @e[type=elder_guardian,r=50] run tag @s add nearelder_guardian
playsound elder_guardianbossmusic @a[tag=nearelder_guardian,scores={loop_elder_guardian=0},tag=!neardragon,tag=!nearwither,tag=!nearwarden] ~~~ 0.25 1 0.25
scoreboard players add @a[tag=nearelder_guardian] loop_elder_guardian 1
scoreboard players set @a[scores={loop_elder_guardian=3820..}] loop_elder_guardian 0
stopsound @a[tag=!nearelder_guardian] elder_guardianbossmusic
execute as @a[tag=nearelder_guardian] at @s unless entity @e[type=elder_guardian,r=50] run tag @s remove nearelder_guardian
stopsound @a[tag=neardragon] elder_guardianbossmusic
stopsound @a[tag=nearwither] elder_guardianbossmusic
stopsound @a[tag=nearwarden] elder_guardianbossmusic