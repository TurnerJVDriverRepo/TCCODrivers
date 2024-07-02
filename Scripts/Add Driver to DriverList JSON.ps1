# Define the path to the JSON file
$jsonFilePath = "C:\github\TCCODrivers\bin\DriverList.json"

# Get user inputs
$filename = Read-Host "Enter the Filename"
$printerModel = Read-Host "Enter the Printer Model"
$printerDriverName = Read-Host "Enter the Printer Driver Name"
$infFileName = Read-Host "Enter the INF File Name"

# Create a new object with user input
$newEntry = @{
    "Filename" = $filename
    "PrinterModel" = $printerModel
    "PrinterDriver Name" = $printerDriverName
    "INFFileName" = $infFileName
}

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