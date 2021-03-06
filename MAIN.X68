; =============================================================================
; TITLE    : BOMBERMAN 
; AUTHORS  : GIAN LUCAS MART�N & TOM�S BORDOY
; CREATION : 2-DEC-2018
; =============================================================================

            ORG     $1000

; --- CODE INCLUDES -----------------------------------------------------------

            INCLUDE "SYSCONST.X68"          ; SYSTEM CONSTANTS
            INCLUDE "SYSTEM.X68"            ; SYSTEM CODE
            ; TO DO: PUT YOUR GAME-RELATED INCLUDES HERE
            INCLUDE "CONST.X68"             ; USER CONSTANTS
            INCLUDE "UTIL.X68"              ; UTILITY MACRO AND SUBROUTINES
            INCLUDE "GENERAL.X68"           ; GENERAL PURPOSE, GAME RELATED
            INCLUDE "GFX.X68"               ; GRAPHICS MANAGEMENT
            INCLUDE "MAP.X68"               ; MAP MANAGEMENT
            INCLUDE "AGENT.X68"             ; AGENT MANAGEMENT
            INCLUDE "PLAYER.X68"            ; PLAYER MANAGEMENT
            INCLUDE "ENEMY.X68"             ; ENEMY MANAGEMENT
            INCLUDE "BOMB.X68"              ; BOMB MANAGEMENT
            INCLUDE "GOVER.X68"             ; GAME OVER MANAGEMENT
            INCLUDE "INTRO.X68"             ; INTRO MANAGEMENT
            INCLUDE "VICTORY.X68"           ; VICTORY MANAGEMENT
            INCLUDE "STATES.X68"            ; GAME STATES MANAGEMENT
            INCLUDE "AGENTLST.X68"          ; AGENT LIST MANAGEMENT

; --- DATA INCLUDES -----------------------------------------------------------

            INCLUDE "DATA/GFXDATA.X68"      ; GRAPHICS DATA
            INCLUDE "DATA/MAPDATA.X68"      ; MAP DATA
            INCLUDE "DATA/STRDATA.X68"      ; STRING DATA
            
; --- INITIALIZE --------------------------------------------------------------

START       JSR     SYSINIT                 ; INITIALIZE SYSTEM CODE
            JSR     STAINIT                 ; INITIALIZE GAME STATE
            ; TO DO: CALL GAME INITIALIZATION CODE HERE
            
; --- UPDATE ------------------------------------------------------------------
            
.LOOP       TRAP    #KBDTRAP                ; READ KEYBOARD
            JSR     STAUPD                  ; UPDATE DEPENDING ON THE STATE
            ; TO DO: CALL GAME UPDATE CODE HERE

; --- WAIT SYNCH --------------------------------------------------------------

.WINT       TST.B   (SCRINTCT)              ; WAIT FOR INTERRUPT
            BEQ     .WINT
            CLR.B   (SCRINTCT)

; --- PLOT --------------------------------------------------------------------

            ; TO DO: CALL GAME PLOT CODE HERE
            JSR     STAPLOT                 ; PLOT DEPENDING ON THE STATE
            TRAP    #SCRTRAP                ; SHOW GRAPHICS
            BRA     .LOOP
            SIMHALT

; --- VARIABLES ---------------------------------------------------------------

            INCLUDE "SYSVAR.X68"            ; SYSTEM VARIABLES
            INCLUDE "VAR.X68"               ; GAME VARIABLES
            END    START















*~Font name~Courier New~
*~Font size~10~
*~Tab type~0~
*~Tab size~4~
