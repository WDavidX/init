
;*******************************************************************************
;  schBindKeys.il
;
;       This file contains the sample bindKeys that can be used in:
;		Schematic editor (prefix "Schematics")
;		Symbol editor (prefix "Symbol")
;		Read HDL (prefix "Read HDL")
;
;*******************************************************************************
;   Edited: EH       07/08/94  Seattle style bindkeys
;           JEW      05/16/02  Made to look like DesignScape bind keys.
;*******************************************************************************

;***************************************************************************
; The following alias is used to make the bindKey definitions more readable.
;***************************************************************************
alias bk hiSetBindKey

;***************************************************************************
; Only set bindKey if schematics is enabled.
;***************************************************************************
;if( lbIsCapEnabled("schView") then
when(isCallable('schGetEnv)

    ;***************************************************************************
    ; General bindkeys (prefix "Schematics").  These bindkeys are bound to
    ; graphics editor ("ge") and human interface ("hi") functionality.
    ;***************************************************************************
    ; Standard Alpha Keys
    ;***************************************************************************

    bk("Schematics" "<Key>a"		"geAddSelectPoint()")
    bk("Schematics" "Shift<Key>a"	"geAddSelectBox()")
    bk("Schematics" "Ctrl<Key>a"	"geSelectAllFig()")
    ;---------------------------------------------------------------------------
    bk("Schematics" "<Key>b"		"schHiCreateNoteShape()")
;   bk("Schematics" "Shift<Key>b"	"")
    bk("Schematics" "Ctrl<Key>b"	"schHiEditTitleBlock()")
    ;---------------------------------------------------------------------------
    bk("Schematics" "<Key>c"		"schHiCopy()")
;   bk("Schematics" "Shift<Key>c"	"")
    bk("Schematics" "Ctrl<Key>c"	"bldYank()")
    ;---------------------------------------------------------------------------
    bk("Schematics" "<Key>d"		"schHiCreateNoteShape()")
;   bk("Schematics" "Shift<Key>d"	"")
    bk("Schematics" "Ctrl<Key>d"	"schHiChangeEditMode(\"r\")")
    ;---------------------------------------------------------------------------
    bk("Schematics" "<Key>e"		"schHiDescendRead()")
    bk("Schematics" "Shift<Key>e"	"schHiChangeEditMode(\"a\")")
    bk("Schematics" "Ctrl<Key>e"	"schHiReturn() schDeselectAllFig()")
    ;---------------------------------------------------------------------------
    bk("Schematics" "<Key>f" 		"hiZoomAbsoluteScale(getCurrentWindow() 1.0)")
    bk("Schematics" "Shift<Key>f"	"schSetEnv(\"sideways\" t) schHiMove() mouseAddPt()")
    bk("Schematics" "Ctrl<Key>f"  	"schSetEnv(\"upsideDown\" t) schHiMove() mouseAddPt()")

    ;---------------------------------------------------------------------------
    bk("Schematics" "<Key>g"            "{geSingleSelectPoint() schHiDescendRead()}")
    ;bk("Schematics" "<Key>g"            "{geSingleSelectPoint()
    ;                                     geSwitch(hiGetCurrentWindow() \"r\"
    ;                                    car(geGetSelSet()) 1 1 1 t)}")
    ;					  ; car(selectedSet()) 1 1 1 t)}")
    bk("Schematics" "Shift<Key>g"       "{geSingleSelectPoint() schHiDescendEdit()}")
    bk("Schematics" "Ctrl<Key>g" 	"bldSchemPlacePin(bldTechnologyLib \"vss\")")
    ;---------------------------------------------------------------------------
    bk("Schematics" "<Key>h"		"geScroll(nil \"w\" nil)")
    bk("Schematics" "Shift<Key>h"    	"{geSingleSelectPoint()
    					  gePush(hiGetCurrentWindow() \"r\"
					  car(selectedSet()) 1 1 1 nil)}")
    bk("Schematics" "Ctrl<Key>h"        "schHiEditInPlace()")
    ;---------------------------------------------------------------------------
    bk("Schematics" "<Key>i"        	"schHiCreateInst()")
    bk("Schematics" "Shift<Key>i"	"leSetEntryLayer(`(instance drawing))
    					 leSetAllLayerVisible(nil) leSetAllLayerSelectable(nil)
					 bldToggleLayer(`(instance text TEXT STDTXT BOUNDARY))
					 bldToggleLayer(`(instance POLY M1 M2 M3 M4 M5) `label)
    					 leSetLayerSelectable(`(instance label) nil)
    					 leSetLayerSelectable(`(BOUNDARY drawing) nil)
					 hiRedraw()")
    bk("Schematics" "Ctrl<Key>i"       	"schHiObjectProperty()")
    ;---------------------------------------------------------------------------
    bk("Schematics" "<Key>j"		"geScroll(nil \"s\" nil)")
;   bk("Schematics" "Shift<Key>j"	"")
;   bk("Schematics" "Ctrl<Key>j"	"")
    ;---------------------------------------------------------------------------
    bk("Schematics" "<Key>k"		"geScroll(nil \"n\" nil)")
    bk("Schematics" "Shift<Key>k" 	"schHiStretch()")
    bk("Schematics" "Ctrl<Key>k"	"{geAddSelectBox() schHiStretch()}")
    ;---------------------------------------------------------------------------
    bk("Schematics" "<Key>l"		"geScroll(nil \"e\" nil)")
    bk("Schematics" "Shift<Key>l"	"schHiCreateNoteLabel()")
    bk("Schematics" "Ctrl<Key>l"	"schHiEditLabelProp()")
    ;---------------------------------------------------------------------------
    bk("Schematics" "<Key>m"		"schHiMove()")
    bk("Schematics" "Shift<Key>m"	"geHiExplainMarker()")
;   bk("Schematics" "Ctrl<Key>m"	"")
    ;---------------------------------------------------------------------------
    bk("Schematics" "<Key>n"   		"schHiCreateWireLabel()")
    bk("Schematics" "Shift<Key>n"  	"schHiFind()")
    bk("Schematics" "Ctrl<Key>n" 	"schHiCreateWireLabel()")
    ;---------------------------------------------------------------------------
    bk("Schematics" "<Key>o"        	"schHiOpenCellView()")
    bk("Schematics" "Shift<Key>o"	"schHiOpenCellView()")
    bk("Schematics" "Ctrl<Key>o"	"schHiOpenCellView()")
    ;---------------------------------------------------------------------------

	;bk("Schematics" "<Key>p"		"hiPan()")
    ;bk("Schematics" "Shift<Key>p"	"schHiCreatePin()")
	bk("Schematics" "Shift<Key>p"		"hiPan()")
    bk("Schematics" "<Key>p"	"schHiCreatePin()")
    ;bk("Schematics" "Ctrl<Key>p"	"schHiCreateSymbolPin()")
    bk("Schematics" "Ctrl<Key>p"        "bldSchemPlacePin(bldTechnologyLib \"vdd\")")
    ;---------------------------------------------------------------------------
    bk("Schematics" "<Key>q"		"schHiObjectProperty()")
    bk("Schematics" "Shift<Key>q"	"schHiCellViewProperty()")
    bk("Schematics" "Ctrl<Key>q"     	"schHiObjectProperty()")
    ;---------------------------------------------------------------------------
    bk("Schematics" "<Key>r"   		"schSetEnv(\"rotate\" t) schHiMove() mouseAddPt()")
    bk("Schematics" "Shift<Key>r"	"schHiChangeEditMode(\"r\")")
    bk("Schematics" "Ctrl<Key>r"	"schHiReplace()")
    ;---------------------------------------------------------------------------
    bk("Schematics" "<Key>s"	    	"geSubSelectPoint()")
    bk("Schematics" "Shift<Key>s"   	"geSubSelectBox()")
    bk("Schematics" "Ctrl<Key>s"    	"geDeselectAllFig()")
    ;---------------------------------------------------------------------------
    bk("Schematics" "<Key>t"	    	"schHiLayerTap()")
    bk("Schematics" "Shift<Key>t"	"schHiCreateNoteLabel()")
    bk("Schematics" "Ctrl<Key>t"	"schHiCreateNoteLabel()")
    ;---------------------------------------------------------------------------
    bk("Schematics" "<Key>u"		"hiUndo()")
    bk("Schematics" "Shift<Key>u"   	"geDeleteAllProbe()")
    bk("Schematics" "Ctrl<Key>u"   	"geDiscardEdits()")
    ;---------------------------------------------------------------------------
    bk("Schematics" "<Key>v"		"hiZoomIn()")
    bk("Schematics" "Shift<Key>v"	"hiPrevWinView(hiGetCurrentWindow())")
;   bk("Schematics" "Ctrl<Key>v"	"")
    ;---------------------------------------------------------------------------
    bk("Schematics" "<Key>w"		"schHiCreateWire(0.0)")
    bk("Schematics" "Shift<Key>w"	"schHiCreateWire(0.025)")
;   bk("Schematics" "Ctrl<Key>w"	"")
    ;---------------------------------------------------------------------------
    bk("Schematics" "<Key>x"		"schHiCheck(\"run\")")
;   bk("Schematics" "Shift<Key>x"	"")
    bk("Schematics" "Ctrl<Key>x"	"hiPan()")
    ;---------------------------------------------------------------------------
    bk("Schematics" "<Key>y"		"schHiStretch()")
;   bk("Schematics" "Shift<Key>y"	"")
    bk("Schematics" "Ctrl<Key>y"	"hiPan()")
    ;---------------------------------------------------------------------------

	; original keybind
	;bk("Schematics" "<Key>z" 		"hiZoomRelativeScale(getCurrentWindow() 0.5)")
    ;bk("Schematics" "Shift<Key>z" 	"hiZoomRelativeScale(getCurrentWindow() 2.0)")
    ;bk("Schematics" "Ctrl<Key>z" 	"{hiZoomRelativeScale(getCurrentWindow() 2.0) hiPan()}")

	bk("Schematics" "<Key>z" 		"hiZoomRelativeScale(getCurrentWindow() 0.5)")
    bk("Schematics" "Shift<Key>z" 	"hiZoomRelativeScale(getCurrentWindow() 0.6)")
    bk("Schematics" "Ctrl<Key>z" 	"{hiZoomRelativeScale(getCurrentWindow() 1.6) hiPan()}")

    ;***************************************************************************
    ; Standard Numeric Keys
    ;***************************************************************************

    bk("Schematics" "<Key>1"		"schHiGridOptions()")
    bk("Schematics" "Shift<Key>1"	"geAddNetProbe()")
    bk("Schematics" "Ctrl<Key>1"	"writeProbedNet2Measgen()")

    bk("Schematics" "<Key>2"		"schHiGridOptions()")
    bk("Schematics" "Shift<Key>2"	"schHiFind()")
;   bk("Schematics" "Ctrl<Key>2"	"")

    bk("Schematics" "<Key>3"		"schHiCheckAndSave()")
    bk("Schematics" "Shift<Key>3"	"geDeleteNetProbe()")
;   bk("Schematics" "Ctrl<Key>3"	"")

    bk("Schematics" "<Key>4"		"schHiHiliteLabel(\"instance\" \"off\")")
    bk("Schematics" "Shift<Key>4"	"{geSingleSelectPoint() schHiObjectProperty()}")
;   bk("Schematics" "Ctrl<Key>4"	"")

;   bk("Schematics" "<Key>5"		"")
    bk("Schematics" "Shift<Key>5"	"schHiFind()")
;   bk("Schematics" "Ctrl<Key>5"	"")

;   bk("Schematics" "<Key>6"		"")
;   bk("Schematics" "Shift<Key>6"	"")
;   bk("Schematics" "Ctrl<Key>6"	"")

;   bk("Schematics" "<Key>7"		"")
    bk("Schematics" "Shift<Key>7"	"geHiExplainMarker()")
;   bk("Schematics" "Ctrl<Key>7"	"")

;   bk("Schematics" "<Key>8"		"")
    bk("Schematics" "Shift<Key>8"	"schHiObjectProperty()")
;   bk("Schematics" "Ctrl<Key>8"	"")

;   bk("Schematics" "<Key>9"		"")
    bk("Schematics" "Shift<Key>9"	"geHiExplainMarker()")
;   bk("Schematics" "Ctrl<Key>9"	"")

;   bk("Schematics" "<Key>0"		"")
;   bk("Schematics" "Shift<Key>0"	"")
;   bk("Schematics" "Ctrl<Key>0"	"")

    ;***************************************************************************
    ; Special Keys
    ;***************************************************************************

    bk("Schematics" "<Key>[" 		"deOpen()")
;   bk("Schematics" "Shift<Key>[" 	"")
;   bk("Schematics" "Ctrl<Key>[" 	"")

    bk("Schematics" "<Key>]" 		"hiCloseWindow(hiGetCurrentWindow())")
;   bk("Schematics" "Shift<Key>]" 	"")
;   bk("Schematics" "Ctrl<Key>]" 	"")

    bk("Schematics" "<Key>/"		"hiRedraw()")
;   bk("Schematics" "Shift<Key>/"	"")
;   bk("Schematics" "Ctrl<Key>/"	"")

    bk("Schematics" "<Key>="		"schHiChangeEditMode(\"r\")")
    bk("Schematics" "Shift<Key>="	"schHiChangeEditMode(\"a\")")

    bk("Schematics" "<Key>,"		"geSaveAs()")

    bk("Schematics" "backspace"		"schHiDelete()")

    bk("Schematics" "<Key>-"		"schHiDelete()")

    bk("Schematics" "<Key>Delete"	"schHiDelete()")

    bk("Schematics" "<Key>."		"schHiCreateRuler()")
    bk("Schematics" "Shift<Key>."	"schHiClearRuler()")

    ;***************************************************************************
    ; Function Keys
    ;***************************************************************************

    bk("Schematics" "<Key>F2"		"geSave()")
    bk("Schematics" "<Key>F5" 		"deOpen()")
    bk("Schematics" "<Key>F6"		"hiRedraw()")
    bk("Schematics" "<Key>F11"		"bldMakeAuCdlNetlist(\"sim\")")
    bk("Schematics" "<Key>F12"		"bldMakeAuCdlNetlist(\"lvs\")")

    ;***************************************************************************
    ; Numeric Key Pad (Window Panning Functions)
    ;***************************************************************************

    bk("Schematics" "<Key>Down"		"geScroll(nil \"s\" nil)")
    bk("Schematics" "<Key>Up"		"geScroll(nil \"n\" nil)")
    bk("Schematics" "<Key>Right"	"geScroll(nil \"e\" nil)")
    bk("Schematics" "<Key>Left"		"geScroll(nil \"w\" nil)")

    ;***************************************************************************
    ; Specific bindkeys (prefix "Schematics").  These bindkeys are bound to
    ; schematic editor ("Schematics") functionality.
    ;***************************************************************************
    ; Mouse Keys
    ;***************************************************************************

    bk("Schematics" "None<Btn1Down>(2) EF" "schMouseApplyOrFinish()")
    bk("Schematics" "None<Btn2Down>"   	   "schHiMousePopUp()")

    bk("Schematics" "None<Btn2Down>"       "{geAddNetProbe() geSingleSelectPoint() schHiDescendRead()}")
;    bk("Schematics" "None<Btn2Down>"  	   "{geAddNetProbe() geSingleSelectPoint()
;    					     geSwitch(hiGetCurrentWindow() \"r\"
;					     car(selectedSet()) 1 1 1 t)}")

    bk("Schematics" "None<Btn3Down>"	   "geAddNetProbe()")
    bk("Schematics" "Shift<Btn3Down> EF"   "schShiftCmdOption()")

    ;***************************************************************************
    bk("Schematics"  "<DrawThru3>"  "hiZoomIn()" )

    ;***************************************************************************
    ; General bindkeys (prefix "Symbol").  These bindkeys are bound to
    ; graphics editor ("ge") and human interface ("hi") functionality.
    ;***************************************************************************
    ; General bindkeys (prefix "Read HDL").
    ;***************************************************************************

    bk("Read HDL"   "Ctrl<Key>s"	"hiSaveAsViewfile()")
    bk("Read HDL"   "Ctrl<Key>e"	"schHDLReturn()")

    ;***************************************************************************
    ; Example Keys
    ;***************************************************************************

;   bk("Schematics" "Ctrl<Key>d"	"schHiSolder()")
;   bk("Schematics" "Ctrl<Key>e"	"schHiCreateNoteShape()")
;   bk("Schematics" "Shift<Key>w"	"schHiCreateWire(schGetEnv(\"defWideWireWidth\"))")
;   bk("Schematics" "Shift<Key>9"	"DS2Opus(nil)")
;   bk("Schematics" "Shift<Key>g"       "schHiDisplayOptions()")

;else
   ; Eat up the capability check warning message
;   getWarn()
); if
