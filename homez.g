; homez.g
; called to home the Z axis
;Sindarius - BL Touch
;This will move the probe to the center of the bed and set a z height
M98 P0:/macros/BLTouch_Reset
G1 Z15 F6000 S2  ; lift Z relative to current position

G1 X130 Y140 F4000 ; go to center of bed
G30              ; home Z by probing the bed
G90 		 ; absolute positioning
