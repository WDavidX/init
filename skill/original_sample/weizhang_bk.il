;;-----------------------------------------------------------------------------
;; Bindkeys for 'Layout'
;; Inherited by:
;;             * PcellIDE Layout
;;             * VLS-GXL
;;             * Virtuoso XL
;;             * adegxl-maskLayout
;;             * adexl-maskLayout
;;-----------------------------------------------------------------------------
hiSetBindKeys( "Layout" list(
    list("<DrawThru1>"	"leSelBoxOrStretch()"	"geSingleSelectBox()")
    list("<DrawThru2>"	"hiDynamicPanGrabbing()"	"_cmdOptionDrawThru2()")
    list("<DrawThru3>"	"hiStroke(hiGetCommandPoint())"	"hiZoomIn()")
    list("<Key>#"	"hiToggleAnchorMagnifier()")
    list("<Key>'"	"hiUpdateMagOptions()")
    list("<Key>+"	"leIncrementStopLevelByOne(hiGetCurrentWindow())")
    list("<Key>,"	"geSave()")
    list("<Key>-"	"leDecrementStopLevelByOne(hiGetCurrentWindow())")
    list("<Key>."	"leHiCreateRuler()")
    list("<Key>1"	"geiFindMarker(\"next\")"	"drdEnablePixelThreshold(!drdIsPixelThresholdEnabled())")
    list("<Key>4"	"cidMatchWin()")
    list("<Key>="	"if(getCurrentWindow()->stopLevel >= 1 then     getCurrentWindow()->stopLevel = getCurrentWindow()->stopLevel - 1   else     getCurrentWindow()->stopLevel = 20)")
    list("<Key>A"	"geSingleSelectPoint()")
    list("<Key>B"	"lePlaceBus()")
    list("<Key>BackSpace"	"geDeleteSelSet()"	"deletePoint()")
    list("<Key>C"	"leHiCopy()")
    list("<Key>D"	"geDeselectPoint()")
    list("<Key>Delete"	"geDeleteSelSet()"	"leHiDelete()")
    list("<Key>Down"	"hiAbsolutePan(getCurrentWindow()   0 -80)")
    list("<Key>E"	"leHiEditInPlace()")
    list("<Key>Escape"	""	"cancelEnterFun()")
    list("<Key>F"	"hiZoomAbsoluteScale(hiGetCurrentWindow() 0.9)")
    list("<Key>F1"	"ivProbeAddDevOrNet()")
    list("<Key>F11"	"deToggleAssistants()")
    list("<Key>F12"	"brcmMustConnForm()")
    list("<Key>F2"	"ivProbeRemoveAll()")
    list("<Key>F3"	"geSaveAs()"	"hiToggleEnterForm()")
    list("<Key>F4"	"geTogglePartialSelect()")
    list("<Key>F5"	"if( ( leIsLSWIconified() == t ) then leDeiconifyLSW() else leIconifyLSW() )")
    list("<Key>F6"	"leToggleMaintainConnections()")
    list("<Key>F7"	"RunDivaDRC()")
    list("<Key>F8"	"  ivLVSShowForm->showInfoItem->value = bkLog  hiFormDone(ivLVSShowForm)  hiResizeWindow( nth( length( hiGetWindowList() ) - 1 hiGetWindowList() ) list(250:200 800:600))")
    list("<Key>F9"	"brcmdummyForm()")
    list("<Key>G"	"leHiEditDisplayOptions()")
    list("<Key>H"	"if(leGetGravityMode(getCurrentWindow()) then leSetGravityMode(getCurrentWindow() nil) else leSetGravityMode(getCurrentWindow() t))")
    list("<Key>I"	"leHiCreateInst()")
    list("<Key>J"	"geRefreshCellViews(geGetWindowCellView())")
    list("<Key>K"	"leHiReShape()")
    list("<Key>KP_0"	"addPoint( 0:0 )")
    list("<Key>KP_4"	"cidSetGrid( 4.0 4.0 )")
    list("<Key>KP_5"	"cidSetGrid( 8.0 8.0 )")
    list("<Key>KP_6"	"cidSetGrid( 160.0 112.0 )")
    list("<Key>KP_7"	"cidSetGrid( .5 .5 )")
    list("<Key>KP_8"	"cidSetGrid( 1.0 1.0 )")
    list("<Key>KP_9"	"cidSetGrid( 16.0 16.0 )")
    list("<Key>KP_Add"	"pathlength")
    list("<Key>KP_Divide"	"orRoundShapeId(geGetWindowCellView(hiGetCurrentWindow()))"	"drdAddTarget()")
    list("<Key>KP_Enter"	"mouseAddPt()")
    list("<Key>KP_Equal"	"legRpDelta = 0.5")
    list("<Key>KP_Multiply"	"legRpDelta = 2.0"	"drdRemoveTarget()")
    list("<Key>KP_Subtract"	"if(hiGetCurrentWindow()->dynamicHilightOn == t then     hiGetCurrentWindow()->dynamicHilightOn = nil   else     hiGetCurrentWindow()->dynamicHilightOn = t)")
    list("<Key>L"	"geReturn()")
    list("<Key>Left"	"hiAbsolutePan(getCurrentWindow() -80   0)")
    list("<Key>M"	"leHiMove()")
    list("<Key>N"	"leSetToAngle(\"manhattan\")")
    list("<Key>O"	"hiZoomRelativeScale(hiGetCurrentWindow() 0.5)")
    list("<Key>P"	"hiVectorPan()")
    list("<Key>Q"	"leHiEditProp(hiGetCurrentWindow())")
    list("<Key>R"	"leHiCreateRect()")
    list("<Key>R11"	"geScroll(nil \"\" nil)")
    list("<Key>R13"	"hiAbsolutePan(getCurrentWindow() -80 -80)")
    list("<Key>R15"	"hiAbsolutePan(getCurrentWindow()  80 -80)")
    list("<Key>R4"	"legRpDelta = 0.5")
    list("<Key>R5"	"legRpDelta = 1.0")
    list("<Key>R6"	"legRpDelta = 2.0")
    list("<Key>R7"	"hiAbsolutePan(getCurrentWindow() -80  80)")
    list("<Key>R9"	"hiAbsolutePan(getCurrentWindow()  80  80)")
    list("<Key>Right"	"hiAbsolutePan(getCurrentWindow()  80   0)")
    list("<Key>S"	"leHiStretch()")
    list("<Key>T"	"leHiLayerTap()")
    list("<Key>Tab"	"finishEnterFun()")
    list("<Key>U"	"hiUndo()")
    list("<Key>Up"	"hiAbsolutePan(getCurrentWindow()   0  80)")
    list("<Key>V"	"leHiCreateContact() le8ContactForm->autoContact->value =  t")
    list("<Key>W"	"leHiCreatePath()")
    list("<Key>X"	"leHiCreateLabel()")
    list("<Key>Y"	"leAutoPin()")
    list("<Key>Z"	"hiZoomIn()")
    list("<Key>["	"geOpenDesign(\"a\")")
    list("<Key>]"	"hiCloseWindow(getCurrentWindow())")
    list("<Key>`"	""	"drdToggleSmartSnapMode()")
    list("<Key>space"	"leHiAddWireVia(hiGetCurrentWindow())"	"leSpaceBarFunc(hiGetCurrentWindow() t)")
    list("Ctrl Shift<Btn1Down>"	"hiZoomInMagnifier(hiGetCurrentWindow())")
    list("Ctrl Shift<Btn2Down>"	"hiZoomOutMagnifier(hiGetCurrentWindow())")
    list("Ctrl Shift<Btn4Down>"	""	"weScaleMagnifierOrIncreaseWidth()")
    list("Ctrl Shift<Btn5Down>"	""	"weScaleMagnifierOrDecreaseWidth()")
    list("Ctrl Shift<Key>A"	"leHiAddWireVia(hiGetCurrentWindow() \"down\")")
    list("Ctrl Shift<Key>D"	"leHiP2P()")
    list("Ctrl Shift<Key>Down"	"hiScaleMagnifier(0.80)")
    list("Ctrl Shift<Key>F"	"leFinishEntireNet()")
    list("Ctrl Shift<Key>G"	"weGatherBusWires(hiGetCurrentWindow())")
    list("Ctrl Shift<Key>H"	"drdCompactSelSet('left)")
    list("Ctrl Shift<Key>J"	"drdCompactSelSet('right)")
    list("Ctrl Shift<Key>K"	"leHiClearRulerInHier()")
    list("Ctrl Shift<Key>N"	"drdCompactSelSet('bottom)")
    list("Ctrl Shift<Key>P"	"weCWHoldWidth()")
    list("Ctrl Shift<Key>Q"	"leHiAddWireVia(hiGetCurrentWindow() \"up\")")
    list("Ctrl Shift<Key>S"	"leHiGuidedRouting()")
    list("Ctrl Shift<Key>T"	"drdCompactSelSet('target)")
    list("Ctrl Shift<Key>U"	"drdCompactSelSet('top)")
    list("Ctrl Shift<Key>Up"	"hiScaleMagnifier(1.25)")
    list("Ctrl Shift<Key>V"	"leFinishWire()")
    list("Ctrl Shift<Key>W"	"leHiCreateWire()")
    list("Ctrl Shift<Key>X"	"leHiCreateBus()")
    list("Ctrl Shift<Key>Z"	"leWECycleControlWire()")
    list("Ctrl Shift<Key>space"	"(leWENoSnap)"	"leSpaceBarFunc(hiGetCurrentWindow() \"ctrlShift\")")
    list("Ctrl<Btn1Down>"	"mouseSubSelectPt()"	"mouseSubSelectPt()")
    list("Ctrl<Btn2Down>"	""	"cmdCtrlOption()")
    list("Ctrl<Btn4Down>"	"geScroll(nil \"n\" nil)"	"weScrollOrCycleUpWireViaAlignment()")
    list("Ctrl<Btn5Down>"	"geScroll(nil \"s\" nil)"	"weScrollOrCycleDownWireViaAlignment()")
    list("Ctrl<DrawThru1>"	"geSubSelectBox()"	"geSubSelectBox()")
    list("Ctrl<Key><"	"RevStep()")
    list("Ctrl<Key>A"	"geSelectAll()")
    list("Ctrl<Key>B"	"leBalloonToggleOnOff()")
    list("Ctrl<Key>C"	"mgc_rve_end_enter_function_binding(\"Layout\")")
    list("Ctrl<Key>D"	"geDeselectAll()")
    list("Ctrl<Key>Down"	"geScroll(nil \"s\" t)")
    list("Ctrl<Key>E"	"geSetOptions(nil)")
    list("Ctrl<Key>F"	"getCurrentWindow()->stopLevel = 0")
    list("Ctrl<Key>F1"	"ivProbeShowInfo()")
    list("Ctrl<Key>F11"	"deToggleToolbars()")
    list("Ctrl<Key>F7"	"ivLVSRun()")
    list("Ctrl<Key>G"	"lefiDispMainForm()")
    list("Ctrl<Key>I"	"if(hiGetCIWindow()->infix then hiGetCIWindow()->infix=nil else hiGetCIWindow()->infix=t)")
    list("Ctrl<Key>J"	"leHiFlip()")
    list("Ctrl<Key>K"	"leToggleKeepFirstName()")
    list("Ctrl<Key>L"	"leEIPZoomAbsoluteScale(hiGetCurrentWindow() 0.9)")
    list("Ctrl<Key>Left"	"geScroll(nil \"w\" t)")
    list("Ctrl<Key>M"	"leOpenFixedMenu(geGetEditRep()~>libName)")
    list("Ctrl<Key>N"	"leSetToAngle(\"anyAngle\")")
    list("Ctrl<Key>O"	"hiZoomAbsoluteScale(hiGetCurrentWindow() 1.0)")
    list("Ctrl<Key>P"	"hiRedraw(hiGetCurrentWindow())")
    list("Ctrl<Key>Q"	"leModifySelSet()")
    list("Ctrl<Key>R"	"leHiCreatePolygon()")
    list("Ctrl<Key>R11"	"geScroll(nil \"\" t)")
    list("Ctrl<Key>R13"	"geScroll(nil \"sw\" t)")
    list("Ctrl<Key>R15"	"geScroll(nil \"se\" t)")
    list("Ctrl<Key>R7"	"geScroll(nil \"nw\" t)")
    list("Ctrl<Key>R9"	"geScroll(nil \"ne\" t)")
    list("Ctrl<Key>Right"	"geScroll(nil \"e\" t)")
    list("Ctrl<Key>S"	"leWindowStretch()")
    list("Ctrl<Key>T"	"leTransformSelSet()")
    list("Ctrl<Key>Tab"	"hiLowerWindow(hiGetCurrentWindow())")
    list("Ctrl<Key>Up"	"geScroll(nil \"n\" t)")
    list("Ctrl<Key>V"	"hiFocusToCIW(hiGetCurrentWindow())")
    list("Ctrl<Key>W"	"leRedo()")
    list("Ctrl<Key>X"	"lePlaceMosaic()")
    list("Ctrl<Key>Y"	"cidAddPinText()")
    list("Ctrl<Key>Z"	"hiPrevWinView(getCurrentWindow())")
    list("Ctrl<Key>space"	"(leWECycleSnap)"	"leSpaceBarFunc(hiGetCurrentWindow() \"cancel\")")
    list("None<Btn1Down>"	"mouseSingleSelectPt()"	"mouseAddPt(t)")
    list("None<Btn1Down>(2)"	"leDoubleClick()"	"mouseApplyOrFinishPoint()")
    list("None<Btn2Down>"	"hiRepeat()"	"cmdOption()")
    list("None<Btn3Down>"	"_lxHiMousePopUp()"	"_lxHiMousePopUp()")
    list("None<Btn3Down>(2)"	"leHiEditProp()"	"hiToggleEnterForm()")
    list("None<Btn4Down>"	"hiZoomInAtMouse()")
    list("None<Btn5Down>"	"hiZoomOutAtMouse()")
    list("Return"	"hiRedraw(hiGetCurrentWindow())"	"mouseApplyOrFinishPoint()")
    list("Shift Ctrl<Key>R"	"bldConstructVTGBForm()")
    list("Shift<Btn1Down>"	"mouseAddSelectPt()"	"mouseAddSelectPt()")
    list("Shift<Btn2Down>"	""	"cmdShiftOption()")
    list("Shift<Btn4Down>"	"geScroll(nil \"w\" nil)")
    list("Shift<Btn5Down>"	"geScroll(nil \"e\" nil)")
    list("Shift<DrawThru1>"	"geAddSelectBox()"	"geAddSelectBox()")
    list("Shift<DrawThru3>"	"hiZoomOut()"	"hiZoomOut()")
    list("Shift<Key>."	"leHiClearRuler()")
    list("Shift<Key>/"	"ivDRCExplainError()")
    list("Shift<Key>1"	"geHiFindMarker()")
    list("Shift<Key>4"	"cidMatchWinSetup()")
    list("Shift<Key>="	"if(getCurrentWindow()->stopLevel <= 19 then     getCurrentWindow()->stopLevel = getCurrentWindow()->stopLevel + 1   else     getCurrentWindow()->stopLevel = 0)")
    list("Shift<Key>A"	"geSingleSelectBox()")
    list("Shift<Key>B"	"geReturn()")
    list("Shift<Key>C"	"leCopyFig()")
    list("Shift<Key>D"	"geDeselectArea()")
    list("Shift<Key>Down"	"hiAbsolutePan(getCurrentWindow()   0 -160)")
    list("Shift<Key>E"	"geSetSelectOptions(nil)")
    list("Shift<Key>F"	"if(getCurrentWindow()->stopLevel == 0 then     getCurrentWindow()->stopLevel = 20   else     getCurrentWindow()->stopLevel = 0)")
    list("Shift<Key>F1"	"ivProbeAddNet()")
    list("Shift<Key>F11"	"deToggleToolbars() deToggleAssistants()")
    list("Shift<Key>F2"	"ivProbeRemoveDevOrNet()")
    list("Shift<Key>F4"	" cvid=geGetWindowCellView() plotSetLibrary(cvid~>libName) plotSetCell(cvid~>cellName) plotSetView(cvid~>viewName) plotSetVersion(cvid~>versionName) plotSetPlotter(\"lw1\") plotRun()  ")
    list("Shift<Key>F5"	"leFullSelectFigOfSelSet()")
    list("Shift<Key>F7"	"RunDivaExt()")
    list("Shift<Key>F8"	"  ivLVSShowForm->showInfoItem->value = bkOutput  hiFormDone(ivLVSShowForm)  ")
    list("Shift<Key>G"	"leSetGloEnvVarForm()")
    list("Shift<Key>I"	"leShowFig()")
    list("Shift<Key>K"	"leHiChop()")
    list("Shift<Key>L"	"geReturnToLevel()")
    list("Shift<Key>Left"	"hiAbsolutePan(getCurrentWindow() -160   0)")
    list("Shift<Key>M"	"leMoveFig()")
    list("Shift<Key>N"	"leSetToAngle(\"diagonal\")")
    list("Shift<Key>O"	"hiZoomRelativeScale(hiGetCurrentWindow() 2.0)")
    list("Shift<Key>P"	"hiPan()")
    list("Shift<Key>Q"	"geQuerySelSet(hiGetCurrentWindow())")
    list("Shift<Key>R"	"leHiCreatePath()")
    list("Shift<Key>R11"	"leMoveCursorToRefPoint()")
    list("Shift<Key>R13"	"hiAbsolutePan(getCurrentWindow() -160 -160)")
    list("Shift<Key>R15"	"hiAbsolutePan(getCurrentWindow()  160 -160)")
    list("Shift<Key>R7"	"hiAbsolutePan(getCurrentWindow() -160  160)")
    list("Shift<Key>R9"	"hiAbsolutePan(getCurrentWindow()  160  160)")
    list("Shift<Key>Right"	"hiAbsolutePan(getCurrentWindow()  160   0)")
    list("Shift<Key>S"	"leStretch()")
    list("Shift<Key>T"	"lePlaceTransistor()")
    list("Shift<Key>U"	"hiRedo()")
    list("Shift<Key>Up"	"hiAbsolutePan(getCurrentWindow()   0  160)")
    list("Shift<Key>V"	"leHiCreateContact() le8ContactForm->autoContact->value =  nil ")
    list("Shift<Key>W"	"lePlaceWell()")
    list("Shift<Key>X"	"leHiShowSelSet()")
    list("Shift<Key>Y"	"leHiCreatePin()")
    list("Shift<Key>Z"	"hiZoomRelativeScale(hiGetCurrentWindow() 0.5)")
    list("Shift<Key>space"	""	"leSpaceBarFunc(hiGetCurrentWindow() t t)")
)) ;; hiSetBindKeys
;;-----------------------------------------------------------------------------

;;-----------------------------------------------------------------------------
;; Bindkeys for 'Schematics'
;; Inherited by:
;;             * PcellIDE Schematic
;;             * Schematics XL
;;             * adegxl-schematic
;;             * adexl-schematic
;;-----------------------------------------------------------------------------
hiSetBindKeys( "Schematics" list(
    list("<DrawThru1>"	"schDirectEdit(1)"	"geSingleSelectBox()")
    list("<DrawThru2>"	"hiDynamicPanGrabbing()"	"hiDynamicPanGrabbing()")
    list("<DrawThru3>"	"hiStroke(hiGetCommandPoint())"	"hiZoomIn()")
    list("<Key>#"	"hiToggleAnchorMagnifier()")
    list("<Key>'"	"hiUpdateMagOptions()")
    list("<Key>,"	"schHiCheckAndSave()")
    list("<Key>."	"aceRepeatEdit()")
    list("<Key>0"	"geDeleteAllProbe()")
    list("<Key>5"	"schHiRouteFlightLine()")
    list("<Key>8"	"schHiHiliteLabel(\"instance\" \"on\")")
    list("<Key>9"	"geAddNetProbe()")
    list("<Key>="	"schHiOpenSymbolOrSchematicView(geGetEditCellView() hiGetCurrentWindow())")
    list("<Key>A"	"geSingleSelectPoint()")
    list("<Key>B"	"schHiCreateBlockInst()")
    list("<Key>BackSpace"	"geDeleteSelSet()"	"deletePoint()")
    list("<Key>C"	"schHiCopy()")
    list("<Key>D"	"geSubSelectPoint()")
    list("<Key>Delete"	"schHiDelete()")
    list("<Key>Down"	"geScroll(nil \"s\" nil)")
    list("<Key>E"	"schHiDescendRead()")
    list("<Key>Escape"	""	"cancelEnterFun()")
    list("<Key>F"	"schZoomFit(1.0 0.9)")
    list("<Key>F1"	"ivProbeAddDevOrNet()")
    list("<Key>F11"	"deToggleAssistants()")
    list("<Key>F2"	"ivProbeRemoveAll()")
    list("<Key>F3"	""	"hiToggleEnterForm()")
    list("<Key>F4"	"geTogglePartialSelect()")
    list("<Key>F5"	"bldSchemPlaceDevice(bldTechnologyLib \"nmos\")")
    list("<Key>F6"	"bldSchemPlaceDevice(bldTechnologyLib \"pmos\")")
    list("<Key>F7"	"bldSchemPlacePin(bldTechnologyLib \"vdd\")")
    list("<Key>F8"	"bldSchemPlacePin(bldTechnologyLib \"vss\")")
    list("<Key>G"	"schHiFindMarker()")
    list("<Key>H"	"schHiHiliteLabel(\"wire\" \"on\")")
    list("<Key>I"	"schHiCreateInst()")
    list("<Key>J"	"geRefreshCellViews(geGetWindowCellView())")
    list("<Key>KP_0"	"addPoint( 0:0 )")
    list("<Key>KP_Subtract"	"if(hiGetCurrentWindow()->dynamicHilightOn == t then     hiGetCurrentWindow()->dynamicHilightOn = nil   else     hiGetCurrentWindow()->dynamicHilightOn = t)")
    list("<Key>L"	"schHiCreateWireLabel()")
    list("<Key>Left"	"geScroll(nil \"w\" nil)")
    list("<Key>M"	"schHiStretch() ")
    list("<Key>N"	"schHiCreateNoteShape()")
    list("<Key>O"	"hiZoomRelativeScale(hiGetCurrentWindow() 0.5)")
    list("<Key>P"	"schHiCreatePin()")
    list("<Key>Q"	"schHiObjectProperty()"	"schHiObjectProperty()")
    list("<Key>R"	"schHiRotate()"	"schSetEnv(\"rotate\" t)")
    list("<Key>Right"	"geScroll(nil \"e\" nil)")
    list("<Key>S"	"schHiStretch()"	"schSnapToConn()")
    list("<Key>T"	"aceHiEdit()")
    list("<Key>U"	"hiUndo()")
    list("<Key>Up"	"geScroll(nil \"n\" nil)")
    list("<Key>V"	"hiVectorPan()")
    list("<Key>W"	"schHiCreateWire(0.0)")
    list("<Key>X"	"schHiCheck(\"run\")")
    list("<Key>Y"	"println(geGetInstHier())")
    list("<Key>Z"	"hiZoomIn()")
    list("<Key>["	"hiZoomRelativeScale(getCurrentWindow() 0.8)")
    list("<Key>]"	"hiCloseWindow(getCurrentWindow())")
    list("<Key>space"	"schHiCreateWireStubs()")
    list("Ctrl Shift<Btn1Down>"	"hiZoomInMagnifier(hiGetCurrentWindow())")
    list("Ctrl Shift<Btn2Down>"	"hiZoomOutMagnifier(hiGetCurrentWindow())")
    list("Ctrl Shift<Btn4Down>"	"_schScaleMagnifier(1.25)")
    list("Ctrl Shift<Btn5Down>"	"_schScaleMagnifier(0.80)")
    list("Ctrl Shift<Key>Down"	"hiScaleMagnifier(0.80)")
    list("Ctrl Shift<Key>Up"	"hiScaleMagnifier(1.25)")
    list("Ctrl Shift<Key>Z"	"hiNextWinView(hiGetCurrentWindow())")
    list("Ctrl<Btn1Down>"	"mouseSubSelectPt()"	"mouseSubSelectPt()")
    list("Ctrl<Btn4Down>"	"geScroll(nil \"n\" nil)")
    list("Ctrl<Btn5Down>"	"geScroll(nil \"s\" nil)")
    list("Ctrl<DrawThru1>"	"schDirectEdit(3)"	"geSubSelectBox()")
    list("Ctrl<Key><"	"RevBorder()")
    list("Ctrl<Key>A"	"schSelectAllFig()")
    list("Ctrl<Key>C"	"mgc_rve_end_enter_function_binding(\"Schematics\")")
    list("Ctrl<Key>D"	"schDeselectAllFig()")
    list("Ctrl<Key>E"	"schHiReturn()")
    list("Ctrl<Key>F"	"schSetSelectOptions()")
    list("Ctrl<Key>F1"	"ivProbeShowInfo()")
    list("Ctrl<Key>F11"	"deToggleToolbars()")
    list("Ctrl<Key>F8"	" simViewRunLog()  hiResizeWindow( nth( length( hiGetWindowList() ) - 1 hiGetWindowList() ) list(250:200 800:600))  ")
    list("Ctrl<Key>G"	"geHiDeleteMarker()")
    list("Ctrl<Key>O"	"schHiGridOptions()")
    list("Ctrl<Key>R"	""	"schSetEnv(\"upsideDown\" t)")
    list("Ctrl<Key>S"	"geSaveAs()")
    list("Ctrl<Key>T"	"schHiZoomToSelSet()")
    list("Ctrl<Key>Tab"	"hiLowerWindow(hiGetCurrentWindow())")
    list("Ctrl<Key>V"	"hiFocusToCIW(hiGetCurrentWindow())")
    list("Ctrl<Key>Z"	"hiZoomOut()")
    list("None<Btn1Down>"	"schSingleSelectPt()"	"mouseAddPt(t)")
    list("None<Btn1Down>(2)"	"schSingleSelectPt() schHiDescendEdit()"	"schMouseApplyOrFinish()")
    list("None<Btn2Down>"	"schHiMousePopUp()"	"schHiMousePopUp()")
    list("None<Btn2Down>(2)"	"aceEditSingleProp()")
    list("None<Btn3Down>"	"schHiMousePopUp()"	"schCmdOption()")
    list("None<Btn3Down>(2)"	""	"hiToggleEnterForm()")
    list("None<Btn4Down>"	"hiZoomInAtMouse()")
    list("None<Btn5Down>"	"hiZoomOutAtMouse()")
    list("Shift<Btn1Down>"	"schAddSelectPt()"	"mouseAddSelectPt()")
    list("Shift<Btn1Down>(2)"	"schExtendSelectPt()")
    list("Shift<Btn2Down>"	""	"schShiftCmdOption()")
    list("Shift<Btn3Down>"	""	"schShiftCmdOption()")
    list("Shift<Btn4Down>"	"geScroll(nil \"w\" nil)")
    list("Shift<Btn5Down>"	"geScroll(nil \"e\" nil)")
    list("Shift<DrawThru1>"	"schDirectEdit(2)"	"geAddSelectBox()")
    list("Shift<DrawThru3>"	"hiZoomOut()"	"hiZoomOut()")
    list("Shift<Key>8"	"schHiHiliteLabel(\"instance\" \"off\")")
    list("Shift<Key>A"	"schSingleSelectBox()")
    list("Shift<Key>D"	"schSubSelectBox()")
    list("Shift<Key>E"	"schHiDescendEdit()")
    list("Shift<Key>F"	"hiZoomAbsoluteScale(getCurrentWindow() 0.9)")
    list("Shift<Key>F1"	"ivProbeAddNet()")
    list("Shift<Key>F11"	"deToggleAssistants() deToggleToolbars()")
    list("Shift<Key>F2"	"ivProbeRemoveDevOrNet()")
    list("Shift<Key>F4"	" cvid=geGetWindowCellView() plotSetLibrary(cvid~>libName) plotSetCell(cvid~>cellName) plotSetView(cvid~>viewName) plotSetVersion(cvid~>versionName) plotSetPlotter(\"lw1\") plotRun()  ")
    list("Shift<Key>F8"	"simViewOutput()")
    list("Shift<Key>G"	"schHiFindMarker()")
    list("Shift<Key>H"	"schHiHiliteLabel(\"wire\" \"off\")")
    list("Shift<Key>L"	"schHiCreateNoteLabel()")
    list("Shift<Key>M"	"schHiMove()")
    list("Shift<Key>N"	"schHiCreateNoteLabel()")
    list("Shift<Key>O"	"schHiEditorOptions()")
    list("Shift<Key>P"	"bcmPinNameCheck()")
    list("Shift<Key>Q"	"schHiCellViewProperty()"	"schHiCellViewProperty()")
    list("Shift<Key>R"	""	"schSetEnv(\"sideways\" t)")
    list("Shift<Key>S"	"schHiSaveCellView()")
    list("Shift<Key>T"	"schHiTree()")
    list("Shift<Key>U"	"hiRedo()")
    list("Shift<Key>V"	"_deToggleAssistant(\"World View\")")
    list("Shift<Key>W"	"schHiCreateWire(schGetEnv(\"defWideWireWidth\"))")
    list("Shift<Key>X"	"schHiCheckAndSave()")
    list("Shift<Key>Y"	"schHiReturnToTop()")
    list("Shift<Key>Z"	"hiZoomRelativeScale(getCurrentWindow() 0.8)")
)) ;; hiSetBindKeys
;;-----------------------------------------------------------------------------

