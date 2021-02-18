Scriptname _CHADD_Script_Quest extends Quest  

Actor Property _CHADD_PlayerRef Auto
Float Property _CHADD_Version Auto

Float Current_Version = 0.10

Event OnInit()
    ; Debug.Notification("_CHADD: Script_Quest.OnInit()")
    Maintenance()
endEvent

Function Maintenance()
    ; Debug.Notification("_CHADD: Script_Quest.Maintenance()" )
	If _CHADD_Version < Current_Version ; Current version
		If _CHADD_Version
            Debug.Notification("_CHADD: Updating from v" + _CHADD_Version + " to v" + Current_Version)
           
		Else
            Debug.Notification("_CHADD: Initializing v" + Current_Version)
		EndIf
		_CHADD_Version = Current_Version
    EndIf

    ;_TIM_XPRate_Spells = _TIM_Global_XPRate_Spells.GetValue() as Int
    ;_TIM_XPRate_Workbooks = _TIM_Global_XPRate_Workbooks.GetValue() as Int
    RegisterForSingleUpdate(10.0)
endFunction

Event OnUpdate()
    ;_TIM_XPRate_Spells = _TIM_Global_XPRate_Spells.GetValue() as Int
    ;_TIM_XPRate_Workbooks = _TIM_Global_XPRate_Workbooks.GetValue() as Int
    RegisterForSingleUpdate(10.0)
EndEvent
