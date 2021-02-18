Scriptname _CHADD_Script_Player extends ActiveMagicEffect

Actor Property PlayerRef Auto

_CHADD_Script_Quest Script_Quest

Event OnInit()
    Debug.Notification("_CHADD: Script_Player.OnInit()")

    ; find Transmundane - _TIM_Quest "Transmundane Data Manager" [QUST:XX00AA00]
    ;Script_Quest = Game.GetFormFromFile(0x0000AA00, "CHADD_UPL_datalogger.esp") as _CHADD_Script_Quest
    ;if ( Script_Quest )
    ;    Debug.Notification("_TIM: Quest_Data Found")
    ;endif

endEvent