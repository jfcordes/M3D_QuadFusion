; bed.g
; called to perform automatic bed compensation via G32
;
; generated by RepRapFirmware Configuration Tool on Thu Jun 14 2018 11:41:54 GMT-0400 (Eastern Daylight Time)
M561 ; clear any bed transform
; Probe the bed at 4 points
G30 P0 X15 Y15 H0 Z-99999
G30 P1 X15 Y285 H0 Z-99999
G30 P2 X285 Y285 H0 Z-99999
G30 P3 X285 Y15 H0 Z-99999 S