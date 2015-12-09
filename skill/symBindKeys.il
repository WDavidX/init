
;*******************************************************************************
;  symBindKeys.il
;
;       This file contains the sample bindKeys that can be used in:
;		Schematic editor (prefix "Symbol") 
;		Symbol editor (prefix "Symbol")
;		Read HDL (prefix "Read HDL")
;
;*******************************************************************************
;   Edited: EH       07/08/94  Seattle style bindkeys
;*******************************************************************************

;***************************************************************************
; The following alias is used to make the bindKey definitions more readable.
;***************************************************************************
alias bk hiSetBindKey

;***************************************************************************
; Only set bindKey if schematics is enabled.
;***************************************************************************
;if( lbIsCapEnabled("schView") then

    ;***************************************************************************
    ; General bindkeys (prefix "Symbol").  These bindkeys are bound to
    ; graphics editor ("ge") and human interface ("hi") functionality.
    ;***************************************************************************
    ; Standard Alpha Keys
    ;***************************************************************************

    bk("Symbol" "<Key>a"		"geAddSelectPoint()")
    bk("Symbol"	"Shift<Key>a"		"geAddSelectBox()")
    bk("Symbol"	"Ctrl<Key>a"		"geSelectAllFig()")
    ;---------------------------------------------------------------------------
    bk("Symbol" "<Key>b"		"schHiCreateRect()")
    bk("Symbol" "Shift<Key>b"		"geReturn()")
;   bk("Symbol" "Ctrl<Key>b"		"")
    ;---------------------------------------------------------------------------
    bk("Symbol" "<Key>c"		"schHiCopy()")
;   bk("Symbol" "Shift<Key>c"		"")
    bk("Symbol" "Ctrl<Key>c"		"bldYank()")
    ;---------------------------------------------------------------------------
    bk("Symbol" "<Key>d"		"schHiStretch()")
    bk("Symbol" "Shift<Key>d"		"schHiFind()")
    bk("Symbol" "Ctrl<Key>d"		"schHiChangeEditMode(\"r\")")
    ;---------------------------------------------------------------------------
    bk("Symbol" "<Key>e"		"schHiEditorOptions()")
    bk("Symbol" "Shift<Key>e"		"schHiChangeEditMode(\"a\")")
    bk("Symbol" "Ctrl<Key>e"		"schHiReturn() schDeselectAllFig()")
    ;---------------------------------------------------------------------------
    bk("Symbol" "<Key>f" 		"hiZoomAbsoluteScale(getCurrentWindow() 1.0)")
    bk("Symbol" "Shift<Key>f"		"schSetEnv(\"sideways\" t) schHiMove() mouseAddPt()")
    bk("Symbol" "Ctrl<Key>f"    	"schSetEnv(\"upsideDown\" t) schHiMove() mouseAddPt()")
    ;---------------------------------------------------------------------------
    bk("Symbol" "<Key>g"		"{geSingleSelectPoint() schHiDescendRead()}")
    bk("Symbol" "Shift<Key>g"		"{geSingleSelectPoint() schHiDescendEdit()}")
;   bk("Symbol" "Ctrl<Key>g"		"")
    ;---------------------------------------------------------------------------
    bk("Symbol" "<Key>h"		"geScroll(nil \"w\" nil)")
    bk("Symbol" "Shift<Key>h"   	"{geSingleSelectPoint()
    					 gePush(hiGetCurrentWindow() \"r\"
					 car(selectedSet()) 1 1 1 nil)}")
    bk("Symbol" "Ctrl<Key>h"    	"schHiEditInPlace()")
    ;---------------------------------------------------------------------------
    bk("Symbol" "<Key>i"        	"schHiCreateInst()")
    bk("Symbol" "Shift<Key>i"		"leSetEntryLayer(`(instance drawing))
    					 leSetAllLayerVisible(nil) leSetAllLayerSelectable(nil) 
					 bldToggleLayer(`(instance text TEXT STDTXT BOUNDARY))
					 bldToggleLayer(`(instance POLY M1 M2 M3 M4 M5) `label)
    					 leSetLayerSelectable(`(instance label) nil) 
    					 leSetLayerSelectable(`(BOUNDARY drawing) nil)
					 hiRedraw()")
;   bk("Symbol" "Ctrl<Key>i"		"")
    ;---------------------------------------------------------------------------
    bk("Symbol" "<Key>j"		"geScroll(nil \"s\" nil)")
;   bk("Symbol" "Shift<Key>j"		"")
;   bk("Symbol" "Ctrl<Key>j"		"")
    ;---------------------------------------------------------------------------
    bk("Symbol" "<Key>k"		"geScroll(nil \"n\" nil)")
    bk("Symbol" "Shift<Key>k"		"schHiSymStretch()")
    bk("Symbol" "Ctrl<Key>k"		"{geAddSelectBox() schHiSymStretch()}")
    ;---------------------------------------------------------------------------
    bk("Symbol" "<Key>l"		"geScroll(nil \"e\" nil)")
    bk("Symbol" "Shift<Key>l"		"schHiCreateNoteLabel()")
    bk("Symbol" "Ctrl<Key>l"		"schHiEditLabelProp()")
    ;---------------------------------------------------------------------------
    bk("Symbol" "<Key>m"		"schHiMove()")
;   bk("Symbol" "Shift<Key>m"		"")
;   bk("Symbol" "Ctrl<Key>m"		"")
    ;---------------------------------------------------------------------------
;   bk("Symbol" "<Key>n"		"")
    bk("Symbol" "Shift<Key>n"   	"schHiCreateNoteLabel()")
;   bk("Symbol" "Ctrl<Key>n"		"")
    ;---------------------------------------------------------------------------
    bk("Symbol" "<Key>o"		"schHiOpenCellView()")
    bk("Symbol" "Shift<Key>o"		"schHiEditorOptions()")
    bk("Symbol" "Ctrl<Key>o"		"schHiGridOptions()")
    ;---------------------------------------------------------------------------
    bk("Symbol" "<Key>p"		"hiPan()")
    bk("Symbol" "Shift<Key>p"		"schHiCreatePin()")
    bk("Symbol" "Ctrl<Key>p"		"schHiEditPinProp()")
    ;---------------------------------------------------------------------------
    ;bk("Symbol" "<Key>q"		"geQuerySelSet(getCurrentWindow())")
    bk("Symbol" "<Key>q"                "schHiObjectProperty()")
    bk("Symbol" "Shift<Key>q"		"schHiCellViewProperty()")
    bk("Symbol" "Ctrl<Key>q"    	"madSchematicPlisted()")
    ;---------------------------------------------------------------------------
    bk("Symbol" "<Key>r"		"schHiReturn() schDeselectAllFig()")
    bk("Symbol" "Shift<Key>r"		"schSetEnv(\"rotate\" t) schHiMove() mouseAddPt()")
    bk("Symbol" "Ctrl<Key>r"		"schHiReplace()")
    ;---------------------------------------------------------------------------
    bk("Symbol" "<Key>s"	    	"geSubSelectPoint()")
    bk("Symbol" "Shift<Key>s"   	"geSubSelectBox()")
    bk("Symbol" "Ctrl<Key>s"    	"geDeselectAllFig()")
    ;---------------------------------------------------------------------------
    bk("Symbol" "<Key>t"		"schHiLayerTap()")
    bk("Symbol" "Shift<Key>t"   	"schHiCreateNoteLabel()")
    bk("Symbol" "Ctrl<Key>t"		"schHiCreateNoteLabel()")
    ;---------------------------------------------------------------------------
    bk("Symbol" "<Key>u"		"hiUndo()")
    bk("Symbol" "Shift<Key>u"   	"hiRedo()")
    bk("Symbol" "Ctrl<Key>u"     	"geDiscardEdits()")
    ;---------------------------------------------------------------------------
    bk("Symbol" "<Key>v"		"hiZoomIn()")
    bk("Symbol" "Shift<Key>v"		"hiPrevWinView(hiGetCurrentWindow())")
    bk("Symbol" "Ctrl<Key>v"		"hiNextWinView(hiGetCurrentWindow())")
    ;---------------------------------------------------------------------------
    bk("Symbol" "<Key>w"		"schHiCreateSymbolShape(\"line\" \"outline\" 0.0)")
    bk("Symbol" "Shift<Key>w"		"schHiCreateSymbolShape(\"line\" \"solid\" 0.025)")
    bk("Symbol" "Ctrl<Key>w"		"schHiEditWire()")
    ;---------------------------------------------------------------------------
;   bk("Symbol" "<Key>x"	    	"")
;   bk("Symbol" "Shift<Key>x"   	"")
;   bk("Symbol" "Ctrl<Key>x"    	"")
    ;---------------------------------------------------------------------------
    bk("Symbol" "<Key>y"		"schHiSymStretch()")
;   bk("Symbol" "Shift<Key>y"		"")
    bk("Symbol" "Ctrl<Key>y"		"hiPan()")
    ;---------------------------------------------------------------------------
    bk("Symbol" "<Key>z" 		"hiZoomRelativeScale(getCurrentWindow() 0.5)")
    bk("Symbol" "Shift<Key>z" 		"hiZoomRelativeScale(getCurrentWindow() 2.0)")
    bk("Symbol" "Ctrl<Key>z" 		"hiZoomRelativeScale(getCurrentWindow() 2.0) hiPan()")

    ;***************************************************************************
    ; Standard Numeric Keys
    ;***************************************************************************

    bk("Symbol" "<Key>1"		"hiRedraw()")
;   bk("Symbol" "Shift<Key>1"		"")
;   bk("Symbol" "Ctrl<Key>1"		"")

    bk("Symbol" "<Key>2"		"hiPrevWinView(hiGetCurrentWindow())")
;   bk("Symbol" "Shift<Key>2"		"")
;   bk("Symbol" "Ctrl<Key>2"		"")

    bk("Symbol" "<Key>3"		"schHiCheckAndSave()")
;   bk("Symbol" "Shift<Key>3"		"")
;   bk("Symbol" "Ctrl<Key>3"		"")

    bk("Symbol" "<Key>4"		"hiVectorPan()")
;   bk("Symbol" "Shift<Key>4"		"")
;   bk("Symbol" "Ctrl<Key>4"		"")

    bk("Symbol" "<Key>5"		"schHiRouteFlightLine()")
;   bk("Symbol" "Shift<Key>5"		"")
;   bk("Symbol" "Ctrl<Key>5"		"")

    bk("Symbol" "<Key>6"		"schHiCheck(\"run\")")
    bk("Symbol" "Shift<Key>6"		"schHiCheckAndSave()")
;   bk("Symbol" "Ctrl<Key>6"		"")

    bk("Symbol" "<Key>7"		"madSimInitEnv()")
;   bk("Symbol" "Shift<Key>7"		"")
;   bk("Symbol" "Ctrl<Key>7"		"")

    bk("Symbol" "<Key>8"		"schHiHiliteLabel(\"instance\" \"on\")")
    bk("Symbol" "Shift<Key>8"   	"schHiHiliteLabel(\"instance\" \"off\")")
;   bk("Symbol" "Ctrl<Key>8"		"")

    bk("Symbol" "<Key>9"		"geAddNetProbe()")
    bk("Symbol" "Shift<Key>9"		"DS2Opus(nil)")
;   bk("Symbol" "Ctrl<Key>9"		"")

    bk("Symbol" "<Key>0"		"geDeleteNetProbe()")
    bk("Symbol" "Shift<Key>0"		"geDeleteAllProbe()")
;   bk("Symbol" "Ctrl<Key>0"		"")

    ;***************************************************************************
    ; Special Keys
    ;***************************************************************************
    
    bk("Symbol" "<Key>[" 		"deOpen()")
    bk("Symbol" "<Key>]" 		"hiCloseWindow(hiGetCurrentWindow())")
    
    bk("Symbol" "<Key>/"		"hiRedraw()")
    bk("Symbol" "Shift<Key>/"		"geHiExplainMarker()")
    
    bk("Symbol" "<Key>,"		"geSaveAs()")
    
    bk("Symbol" "backspace"		"schHiDelete()")
   
    bk("Symbol" "<Key>-"		"schHiDelete()")
    
    bk("Symbol" "<Key>Delete"		"schHiDelete()")
    
    bk("Symbol" "<Key>."		"leHiCreateRuler()")
    bk("Symbol" "Shift<Key>."		"leHiClearRuler()")

    ;***************************************************************************
    ; Function Keys
    ;***************************************************************************
    
    bk("Symbol" "<Key>F2"		"geSave()")
    bk("Symbol" "<Key>F5" 		"deOpen()")
    bk("Symbol" "<Key>F6"		"hiRedraw()")

    ;***************************************************************************
    ; Numeric Key Pad (Window Panning Functions)
    ;***************************************************************************
    
    bk("Symbol" "<Key>Down"		"geScroll(nil \"s\" nil)")
    bk("Symbol" "<Key>Up"		"geScroll(nil \"n\" nil)")
    bk("Symbol" "<Key>Right"		"geScroll(nil \"e\" nil)")
    bk("Symbol" "<Key>Left"		"geScroll(nil \"w\" nil)")

    ;***************************************************************************
    ; Specific bindkeys (prefix "Symbol").  These bindkeys are bound to
    ; schematic editor ("Symbol") functionality.
    ;***************************************************************************
    ; Mouse Keys
    ;***************************************************************************

    bk("Symbol" "None<Btn1Down>(2) EF" 	"schMouseApplyOrFinish()")
    bk("Symbol" "None<Btn2Down>"     	"schHiMousePopUp()")
    bk("Symbol" "None<Btn2Down> EF"  	"schHiMousePopUp()")
    bk("Symbol" "None<Btn3Down> EF"  	"schCmdOption()")
    bk("Symbol" "Shift<Btn3Down> EF" 	"schShiftCmdOption()")
 
    ;***************************************************************************
    ; General bindkeys (prefix "Symbol").  These bindkeys are bound to
    ; graphics editor ("ge") and human interface ("hi") functionality.
    ;***************************************************************************
    ; General bindkeys (prefix "Read HDL").
    ;***************************************************************************
    
    bk("Read HDL" "Ctrl<Key>s"		"hiSaveAsViewfile()")
    bk("Read HDL" "Ctrl<Key>e"		"schHDLReturn()")

    ;***************************************************************************
    ; Example Keys
    ;***************************************************************************

;   bk("Symbol" "Ctrl<Key>e"		"schHiReturn()")
;   bk("Symbol" "<Key>o"        	"schHiDisplayOptions()")
;   bk("Symbol" "Shift<Key>p"		"hiVectorPan()")
;   bk("Symbol" "Shift<Key>w"		"schHiCreateWire(getCurrentWindow()->pathWidth)")

;else 
   ; Eat up the capability check warning message
;   getWarn()
;); if
