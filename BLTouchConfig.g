; Configuration file for BL-Touch on Duet Maestro (firmware version 2.02RC2 or newer)
; executed by the firmware on start-up
; Created by James F Cordes, Jr. 2/13/2019
; For Crane Quad
;
;Sindarius - BL Touch

;This sets the min and max probe points; because the extruder can't go beyond the bed I set a rectangle within the bed to capture points.
;25 touch points for the mesh
M574 Z1 S2
M574 Z0 S2
M557 X35:260 Y35:260 S45 		; define mesh grid and interval for polling

;A # of probes
;P Probe Type = 9 (BL Touch Specific)
M558 P9 H5 F200 T4000

;When you first install your touch and probe you want Z = 0 which will show you the trigger height. 
;Manually bring down the probe using the UI until it just touches the bed. 
;The -Z value to touch the bed will turn to your positive Z offset value in the G31. 
G31 X0 Y30 Z1.518 P25 
;G31 X0 Y0 Z0 P25

