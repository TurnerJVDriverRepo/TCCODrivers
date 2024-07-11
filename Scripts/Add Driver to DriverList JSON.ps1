#open Dialog box for Driverlist.json
Function Get-FileName($InitialDirectory)
{
    [System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms") | Out-Null

  $OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
  $OpenFileDialog.dereferencelinks = $False #Make $True is you want to address of the shortcut rather than the path
  $OpenFileDialog.initialDirectory = $initialDirectory
  $OpenFileDialog.filter = "JSON (*.JSON) | *.JSON"
  $OpenFileDialog.ShowDialog() | Out-Null
  $OpenFileDialog.FileName
}

# Define the path to the JSON file
$jsonFilePath = Get-FileName

# Get user inputs
$filename = Read-Host "Enter the Filename (Ex: Xerox Work Centre 7435.zip)"
$printerModel = Read-Host "Enter the Printer Model (Ex: Xerox WorkCentre 7435)"
$printerDriverName = Read-Host "Enter the Printer Driver Name (Ex: Xerox WorkCentre 7435 V6 PCL6)"
$infFileName = Read-Host "Enter the INF File Name (Ex: XeroxWorkCentre74XX_PCL6.inf)"

# Create a new object with user input
$newEntry = @{
    "PrinterModel" = $printerModel
    "Filename" = $filename
    "DriverLabel" = $printerDriverName
    "INFFileName" = $infFileName
}
$newEntry
# Convert the object to JSON format
$newEntryJson = $newEntry | ConvertTo-Json -Depth 10

# Check if the JSON file exists
if (Test-Path $jsonFilePath) {
    # Read the existing JSON file
    $existingJson = Get-Content -Path $jsonFilePath -Raw | ConvertFrom-Json
    
    # Append the new entry to the existing JSON content
    if ($existingJson -is [System.Collections.ArrayList]) {
        $existingJson.Add($newEntry)
    } else {
        $existingJson = [System.Collections.ArrayList]@($existingJson)
        $existingJson.Add($newEntry)
    }
    
    # Convert back to JSON and write to the file
    $existingJson | ConvertTo-Json -Depth 10 | Set-Content -Path $jsonFilePath -Force
} else {
    # If the JSON file does not exist, create a new array with the new entry
    $newJsonContent = @($newEntry) | ConvertTo-Json -Depth 10
    
    # Write the new JSON content to the file
    $newJsonContent | Set-Content -Path $jsonFilePath -Force
}

Write-Output "The JSON file has been updated."
