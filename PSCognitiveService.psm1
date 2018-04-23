using assembly System.Drawing
[cmdletbinding()]
param()

$BasePath = 'C:\Data\Powershell\repository\PSCognitiveService'

# define class sequence
$classList = @(
    'Enum',
    'ValidateFile',
    'ValidateImage',
    'ComputerVision',
    'Face',
    'ContentModerator'
)

# importing classes sequentially
foreach ($class in $classList) {
    Write-Verbose "Dot sourcing class '$class'" -Verbose
    . "$BasePath\classes\$class.ps1"
}

iex -Command (gc .\Classes\Face.ps1 | Out-String)

# dot dourcing files
$FolderNames = @(
    'Private',
    'Public'
)

Get-ChildItem $($FolderNames.ForEach({"$BasePath\$_\"})) -Recurse -Filter *.ps1 | ForEach-Object {. $_.FullName}
