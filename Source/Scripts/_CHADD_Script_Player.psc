Scriptname _CHADD_Script_Player extends ActiveMagicEffect

Actor Property PlayerRef Auto

_CHADD_Script_Quest Script_Quest

Event OnInit()
    ; Debug.Notification("_CHADD: Script_Player.OnInit()")

    ; find _CHADD_Quest "CHADD Quest Manager" [QUST:08001D86]
    Script_Quest = Game.GetFormFromFile(0x00001D86, "CHADD_UPL_datalogger.esp") as _CHADD_Script_Quest
    if ( Script_Quest )
        Debug.Notification("_CHADD: Quest Manager Found")
    endif

endEvent