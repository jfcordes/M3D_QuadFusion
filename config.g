; Configuration file for Duet Maestro (firmware version 1.20 or newer)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool on Thu Jun 14 2018 11:41:53 GMT-0400 (Eastern Daylight Time)

; General preferences
G90                            ; Send absolute coordinates...
M83                            ; ...but relative extruder moves
M555 P1                        ; Set firmware compatibility to look like RepRapFirmare

; --- SECTION: NETWORKS (PROLOGUE & COMMUNCATIONS SECTION) ---

M111 S0 ; Debugging off
M550 PCR-10sQuad; Set machine name, type the_mega.local/
M552 S1 P10.0.1.230 ; Enable network & set IP
M586 P0 S1 ; Enable HTTP
M586 P1 S1 ; Enable FTP
M586 P2 S0 ; Disable Telnet

;Drives
M92 X80 Y80 Z400 E1027:1027:1027:1027        ; Set steps per mm
M566 X900 Y900 Z300 E120        ; Set maximum instantaneous speed changes (mm/min)
M203 X6000 Y6000 Z1200 E300    ; Set maximum speeds (mm/min)
M201 X500 Y500 Z250 E250        ; Set accelerations (mm/s^2)
M906 X750 Y750 Z750 E550 I30   ; Set motor currents (mA) and motor idle factor in per cent
M84 S30                        ; Set idle timeout

;M671 X-29.9:428.2 Y200.0:200.0 S2		   ; Lead screw offsets from home
;M350 X16 Y16 Z16 E16 I1                            ; Configure micro-stepping with interpolation
      
; Axis Limits
M208 X0 Y0 Z-0.5 S1          ; Set axis minimum
M208 X243 Y230 Z415 S0         ; Set axis maximum

;M3D Drive Setttings
M569 P0 S0                     ; Drive 0 (X) goes backwards
M569 P1 S0                     ; Accommodate Drive 1 (Y) sense without changing wiring
M569 P2 S1                     ; Drive 2 (Z) goes forwards
M569 P3 S1                     ; Drive 3 Extruder 0 (E0) goes forwards
M569 P4 S1			;Drive 4 Extruder 1 (E1)
M569 P5 S1			;Drive 5 Extruder 2 (E2)
M569 P6 S1			;Drive 6 Extruder 3 (E3)

M350 E8:8:8:8			;micro-stepping 
M92 X100 Y100 Z400 E980:980:980:980        ; Set steps per mm
;M566 X900 Y900 Z120 E120        ; Set maximum instantaneous speed changes (mm/min)
;M203 X6000 Y6000 Z180 E90    	; Set maximum speeds (mm/min)
M201 X1000 Y1000 Z1000 E250    	; Set accelerations (mm/s^2)
;M906 X750 Y750 Z750 E550 I30   ; Set motor currents (mA) and motor idle factor in per cent
M84 S30                        	; Set idle timeout

; X & Y Endstops
M574 X1 Y1 S0 			; Set active high endstops X home to min. Y home to max. Normally OPEN limit switches.

; Z-Probe
;Call to BL-Touch congiguration file
M98 PBLTouchConfig.g
M574 Z1 S2 			; Define Z to use Probe. Home to Min
M574 Z0 S2                  	; Set endstops controlled by probe
;M558 P9 H5 A1 F100 T5000       ; listed in BLTouchConfig file -- Set Z probe type to unmodulated and the dive height + speeds
;M557 X35:280 Y35:280 S49	; listed in BLTouchConfig file  --Define mesh grid
;G31 X0 Y-39 Z0.6 P25 		; listed in BLTouchConfig file -- Set Z probe trigger value, offset and trigger height

; Heaters
;Bed Heater
M305 P0 T100000 B4138 C0 R2200 ; Set thermistor + ADC parameters for heated bed heater 0
M143 H0 S120                   ; Set temperature limit for heater 0 to 120C

; 1 = nozzle heater
M305 P1 T100000 R2200       	; Set thermistor + ADC parameters for heater 1
;M305 P1 T1050 B4138 C0 R2200 X501  ; M3D config setting for QuadFusion  Set thermistor + ADC 
;M305 P1 T1050 X501 R2200      ; M3D settings for CraneQuadFusion. Set thermistor + ADC parameters for heater 1
M143 H1 S280                   ; Set temperature limit for heater 1 to 280C

; 2 = chamber heater
M305 P2 T100000 R2200 
M143 H2 S90

; Fans
M106 P0 S0.3 I0 F500 H-1       ; Set fan 0 value, PWM signal inversion and frequency. Thermostatic control is turned off
M106 P1 S1 I0 F500 H1 T45      ; Set fan 1 value, PWM signal inversion and frequency. Thermostatic control is turned on
M106 P2 S1 I0 F500 H1 T45      ; Set fan 2 value, PWM signal inversion and frequency. Thermostatic control is turned on

; Tools
M563 P0 D0:1:2:3 H1 F1
M567 P0 E0.25:0.25:0.25:0.25
G10 P0 X0 Y0 Z0
G10 P0 S0

M563 P10 D0 H1 F1                  ; Define tool 0
G10 P10 X0 Y0 Z0                ; Set tool 0 axis offsets
G10 P10 R0 S0                   ; Set initial tool 0 active and standby temperatures to 0C

M563 P11 D1 H1 F1                    ; Define tool 1
G10 P11 X0 Y0 Z0                ; Set tool 1 axis offsets
G10 P11 R0 S0                   ; Set initial tool 1 active and standby temperatures to 0C

M563 P12 D2 H1 F1                   ; Define tool 2
G10 P12 X0 Y0 Z0                ; Set tool 2 axis offsets
G10 P12 R0 S0                   ; Set initial tool 2 active and standby temperatures to 0C

M563 P13 D3 H1 F1                    ; Define tool 3
G10 P13 X0 Y0 Z0                ; Set tool 3 axis offsets
G10 P13 R0 S0                   ; Set initial tool 3 active and standby temperatures to 0C

M563 P20 D0:1:2:3 H1 F1		;Define tool 100 (all)
G10 P20 X0 Y0 Z0
G10 P20 R0 S0

M563 P21 D0:1 H1 F11		;Define tool 101 (0 and 1)
G10 P21 X0 Y0 Z0
G10 P21 R0 S0

M563 P30 D0:1:2:3 H2		;Define tool 200 (0,1,2,3)
G10 P30 X0 Y0 Z0
G10 P30 R0 S0

M918 P1 E4				;Enable menu system
; Automatic saving after power loss is not enabled

; Custom settings are not configured