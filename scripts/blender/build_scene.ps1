param(
    [Parameter(Mandatory = $false)]
    [string]$BlenderExe = "blender"
)

$ErrorActionPreference = "Stop"
$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot "..\.." )).Path
$SceneFile = Join-Path $RepoRoot "blender\scene\elisabethkirche.blend"
$BuildScripts = @(
    "00_scene_setup.py",
    "10_massing.py",
    "20_towers_roofs.py",
    "30_import_lod2_reference.py",
    "40_validation_cameras.py",
    "90_validation.py"
)

Push-Location $RepoRoot
try {
    foreach ($ScriptName in $BuildScripts) {
        $ScriptPath = Join-Path $PSScriptRoot $ScriptName
        if ($ScriptName -eq "00_scene_setup.py") {
            & $BlenderExe -b --python-exit-code 1 --python $ScriptPath
        } else {
            & $BlenderExe -b $SceneFile --python-exit-code 1 --python $ScriptPath
        }
        if ($LASTEXITCODE -ne 0) {
            throw "Blender failed with exit code $LASTEXITCODE while running $ScriptName"
        }
    }
}
finally {
    Pop-Location
}
