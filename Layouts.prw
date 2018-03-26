#include "TOTVS.CH"

// Alinhamento do método addInLayout
#define LAYOUT_ALIGN_LEFT     1
#define LAYOUT_ALIGN_RIGHT    2
#define LAYOUT_ALIGN_HCENTER  4
#define LAYOUT_ALIGN_TOP      32
#define LAYOUT_ALIGN_BOTTOM   64
#define LAYOUT_ALIGN_VCENTER  128

// Alinhamento para preenchimento dos componentes no TLinearLayout
#define LAYOUT_LINEAR_L2R 0 // LEFT TO RIGHT
#define LAYOUT_LINEAR_R2L 1 // RIGHT TO LEFT
#define LAYOUT_LINEAR_T2B 2 // TOP TO BOTTOM
#define LAYOUT_LINEAR_B2T 3 // BOTTOM TO TOP

//-------------------
// TGRIDLAYOUT
//-------------------
function u_LayGrid()
	oWnd:= TWindow():New(0, 0, 200, 200, "TGridLayout", NIL, NIL, NIL, NIL, NIL, NIL, NIL, CLR_BLACK, CLR_WHITE, NIL, NIL, NIL, NIL, NIL, NIL, .T. )
	oWnd:setCss("QPushButton{borderDummy: 1px solid black;}")
	
	oLayout1:= TGridLayout():New(oWnd,CONTROL_ALIGN_ALLCLIENT,0,0)

	oTButton1 := TButton():New( 0, 0, "Botão 01", oLayout1,{||alert("Botão 01")}, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )
	oTButton2 := TButton():New( 0, 0, "Botão 02", oLayout1,{||alert("Botão 02")}, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )
	oTButton3 := TButton():New( 0, 0, "Botão 03", oLayout1,{||alert("Botão 03")}, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )
	oLayout1:addInLayout(oTButton1, 1, 1, , ,LAYOUT_ALIGN_TOP)
	oLayout1:addInLayout(oTButton2, 1, 2, , ,LAYOUT_ALIGN_VCENTER)
	oLayout1:addInLayout(oTButton3, 1, 3, , ,LAYOUT_ALIGN_BOTTOM)
	oTButton1:cToolTip := "Linha: 01; Coluna: 01; SpanLinha: 00; SpanColuna: 00; Alinhado: Topo"
	oTButton2:cToolTip := "Linha: 01; Coluna: 02; SpanLinha: 00; SpanColuna: 00; Alinhado: Centro+Vertical"
	oTButton3:cToolTip := "Linha: 01; Coluna: 03; SpanLinha: 00; SpanColuna: 00; Alinhado: Rodapé"

	oTButton4 := TButton():New( 0, 0, "Botão 04", oLayout1,{||alert("Botão 04")}, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )
	oLayout1:addInLayout(oTButton4, 2, 1, , 3)
	oTButton4:cToolTip := "Linha: 02; Coluna: 01; SpanLinha: 00; SpanColuna: 03; Alinhado: NULL"
	
	oTButton5 := TButton():New( 0, 0, "Botão 05", oLayout1,{||alert("Botão 05")}, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )
	oTButton6 := TButton():New( 0, 0, "Botão 06", oLayout1,{||alert("Botão 06")}, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )
	oLayout1:addInLayout(oTButton5, 3, 1, ,2)
	oLayout1:addInLayout(oTButton6, 3, 3)
	oTButton5:cToolTip := "Linha: 03; Coluna: 01; SpanLinha: 00; SpanColuna: 02; Alinhado: NULL"
	oTButton6:cToolTip := "Linha: 03; Coluna: 03; SpanLinha: 00; SpanColuna: 00; Alinhado: NULL"

	oTButton7 := TButton():New( 0, 0, "Botão 07", oLayout1,{||alert("Botão 07")}, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )
	oTButton8 := TButton():New( 0, 0, "Botão 08", oLayout1,{||alert("Botão 08")}, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )
	oTButton9 := TButton():New( 0, 0, "Botão 09", oLayout1,{||alert("Botão 09")}, 80,10,,,.F.,.T.,.F.,,.F.,,,.F. )
	oLayout1:addInLayout(oTButton7, 4, 1, , , LAYOUT_ALIGN_RIGHT)
	oLayout1:addInLayout(oTButton8, 4, 2, 2)
	oLayout1:addInLayout(oTButton9, 4, 3, , , LAYOUT_ALIGN_LEFT)
	oTButton7:cToolTip := "Linha: 04; Coluna: 01; SpanLinha: 00; SpanColuna: 00; Alinhado: Direita; <b><font color=red>[Tamanho Fixo]</b></font>"
	oTButton8:cToolTip := "Linha: 04; Coluna: 02; SpanLinha: 02; SpanColuna: 00; Alinhado: NULL"
	oTButton9:cToolTip := "Linha: 04; Coluna: 03; SpanLinha: 00; SpanColuna: 00; Alinhado: Esquerda; <b><font color=red>[Tamanho Fixo]</b></font>""

	oTButton10 := TButton():New( 0, 0, "Botão 10", oLayout1,{||alert("Botão 10")}, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )
	oTButton11 := TButton():New( 0, 0, "Botão 11", oLayout1,{||alert("Botão 11")}, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )
	oLayout1:addInLayout(oTButton10, 5, 1)
	oLayout1:addInLayout(oTButton11, 5, 3)
	oTButton10:cToolTip := "Linha: 05; Coluna: 01; SpanLinha: 00; SpanColuna: 00; Alinhado: NULL"
	oTButton11:cToolTip := "Linha: 05; Coluna: 03; SpanLinha: 00; SpanColuna: 00; Alinhado: NULL"

	oWnd:Activate()
return

//--------------------------------------
// MULTIPLOS LAYOUTS
//--------------------------------------
function u_LayGrid2()

	oWnd:= TWindow():New(100, 100, 200, 200, "Multiplos Layouts",,,,,,,,CLR_BLACK, CLR_WHITE)
	//oWnd = MsDialog():New( 000, 000, 160, 600, "Multiplos Layouts",,,.F.,, 0, 16777215,,,.T.,, ,.F. )
	oWnd:setCss("QWidget{padding: 5px;}")

	//----------------------------------------------------------------------------
	// Layout principal
	//----------------------------------------------------------------------------
	oLayGrid:= TGridLayout():New(oWnd,CONTROL_ALIGN_ALLCLIENT)

	//----------------------------------------------------------------------------
	// Segundo layout vai organizar campos de preenchimento
	//----------------------------------------------------------------------------
	oLayGrid2 := TGridLayout():New(oWnd, LAYOUT_LINEAR_L2R)
	oLayGrid2:setCss("QWidget{padding: 0px; margin-top: 4px;}") 

	oSay1 := TSay():New(01,01,{||"Lorem"},oLayGrid,,,,,,.T.,,,20,10)
	oSay2 := TSay():New(01,01,{||"ipsum"},oLayGrid,,,,,,.T.,,,20,10)
	oSay3 := TSay():New(01,01,{||"dolor"},oLayGrid,,,,,,.T.,,,20,10)
	oSay4 := TSay():New(01,01,{||"Sit"  },oLayGrid,,,,,,.T.,,,20,10)
	oLayGrid2:addInLayout(oSay1, 1, 1,,,LAYOUT_ALIGN_VCENTER)
	oLayGrid2:addInLayout(oSay2, 2, 1,,,LAYOUT_ALIGN_VCENTER)
	oLayGrid2:addInLayout(oSay3, 3, 1,,,LAYOUT_ALIGN_VCENTER)
	oLayGrid2:addInLayout(oSay4, 4, 1,,,LAYOUT_ALIGN_VCENTER)
	oGet1 := TGet():New(0,0,{|u| space(100) },oLayGrid,100,10,,,0,,,.F.,,.T.,,.F.,,.F.,.F.,,.F.,.F. ,,"",,,, )
	oGet2 := TGet():New(0,0,{|u| space(100) },oLayGrid,100,10,,,0,,,.F.,,.T.,,.F.,,.F.,.F.,,.F.,.F. ,,"",,,, )
	oGet3 := TGet():New(0,0,{|u| space(100) },oLayGrid,100,10,,,0,,,.F.,,.T.,,.F.,,.F.,.F.,,.F.,.F. ,,"",,,, )
	oGet4 := TGet():New(0,0,{|u| space(100) },oLayGrid,100,10,,,0,,,.F.,,.T.,,.F.,,.F.,.F.,,.F.,.F. ,,"",,,, )
	oLayGrid2:addInLayout(oGet1, 1, 2,,,)
	oLayGrid2:addInLayout(oGet2, 2, 2,,,)
	oLayGrid2:addInLayout(oGet3, 3, 2,,,)
	oLayGrid2:addInLayout(oGet4, 4, 2,,,)
	
	//----------------------------------------------------------------------------
	// Terceiro layout vai conter um TGet e um TButtom alinhado a direita
	//----------------------------------------------------------------------------
	oLayGrid3 := TGridLayout():New(oWnd, LAYOUT_LINEAR_L2R, CONTROL_ALIGN_BOTTOM, 0, 10)
	oLayGrid3:setCss("QWidget{padding: 0px;}") 
	
	oGetCentral := TGet():New(0,0,{|u|space(100)},oLayGrid3,100,10,,,0,,,.F.,,.T.,,.F.,,.F.,.F.,,.F.,.F. ,,"",,,, )
	oBtnCentral := TButton():New( 0, 0, "...", oLayGrid3,{||},10,13,,,.F.,.T.,.F.,,.F.,,,.F. )
	oLayGrid3:addInLayout(oGetCentral, 1, 1,,,)
	oLayGrid3:addInLayout(oBtnCentral, 1, 2,,,LAYOUT_ALIGN_RIGHT)

	//----------------------------------------------------------------------------
	// Neste ponto insiro os layouts secundarios dentro do principal
	//----------------------------------------------------------------------------
	oLayGrid:addInLayout(oLayGrid2, 1, 1,, 4, LAYOUT_ALIGN_TOP)	
	oLayGrid:addInLayout(oLayGrid3, 2, 1, , 4, )	

	oTButton1 := TButton():New( 0, 0, "Cancelar", oLayGrid,{||}, 40,12,,,.F.,.T.,.F.,,.F.,,,.F. )
	oTButton2 := TButton():New( 0, 0, "Ok", oLayGrid,{||}, 40,12,,,.F.,.T.,.F.,,.F.,,,.F. )
	oLayGrid:addInLayout(oTButton1, 3, 3, , ,)
	oLayGrid:addInLayout(oTButton2, 3, 4, , ,)

	oWnd:Activate()
return

//-------------------
// TFLOWLAYOUT
//-------------------
function u_LayFlow()
	oWnd:= TWindow():New(0, 0, 550, 700, "TFlowLayout", NIL, NIL, NIL, NIL, NIL, NIL, NIL, CLR_BLACK, CLR_WHITE, NIL, NIL, NIL, NIL, NIL, NIL, .T. )
	oWnd:setCss("QPushButton{borderDummy: 1px solid black;}")

	oLayout1:= tFlowLayout():New(oWnd,CONTROL_ALIGN_ALLCLIENT,0,0)

	oTButton1 := TButton():New( 0, 0, "Botão 01", oLayout1,{||alert("Botão 01")}, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )
	oTButton2 := TButton():New( 0, 0, "Botão 02", oLayout1,{||alert("Botão 02")}, 40,10,,,.F.,.T.,.F.,,.F.,,,.F. )
	oTButton3 := TButton():New( 0, 0, "Botão 03", oLayout1,{||alert("Botão 03")}, 80,10,,,.F.,.T.,.F.,,.F.,,,.F. )
	oTButton4 := TButton():New( 0, 0, "Botão 04", oLayout1,{||alert("Botão 04")}, 80,10,,,.F.,.T.,.F.,,.F.,,,.F. )
	oTButton5 := TButton():New( 0, 0, "Botão 05", oLayout1,{||alert("Botão 05")}, 40,20,,,.F.,.T.,.F.,,.F.,,,.F. )
	oTButton6 := TButton():New( 0, 0, "Botão 06", oLayout1,{||alert("Botão 06")}, 40,20,,,.F.,.T.,.F.,,.F.,,,.F. )
	oLayout1:AddInLayout(oTButton1)
	oLayout1:AddInLayout(oTButton2)
	oLayout1:AddInLayout(oTButton3)
	oLayout1:AddInLayout(oTButton4)
	oLayout1:AddInLayout(oTButton5)
	oLayout1:AddInLayout(oTButton6)

	oPanel1 := tPanel():New(01,01,"oPanel1",oLayout1,,.T.,,,CLR_HGRAY,050,050)
	oPanel2 := tPanel():New(01,01,"oPanel2",oLayout1,,.T.,,,CLR_HGRAY,050,100)
	oPanel3 := tPanel():New(01,01,"oPanel3",oLayout1,,.T.,,,CLR_HGRAY,100,050)
	oLayout1:AddInLayout(oPanel1)
	oLayout1:AddInLayout(oPanel2)
	oLayout1:AddInLayout(oPanel3)

	oWnd:Activate()
return

//-------------------
// TLINEARLAYOUT
//-------------------
function u_LayLinear()
	oWnd:= TWindow():New(0, 0, 500, 400, "TLinearLayout", NIL, NIL, NIL, NIL, NIL, NIL, NIL, CLR_BLACK, CLR_WHITE, NIL, NIL, NIL, NIL, NIL, NIL, .T. )

	//-------------------
	// Frame superior
	//-------------------
	oHeaderLyt := tLinearLayout():New(oWnd, LAYOUT_LINEAR_L2R, CONTROL_ALIGN_TOP, 0, 60)
	oHeaderLyt:SetCSS("QFrame{ background-color: #C6E0B4; margin: 5px; }")
	oSayHeader := TSay():New(0,0,{||"<H1><font color=#424242>Título</H1>"},oHeaderLyt,,,,,,.T.,,,0,0,,,,,,.T.)
	oHeaderLyt:addInLayout(oSayHeader, LAYOUT_ALIGN_HCENTER + LAYOUT_ALIGN_VCENTER) // Centraliza horizontal+vertical

	//-------------------
	// Frame central
	//-------------------
	oBodyLyt := tLinearLayout():New(oWnd, LAYOUT_LINEAR_L2R, CONTROL_ALIGN_ALLCLIENT, 0, 0)

	// Divide Frame central com 3 Paineis
	oPanelL := tPanel():New(0,0,,oBodyLyt,,.T.,,,,0,0)
	oPanelC := tPanel():New(0,0,,oBodyLyt,,.T.,,,,0,0)
	oPanelR := tPanel():New(0,0,,oBodyLyt,,.T.,,,,0,0)
	oBodyLyt:addInLayout(oPanelL,,25)
	oBodyLyt:addInLayout(oPanelC,,50)
	oBodyLyt:addInLayout(oPanelR,,25)

	// Itens do painel Esquerdo
	oMenuLyt := tLinearLayout():New(oPanelL, LAYOUT_LINEAR_T2B, CONTROL_ALIGN_ALLCLIENT, 0, 0)
	oMenuLyt:SetCSS("QFrame{ margin: 5px; } TButton{ background-color: #B4C6E7; color: #424242; text-align: left; margin-bottom: 3px; font-size: 18px; }" )
	oButton1 := TButton():New( 0, 0, "Botão 01", oMenuLyt,{||alert("Botão 01")}, 40,20,,,.F.,.T.,.F.,,.F.,,,.F. )
	oButton2 := TButton():New( 0, 0, "Botão 02", oMenuLyt,{||alert("Botão 02")}, 40,20,,,.F.,.T.,.F.,,.F.,,,.F. )
	oButton3 := TButton():New( 0, 0, "Botão 03", oMenuLyt,{||alert("Botão 03")}, 40,20,,,.F.,.T.,.F.,,.F.,,,.F. )
	oButton4 := TButton():New( 0, 0, "Botão 04", oMenuLyt,{||alert("Botão 04")}, 40,20,,,.F.,.T.,.F.,,.F.,,,.F. )
	oMenuLyt:addInLayout(oButton1)
	oMenuLyt:addInLayout(oButton2)
	oMenuLyt:addInLayout(oButton3)
	oMenuLyt:AddSpacer(5) // Adiciona um espaçador para alinhar o "Botao 04" ao rodape 
	oMenuLyt:addInLayout(oButton4)

	// Itens do painel Central
	oCenterLyt := tLinearLayout():New(oPanelC, LAYOUT_LINEAR_T2B, CONTROL_ALIGN_ALLCLIENT, 0, 0)
	oCenterLyt:SetCSS("QFrame{ margin: 5px; } TSay{ color: #424242; }")
	cCenterTxt := "<h1>Conteúdo</h1><br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus pharetra turpis a tempor tempus. Vivamus sit amet eleifend ante, quis suscipit nulla. Morbi sollicitudin eleifend dapibus. Integer congue sapien quis augue dignissim sodales. Sed a sapien justo. Ut sodales nulla sed lacus sollicitudin, a dignissim magna convallis. Maecenas facilisis purus id aliquam tempus. Quisque tempus magna quis nunc ultrices, sit amet luctus ante facilisis."
	oSayCenter := TSay():New(0,0,{||cCenterTxt},oCenterLyt,,,,,,.T.,,,0,0,,,,,,.T.)
	oCenterLyt:addInLayout(oSayCenter)

	// Itens do painel Direito
	oItemLyt := tLinearLayout():New(oPanelR, LAYOUT_LINEAR_T2B, CONTROL_ALIGN_ALLCLIENT, 0, 0)
	oItemLyt:SetCss("QFrame{ margin: 2px; }")
	cItems := "<h1>Item 1</h1><br>Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br><h1>Item 2</h1><br>Vivamus pharetra turpis a tempor tempus.<br><h1>Item 3</h1><br>Quisque tempus magna quis nunc ultrices, sit amet luctus ante facilisis."
	oSayItem := TSay():New(0,0,{||cItems},oItemLyt,,,,,,.T.,,,0,0,,,,,,.T.)
	oSayItem:SetCss("TSay{ qproperty-alignment: AlignCenter; background-color: #F8CBAD; color: #424242; }")
	oItemLyt:addInLayout(oSayItem)

	//-------------------
	// Frame inferior
	//-------------------
	oBottomLyt := tLinearLayout():New(oWnd, LAYOUT_LINEAR_L2R, CONTROL_ALIGN_BOTTOM, 0, 40)
	oBottomLyt:SetCSS("QFrame{ background-color: #FFE699; color: #424242; margin: 5px; }")
	oSayBottom:= TSay():New(0,0,{||"Redimensione a janela para testar a responsividade."},oBottomLyt,,,,,,.T.,,,0,0,,,,,,.T.)
	oSayBottom:SetCss("TSay{ qproperty-alignment: AlignCenter; font-size: 18px;}")
	oBottomLyt:addInLayout(oSayBottom)

	oWnd:Activate()
return

