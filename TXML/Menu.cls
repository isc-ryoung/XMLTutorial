Class TXML.Menu Extends %CSP.Page
{
ClassMethod OnPage() As %Status
    {
    &html<<html>
    <head>
    </head>
    <body bgcolor="#FFEEEE">>

    // invoke Showmenu to display the menu
    Do ..ShowMenu("/xml/menu.xml")

    &html<</body>
    </html>>
    Quit $$$OK
    }
    
    
    ClassMethod ShowMenu(filename As %String)
{
    Set sc = ##class(%XML.TextReader).ParseFile(filename,.reader)
    If ($$$ISOK(sc)) {
        While (reader.Read()) {
            If ((reader.NodeType = "element") &&
                    (reader.LocalName = "item")) {
                Write reader.Value,"<MENU>",!
                If (reader.MoveToAttributeName("caption")) {
                    Write "<LI>",reader.Value,!
                }
            }
            ElseIf ((reader.NodeType = "endelement") &&
                    (reader.LocalName = "item")) {
                Write reader.Value,"</MENU>",!
            }
        }
    }
    Else {
        // error
        Do $system.OBJ.DisplayError(sc)
    }
}
    
}