Dim i, j As Integer
Dim lastrow As Long
Dim ticker As String
Dim total As Double

For Each ws In Worksheets
 lastrow = ws.Cells(Rows.Count, 1).End(xlUp).Row

'HEADER
 ws.Range("I1").Value = "Ticker"
 ws.Range("J1").Value = "Total Stock Value"

 total = 0
 j = 2

 For i = 2 To lastrow
     If ws.Range("A" & i + 1).Value = ws.Range("A" & i).Value Then
         total = total + ws.Range("G" & i).Value

     Else
         ticker = ws.Range("A" & i).Value
         ws.Range("I" & j).Value = ticker
         ws.Range("J" & j).Value = total + Range("G" & i).Value
         'Add a New Row Next Ticker and Reset Total
         j = j + 1
         total = 0
     End If

 Next i
Next ws

End Sub

