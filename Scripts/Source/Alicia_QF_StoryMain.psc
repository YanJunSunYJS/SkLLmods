;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 14
Scriptname Alicia_QF_StoryMain Extends Quest Hidden

;BEGIN ALIAS PROPERTY Alicia_GhostREF
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Alicia_GhostREF Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Alicia_LuckyREF
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Alicia_LuckyREF Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Alicia_RiverShackREF
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Alicia_RiverShackREF Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
; SetStage(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
If (!IsObjectiveDisplayed(20))
   SetObjectiveDisplayed(20)
EndIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
If (!IsObjectiveDisplayed(50))
   SetObjectiveDisplayed(50)
EndIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
ObjectReference AliciaREF= Alias_Alicia.GetReference() 
    Actor AliciaActor = AliciaREF as Actor
    ObjectReference AliciaDaedricREF= Alias_AliciaDaedric.GetReference() 
    Actor AliciaDaedricActor = AliciaREF as Actor

If (!IsObjectiveDisplayed(40))
   SetObjectiveDisplayed(40)
EndIf

AliciaPrisonGhostsMarker.enable()

If (AliciaInWorld.GetValue() == 1)
    Debug.MessageBox("Alicia screams in anguish and vanishes.") 
    BanishFX.Cast(Game.GetPlayer() )
    ; BanishAlicia.RemoteCast(AliciaREF , AliciaActor ,AliciaREF )
    AliciaREF.Disable()
EndIf

If (AliciaDaedricInWorld.GetValue() == 1)
    Debug.MessageBox("Ali screams in relief and vanishes.") 
    BanishFX.Cast(Game.GetPlayer() )
    ; BanishAlicia.RemoteCast(AliciaDaedricREF , AliciaDaedricActor, AliciaDaedricREF)
    AliciaDaedricREF.Disable()
EndIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
If (!IsObjectiveDisplayed(30))
   SetObjectiveDisplayed(30)
EndIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
If (!IsObjectiveDisplayed(10))
   SetObjectiveDisplayed(10)
EndIf
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

SPELL Property BanishAlicia  Auto  

ReferenceAlias Property Alias_Alicia  Auto  

ReferenceAlias Property Alias_AliciaDaedric  Auto  

GlobalVariable Property AliciaInWorld  Auto  

GlobalVariable Property AliciaDaedricInWorld  Auto  

ObjectReference Property AliciaPrisonGhostsMarker  Auto  

SPELL Property banishFX  Auto  
