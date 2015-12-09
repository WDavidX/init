
;*******************************************************************************
;  leBindKeys.il
;
;	This file contains the sample bindKeys that can be used with the layout
;	editor. The procedure 'leInitCommonBindKeys()' sets bindkeys that are
;	appropriate for all viewTypes.
;
;*******************************************************************************
;   Edited: TMD      04/16/03  Seattle style bindkeys
;  	    TMD      07/24/03  Continuing Updates (see me for q's or changes)
;*******************************************************************************

;***************************************************************************
; The following alias is used to make the bindKey definitions more readable.
;***************************************************************************
alias bk hiSetBindKey

;if( lbIsCapEnabled("le") then

    ;***************************************************************************
    ; Standard Alpha Keys
    ;***************************************************************************

    ;bk("Layout" "<Key>a"		"geAddSelectPoint()")
    bk("Layout" "<Key>a"		"leHiAttach()")
    bk("Layout" "Shift<Key>a"		"geAddSelectBox()")	;Add whole object?
    bk("Layout" "Ctrl<Key>a"		"geSelectAllFig()")
    ;---------------------------------------------------------------------------
    bk("Layout" "<Key>b"		"leHiCreateRect()")
    bk("Layout" "Shift<Key>b"		"leReturn()")	        ; return from group
    bk("Layout" "Ctrl<Key>b"		"geReturn()")		; return from cell
    ;---------------------------------------------------------------------------
    bk("Layout" "<Key>c"		"leHiCopy()")
    bk("Layout" "Shift<Key>c"		"leHiCopy()")		;Not really used
    bk("Layout" "Ctrl<Key>c"		"bldYank()")
    ;---------------------------------------------------------------------------
    bk("Layout" "<Key>d"		"leHiCreatePolygon()")
    bk("Layout" "Shift<Key>d"		"mgc_calibre_start_rve")
    bk("Layout" "Ctrl<Key>d"		"TurboCalibreDRC()")
    ;---------------------------------------------------------------------------
    bk("Layout" "<Key>e"		"leHiEditDisplayOptions()")
    bk("Layout" "Shift<Key>e"		"geChangeEditMode(\"a\")")
    bk("Layout" "Ctrl<Key>e"		"TurboCalibreERC()")
    ;---------------------------------------------------------------------------
    bk("Layout" "<Key>f"		"hiZoomAbsoluteScale(hiGetCurrentWindow() 0.9)")
    bk("Layout" "Shift<Key>f"		"leSetEnv(\"orientation\" \"MY\") leHiMove() mouseAddPt()")
    ;;bk("Layout" "Ctrl<Key>f"		"leSetEnv(\"orientation\" \"MX\") leHiMove() mouseAddPt()")
    bk("Layout" "Ctrl<Key>f"		"leHiSearch()")
    ;---------------------------------------------------------------------------
    bk("Layout" "<Key>g"    		"{geSingleSelectPoint()
					  gePush(hiGetCurrentWindow() \"r\"
					  car(selectedSet()) 0 0 0 nil)}")
    bk("Layout" "Shift<Key>g"		"{geSingleSelectPoint()
					  gePush(hiGetCurrentWindow() \"a\"
					  car(selectedSet()) 0 0 0 nil)}")
    bk("Layout" "Ctrl<Key>g"		"leToggleGravity()") ; *** add put on grid
    ;---------------------------------------------------------------------------
    bk("Layout" "<Key>h"		"geScroll(nil \"w\"	nil)")
;   bk("Layout" "Shift<Key>h"		"")
    bk("Layout" "Ctrl<Key>h"		"leHiEditInPlace()")
    ;---------------------------------------------------------------------------
    bk("Layout" "<Key>i"		"leHiCreateInst()")
;    printf("[leBindKeys.il] - Setting 'shift+i' key\n")
    bk("Layout" "Shift<Key>i"		"leSetEntryLayer(`(instance drawing)) leSetAllLayerVisible(nil) leSetAllLayerSelectable(nil) leSetObjectSelectable(\"inst\" t) leSetObjectSelectable(\"pin\" t) bldToggleLayer(`(NW OD CPO PO CO M0OD M0PO VIA0 M1 VIA1 M2 text STDTXT)) bldToggleLayer(`(instance NW PO M1 M2 M3 M4 M5) `label) leSetLayerVisible(`(BOUNDARY drawing) t) leSetLayerSelectable(`(instance label) nil) hiRedraw()")
;    printf("[leBindKeys.il] - Setting 'ctrl+i' key\n")
    bk("Layout" "Ctrl<Key>i"		"bldMosSelectDevice()")
    ;---------------------------------------------------------------------------
    bk("Layout" "<Key>j"		"geScroll(nil \"s\"	nil)")
;   bk("Layout" "Shift<Key>j"		"")
;   bk("Layout" "Ctrl<Key>j"		"")
    ;---------------------------------------------------------------------------
    bk("Layout" "<Key>k"		"geScroll(nil \"n\"	nil)")
    bk("Layout" "Shift<Key>k"		"{leHiStretch() mouseAddPt() finishEnterFun()}")
    bk("Layout" "Ctrl<Key>k"		"{leHiStretch() mouseAddPt()}")
    ;---------------------------------------------------------------------------
    bk("Layout" "<Key>l"		"geScroll(nil \"e\"	nil)")
;   bk("Layout" "Shift<Key>l"		"")
    bk("Layout" "Ctrl<Key>l"		"TurboCalibreLVS()")

    ;---------------------------------------------------------------------------
    bk("Layout" "<Key>m"		"leHiMove()")
    bk("Layout" "Shift<Key>m"		"leHiMerge()")
    bk("Layout" "Ctrl<Key>m"		"bldMosDeviceMove()")
    ;---------------------------------------------------------------------------
    bk("Layout" "<Key>n"		"leSetFormSnapMode(\"diagonal\")")
    bk("Layout" "Shift<Key>n"		"leSetFormSnapMode(\"orthogonal\")")
    bk("Layout" "Ctrl<Key>n"		"leSetFormSnapMode(\"anyAngle\")")
    ;---------------------------------------------------------------------------
    bk("Layout" "<Key>o"		"geChangeCellView()") 
    bk("Layout" "Shift<Key>o"		"leHiUnmarkNet()")
    bk("Layout" "Ctrl<Key>o"		"leSetEntryLayer(`(instance drawing))
    					 leSetAllLayerVisible(nil) leSetAllLayerSelectable(nil) 
					 leSetLayerVisible(`(instance label) t)
					 leSetObjectSelectable(\"inst\" t)
					 leSetObjectSelectable(\"pin\" t)
					 hiRedraw()")
    ;---------------------------------------------------------------------------
    bk("Layout" "<Key>p"		"geHiDisplaySelectionForm()
                                         geLSelectForm->geSelectionMode->value=\"Partial\"
                                         hiFormDone(geLSelectForm)")
    bk("Layout" "Shift<Key>p"		"leHiMarkNet()")
    bk("Layout" "Ctrl<Key>p"		"geHiDisplaySelectionForm()
                                         geLSelectForm->geSelectionMode->value=\"Full\"
                                         hiFormDone(geLSelectForm)")
;    bk("Layout" "Ctrl<Key>p"		"leHiCreatePin()")
    ;---------------------------------------------------------------------------
    bk("Layout" "<Key>q"		"leHiEditProp()")
    bk("Layout" "Shift<Key>q"		"leEditDesignProperties()")
;   bk("Layout" "Ctrl<Key>q"		"")
    ;---------------------------------------------------------------------------
    bk("Layout" "<Key>r"		"geReturn() geDeselectAllFig()")
    bk("Layout" "Shift<Key>r"		"leRotateCB() leHiMove() mouseAddPt()")
    bk("Layout" "Ctrl<Key>r"		"bldReplaceTextString()")
    ;---------------------------------------------------------------------------
    bk("Layout" "<Key>s"		"geSubSelectPoint()")
    bk("Layout" "Shift<Key>s"		"geSubSelectBox()")
    bk("Layout" "Ctrl<Key>s"		"geDeselectAllFig()")
    ;---------------------------------------------------------------------------
    bk("Layout" "<Key>t"		"deReturn(hiGetCurrentWindow() 0)")   ;;"leHiLayerTap()")
    bk("Layout" "Shift<Key>t"		"leSetEntryLayer(`(text drawing))
    					 leSetLayerSelectable(`(text drawing))
    					 leHiCreateLabel()
    					 leLabelForm->labelJustify->value = \"centerLeft\"
					 leLabelForm->labelHeight->value = 0.03") ;only one label?
    bk("Layout" "Ctrl<Key>t"		"leHiCreateLabel()
    					 leLabelForm->labelJustify->value = \"centerLeft\"
					 leLabelForm->labelHeight->value = 0.03") ;only one label?
    ;---------------------------------------------------------------------------
    bk("Layout" "<Key>u"		"hiUndo()")
    bk("Layout" "Shift<Key>u"		"hiRedo()")
    bk("Layout" "Ctrl<Key>u"		"leiDiscardEdits()")
    ;---------------------------------------------------------------------------
    bk("Layout" "<Key>v"		"hiZoomIn()")
    bk("Layout" "Shift<Key>v"		"hiPrevWinView(hiGetCurrentWindow())")
    bk("Layout" "Ctrl<Key>v"		"bldPaste()")
    ;---------------------------------------------------------------------------
    bk("Layout" "<Key>w"		"leHiCreatePath()")
    bk("Layout" "Shift<Key>w"		"leHiCreatePath()")
    bk("Layout" "Ctrl<Key>w"		"leHiEditProp()")	;Simplify window?
    ;---------------------------------------------------------------------------
    bk("Layout" "<Key>x"		"leHiEditInPlace()")
    bk("Layout" "Shift<Key>x"		"leHiDescend()")
    bk("Layout" "Ctrl<Key>x"		"leHiDescend( hiGetCurrentWindow() \"read\")")
    ;---------------------------------------------------------------------------
    bk("Layout" "<Key>y"		"leHiStretch()")
    bk("Layout" "Shift<Key>y"		"bldGenOriginLabels()")
;   bk("Layout" "Ctrl<Key>y"		"")
    ;---------------------------------------------------------------------------
    bk("Layout" "<Key>z"		"hiZoomRelativeScale(hiGetCurrentWindow() 0.5)")
    bk("Layout" "Shift<Key>z"		"hiZoomRelativeScale(hiGetCurrentWindow() 2.0)")
    bk("Layout" "Ctrl<Key>z"		"{hiZoomRelativeScale(hiGetCurrentWindow() 2.0) hiPan()}")

    ;***************************************************************************
    ; Standard Numeric Keys
    ;***************************************************************************

    stopLevelValue = 0

    bk("Layout" "<Key>1"		"{leHiEditDisplayOptions()
                                          leDisplayOptionsForm->type->value = \"none\"
                                          hiFormDone(leDisplayOptionsForm)}")
    
    bk("Layout" "<Key>2"		"hiPan()")
    bk("Layout" "Shift<Key>2"		"hiRedraw()")
    bk("Layout" "Ctrl<Key>2"		"leHiCreateRuler()")
    
    bk("Layout" "<Key>3"		"geSave()")
    
    bk("Layout" "<Key>4"		"{hiGetCurrentWindow()->stopLevel = 0
    					 stopLevelValue = 0}")
    
    bk("Layout" "<Key>5"		"{hiGetCurrentWindow()->stopLevel = stopLevelValue + 1
    					 stopLevelValue = stopLevelValue + 1}")
    
    bk("Layout" "<Key>6"		"{hiGetCurrentWindow()->stopLevel = stopLevelValue - 1
    					 stopLevelValue = stopLevelValue - 1}")
    
    bk("Layout" "<Key>7"		"hiGetCurrentWindow()->stopLevel = 3")
    
    bk("Layout" "<Key>8"		"{hiGetCurrentWindow()->stopLevel = 20
    					 stopLevelValue = 20}")
    
    bk("Layout" "<Key>9"		"{_geProbeOptionsForm->_geAllViewTypes->all->value =  t
					  geAddNetProbe()}")
    bk("Layout" "Shift<Key>9"		"DS2Opus(nil)")
    
    bk("Layout" "<Key>0"		"geDeleteNetProbe()")
    bk("Layout" "Shift<Key>0"  		"geDeleteAllProbe()")


    ;***************************************************************************
    ; Special Keys
    ;***************************************************************************

    bk("Layout" "Shift<Key>="		"leHiSize()") 

    bk("Layout" "<Key>,"		"leHiClearRuler()") 

    bk("Layout" "<Key>."		"leHiCreateRuler()")
    bk("Layout" "Shift<Key>."		"leHiReShape()")

    bk("Layout" "<Key>/"		"hiRedraw()")
    bk("Layout" "Shift<Key>/"		"geHiExplainMarker()")

    bk("Layout" "Shift<Key>'"		"bldFindArea()")

    bk("Layout" "<Key>-"		"leHiDelete()")
    bk("Layout" "Shift<Key>-"		"leHiChop()")

    bk("Layout" "<Key>["		"deOpen()")
    bk("Layout" "<Key>]"		"hiCloseWindow(hiGetCurrentWindow())")

    bk("Layout" "<Key>Escape EF"	"cancelEnterFun()")
    
    bk("Layout" "backspace"		"leHiDelete()")
    bk("Layout" "backspace EF"		"leHiDelete()")
   
    bk("Layout" "<Key>Delete"		"leHiDelete()")
    bk("Layout" "<Key>Delete EF"	"leHiDelete()")
    
    bk("Layout" "<Key>Tab"		"finishEnterFun()")


    ;***************************************************************************
    ; Function Keys
    ;***************************************************************************

    procedure(bldToggleLayer(llist @optional (ltype `drawing))
      let( (x)
        foreach(x llist
          ; If entry layer is current layer to be toggled then set to instance layer instead.
          when(sprintf(nil "%L" x) == car(leGetEntryLayer()) &&
               sprintf(nil "%L" ltype) == cadr(leGetEntryLayer())
            leSetEntryLayer(`(instance drawing))
          )
          if(leIsLayerVisible(list(x ltype))
	  then
            leSetLayerVisible(list(x ltype) nil)
            leSetLayerSelectable(list(x ltype) nil)
	  else
            leSetLayerVisible(list(x ltype) t)
            leSetLayerSelectable(list(x ltype) t)
	  )
        )
        hiRedraw()
      )
    )

    procedure(bldSetLayer(llist @optional (ltype `drawing))
      let( (x)
         foreach(x llist
             leSetLayerVisible(list(x ltype) t)
             leSetLayerSelectable(list(x ltype) t)
         )
         hiRedraw()
      )
    )


    ; NWELL/Implants
    bk("Layout" "<Key>F1"	"bldToggleLayer(`(DNW PP NP))
				 bldToggleLayer(`(PM) `drawing1)")
    
    ; Actives
    bk("Layout" "<Key>F2"	"bldToggleLayer(`(OD NW))")
    
    ; Poly
    bk("Layout" "<Key>F3"	"bldToggleLayer(`(PO CPO SENDMY))
                                 bldToggleLayer(`(PO) `test2)
                                 bldToggleLayer(`(PO) `dummy1)")
    
    ; Contact/Via's
    bk("Layout" "<Key>F4"	"bldToggleLayer(`(CM0OD M0OD M0PO VIA0 RVIA0 VIA1 VIA2 VIA3 ))")

    bk("Layout" "Shift<Key>F4"	"bldToggleLayer(`(CO ))")

    bk("Layout" "Ctrl<Key>1"	"bldToggleLayer(`(FINFET) `FB1)")
    bk("Layout" "Ctrl<Key>2"	"bldToggleLayer(`(M0OD CM0OD))")
    bk("Layout" "Ctrl<Key>3"	"bldToggleLayer(`(M0PO))")
    bk("Layout" "Ctrl<Key>4"	"bldToggleLayer(`(VIA0 RVIA0))")
    bk("Layout" "Ctrl<Key>5"	"bldToggleLayer(`(VIA1))")
    bk("Layout" "Ctrl<Key>6"	"bldToggleLayer(`(VIA2))")
    bk("Layout" "Ctrl<Key>7"	"bldToggleLayer(`(VIA3))")
    bk("Layout" "Ctrl<Key>8"	"bldToggleLayer(`(VIA4))")
    bk("Layout" "Ctrl<Key>9"	"bldToggleLayer(`(VIA5 VIA6))")




    bk("Layout" "Ctrl<Key>F4"	"bldToggleLayer(`(VIA4 VIA5 VIA6 RVE))")
    
    ; Metal 1
    bk("Layout" "<Key>F5"	"bldToggleLayer(`(M1))
    				 bldToggleLayer(`(M1) `pin)")
    
    ; Metal 1 fil
    bk("Layout" "Shift<Key>F5"  "bldToggleLayer(`(M1) `fill)")

    ; Metal 2
    bk("Layout" "<Key>F6"	"bldToggleLayer(`(M2))
    				 bldToggleLayer(`(M2) `pin)")
    ; Metal 2 fil
    bk("Layout" "Shift<Key>F6"  "bldToggleLayer(`(M2) `fill)")

    
    ; Metal 3
    bk("Layout" "<Key>F7"	"bldToggleLayer(`(M3))
    				 bldToggleLayer(`(M3) `pin)")
    
    ; Metal 3 fil
    bk("Layout" "Shift<Key>F7"  "bldToggleLayer(`(M3) `fill)")

    ; Metal 4
    bk("Layout" "<Key>F8"	"bldToggleLayer(`(M4 M5 M6 AP))
    				 bldToggleLayer(`(M4 M5 M6 AP) `pin)")

    ; Metal 4 fil
    bk("Layout" "Shift<Key>F8"  "bldToggleLayer(`(M3) `fill)
                                 bldToggleLayer(`(M4) `fill)
                                 bldToggleLayer(`(M5) `fill)
                                 bldToggleLayer(`(M6) `fill)")

    ; Schematic layers
    bk("Layout" "<Key>F9"       "bldSetLayer(`(instance wire pin prBoundary stretch select device y0 y1 y2 y3 y4 y5 y6 y7 y8 y9 annotate border hilite) `drawing)
    				 bldSetLayer(`(instance pin wire prBoundary device) `label)
    				 bldSetLayer(`(marker) `error)
    				 bldSetLayer(`(marker) `warning)
	                         bldSetLayer(`(annotate hilite) `drawing7)
    				 bldSetLayer(`(pin device) `annotate)
    				 bldSetLayer(`(wire) `flight)")

    bk("Layout" "Shift<Key>F9"  "bldToggleLayer(`(annotate hilite device) `drawing1)
    				 bldToggleLayer(`(annotate hilite) `drawing2)
    				 bldToggleLayer(`(annotate hilite) `drawing3)
    				 bldToggleLayer(`(annotate hilite) `drawing4)
    				 bldToggleLayer(`(annotate hilite) `drawing5)
    				 bldToggleLayer(`(annotate hilite) `drawing6)
    				 bldToggleLayer(`(annotate hilite) `drawing8)
    				 bldToggleLayer(`(annotate hilite) `drawing9)")

    ; Metal 6 fil
    ;bk("Layout" "Shift<Key>F9"  "bldToggleLayer(`(M6) `fill)
    ;                             bldToggleLayer(`(AP) `fill)")

    ; Misc Core Crap
    ;bk("Layout" "Shift<Key>F9"	"bldToggleLayer(`(MEMCDRC MEMCORE SRAMSQCO MEMVTCN MEMVTCP MEMVNPRE DRAMCO MEMIDDP MEMCONLY MEMIDUHD MEMIDHC MEMIDHD MEMIDLV MEMIDHCDP MEMID8TP MEMID10TP MEMDUMOD1 MEMDUMOD2 MEMDUMOD3 MEMDUMOD4 MEMDUMOD5 MEMDUDMOD6 MEMDEMOD7 MEMDUMOD8 MEMDUMOD9 MEMDUMOD10 MEMDUMOD11 MEMDUMOD12 MEMDUMOD13 MEMDUMOD14 MEMDUMOD15 MEMDUMOD16 MEMDUMP01 MEMDUMP02 MEMDUMP03 MEMDUMP04 MEMDUMP05 MEMDUMP06 MEMDUMP07))")
    
    ; Text's
    bk("Layout" "<Key>F10"	"bldToggleLayer(`(text TEXT STDTXT BOUNDARY ))
    				 bldToggleLayer(`(NWELL PSUB2 POLY M1 M2 M3 M4 M5 M6 M7 AP STDTXT TEXT) `label)
                                 bldToggleLayer(`(prBoundary) `boundary)")
                                
    
    ; No layers
    bk("Layout" "<Key>F11"	"leSetAllLayerVisible(nil) leSetAllLayerSelectable(nil) hiRedraw()")

    ; All layers
    bk("Layout" "<Key>F12"	"leSetAllLayerVisible(t) leSetAllLayerSelectable(t) hiRedraw()")


    ;***************************************************************************
    ; Numeric Key Pad (Window Panning Functions)
    ;***************************************************************************

    moveDelta = 0.005
    KPmoveDelta = 0.5
    scrollDelta = 10
    
    bk("Layout" "<Key>Down"		"leMoveCursor(         0   -moveDelta)")
    bk("Layout" "<Key>Left"		"leMoveCursor(-moveDelta            0)")
    bk("Layout" "<Key>Right"		"leMoveCursor( moveDelta            0)")
    bk("Layout" "<Key>Up"		"leMoveCursor(         0    moveDelta)")

    bk("Layout" "<Key>KP_1"		"geScroll(nil  \"sw\"	    nil)")
    bk("Layout" "<Key>KP_2"		"geScroll(nil  \"s\"	    nil)")
    bk("Layout" "<Key>KP_3"		"geScroll(nil  \"se\"	    nil)")
    bk("Layout" "<Key>KP_4"		"geScroll(nil  \"w\"	    nil)")
    bk("Layout" "<Key>KP_5"		"geScroll(nil  \"\"	    nil)")
    bk("Layout" "<Key>KP_6"		"geScroll(nil  \"e\"	    nil)")
    bk("Layout" "<Key>KP_7"		"geScroll(nil  \"nw\"	    nil)")
    bk("Layout" "<Key>KP_8"		"geScroll(nil  \"n\"	    nil)")
    bk("Layout" "<Key>KP_9"		"geScroll(nil  \"ne\"	    nil)")
    
    bk("Layout" "Shift<Key>KP_1"	"leMoveCursor(-KPmoveDelta -KPmoveDelta)")
    bk("Layout" "Shift<Key>KP_2"	"leMoveCursor(           0 -KPmoveDelta)")
    bk("Layout" "Shift<Key>KP_3"	"leMoveCursor( KPmoveDelta -KPmoveDelta)")
    bk("Layout" "Shift<Key>KP_4"	"leMoveCursor(-KPmoveDelta            0)")
    bk("Layout" "Shift<Key>KP_5"	"leMoveCursorToRefPoint()")
    bk("Layout" "Shift<Key>KP_6"	"leMoveCursor( KPmoveDelta            0)")
    bk("Layout" "Shift<Key>KP_7" 	"leMoveCursor(-KPmoveDelta  KPmoveDelta)")
    bk("Layout" "Shift<Key>KP_8"	"leMoveCursor(           0  KPmoveDelta)")
    bk("Layout" "Shift<Key>KP_9"	"leMoveCursor( KPmoveDelta  KPmoveDelta)")

    bk("Layout" "Ctrl<Key>KP_1"		"geScroll(nil  \"sw\"	    nil)") ;same as non-ctrl
    bk("Layout" "Ctrl<Key>KP_2"		"geScroll(nil  \"s\"	    nil)") ;same as non-ctrl
    bk("Layout" "Ctrl<Key>KP_3"		"geScroll(nil  \"se\"	    nil)") ;same as non-ctrl
    bk("Layout" "Ctrl<Key>KP_4"		"geScroll(nil  \"w\"	    nil)") ;same as non-ctrl
    bk("Layout" "Ctrl<Key>KP_5"		"geScroll(nil  \"\"	    nil)") ;same as non-ctrl
    bk("Layout" "Ctrl<Key>KP_6"		"geScroll(nil  \"e\"	    nil)") ;same as non-ctrl
    bk("Layout" "Ctrl<Key>KP_7"		"geScroll(nil  \"nw\"	    nil)") ;same as non-ctrl
    bk("Layout" "Ctrl<Key>KP_8"		"geScroll(nil  \"n\"	    nil)") ;same as non-ctrl
    bk("Layout" "Ctrl<Key>KP_9"		"geScroll(nil  \"ne\"	    nil)") ;same as non-ctrl

    bk("Layout" "<Key>KP_Enter"		"mouseAddPt()")
    bk("Layout" "<Key>KP_Add"		"leHiSetRefPoint()")
    bk("Layout" "<Key>KP_Subtract"	"leSetRefPointInactive(geGetEditCellView())")

    bk("Layout" "<Key>KP_Equal"		"geSetScrollPercent(50)")
    bk("Layout" "<Key>KP_Divide"	"geSetScrollPercent(scrollDelta-20)
    					 scrollDelta = scrollDelta - 20")
    bk("Layout" "<Key>KP_Multiply"	"geSetScrollPercent(scrollDelta+20)
    					 scrollDelta = scrollDelta + 20")

    bk("Layout" "Shift<Key>KP_Equal"	"KPmoveDelta = 0.5")
    bk("Layout" "Shift<Key>KP_Divide"	"KPmoveDelta = KPmoveDelta - 0.5")
    bk("Layout" "Shift<Key>KP_Multiply"	"KPmoveDelta = KPmoveDelta + 0.5")

    bk("Layout" "Ctrl<Key>KP_Equal"	"moveDelta = 0.005")
    bk("Layout" "Ctrl<Key>KP_Divide"	"moveDelta = moveDelta - 0.005")
    bk("Layout" "Ctrl<Key>KP_Multiply"	"moveDelta = moveDelta + 0.005")


    ;***************************************************************************
    ; Example Keys
    ;***************************************************************************

;   bk("Layout" "Shift<Key>f EF"	"leSetEnv(\"orientation\" \"MX\")")
;   bk("Layout" "Ctrl<Key>f EF"  	"leSetEnv(\"orientation\" \"MY\")")
;   bk("Layout" "Shift<Key>i"		"leHiCreateContact()")
;   bk("Layout" "Ctrl<Key>i"		"if(hiGetCIWindow()->infix then hiGetCIWindow()->infix=nil else hiGetCIWindow()->infix=t)")
;   bk("Layout" "Shift<Key>s"		"leHiSearch()")
;   bk("Layout" "Ctrl<Key>s"		"leHiSummary()")
;   bk("Layout" "Ctrl<Key>v"		"hiNextWinView(hiGetCurrentWindow())")
;   bk("Layout" "Ctrl<Key>v"		"hiFocusToCIW(hiGetCurrentWindow()) hiDeiconifyWindow(window(1)) hiRaiseWindow(window(1))")

;   bk("Layout" "<Key>y"		"leHiCreatePin()")
;   bk("Layout" "<Key>,"		"geSaveAs()")

;else
;    getWarn()
;)

unalias bk

