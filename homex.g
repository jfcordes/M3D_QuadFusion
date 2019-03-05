; homex.g
; called to home the X axis
;
; generated by RepRapFirmware Configuration Tool on Thu Jun 14 2018 11:41:54 GMT-0400 (Eastern Daylight Time)
G91               ; relative positioning
G1 Z10 F6000 S2    ; lift Z relative to current position
G1 S1 X-305 F6000 ; move quickly to X axis endstop and stop there (first pass)
G1 X5 F6000       ; go back a few mm
G1 S1 X-15 F360  ; move slowly to X axis endstop once more (second pass)
G1 Z-5 F6000 S2   ; lower Z again
G90               ; absolute positioning
G1 X15		  ; move to edge of bed
G92 X0		  ; set edge of bed to X0