# Dot Sourcing files
Get-ChildItem $PSScriptRoot -Recurse  | Where-Object {$_.PSIsContainer -eq $false -and $_.Extension -eq '.ps1' -and $_.Directory -notlike '*x'} | ForEach-Object {
    . $_.FullName
}

#Get-ImageAnalysis -path 'C:\tmp\Bill.jpg' -Verbose
#analyze 'C:\tmp\Bill.jpg' -Verbose
#Get-ImageAnalysis 'C:\tmp\Bill.jpg' -VisualFeatures Faces, Color -Details Celebrities -Verbose
#Get-ImageAnalysis -URL https://pbs.twimg.com/profile_images/963507920016216064/Ug29J5-J_400x400.jpg -Verbose
#man Get-ImageAnalysis -full