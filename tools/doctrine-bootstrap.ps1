param(
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$TargetRepo,
    [switch]$Force
)

$ErrorActionPreference = "Stop"

if (-not (Test-Path -LiteralPath $TargetRepo -PathType Container)) {
    throw "Target directory does not exist: $TargetRepo"
}

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$DoctrineRoot = (Resolve-Path (Join-Path $ScriptDir "..")).Path
$TargetPath = (Resolve-Path $TargetRepo).Path

function Copy-DoctrineFile {
    param(
        [Parameter(Mandatory = $true)][string]$SourceRel,
        [Parameter(Mandatory = $true)][string]$DestRel
    )

    $Source = Join-Path $DoctrineRoot $SourceRel
    $Dest = Join-Path $TargetPath $DestRel

    if (-not (Test-Path -LiteralPath $Source -PathType Leaf)) {
        throw "Missing source file: $Source"
    }

    $DestDir = Split-Path -Parent $Dest
    New-Item -ItemType Directory -Force -Path $DestDir | Out-Null

    if ((Test-Path -LiteralPath $Dest) -and -not $Force.IsPresent) {
        Write-Host "skip  $DestRel (already exists)"
        return
    }

    Copy-Item -LiteralPath $Source -Destination $Dest -Force
    Write-Host "write $DestRel"
}

Copy-DoctrineFile -SourceRel "templates/AGENTS.md" -DestRel "AGENTS.md"
Copy-DoctrineFile -SourceRel "AI_CONTEXT.md" -DestRel "AI_CONTEXT.md"

$DoctrineFiles = @(
    "cpp-template-family.md",
    "coding.md",
    "doctrine-governance.md",
    "identity.md",
    "naming.md",
    "project-standards.md",
    "repo-management.md"
)

foreach ($file in $DoctrineFiles) {
    Copy-DoctrineFile -SourceRel $file -DestRel "docs/doctrine/$file"
}

Copy-DoctrineFile -SourceRel "templates/repo-visibility-note-template.md" -DestRel "docs/doctrine/templates/repo-visibility-note-template.md"
Copy-DoctrineFile -SourceRel "templates/doctrine-change-record-template.md" -DestRel "docs/doctrine/templates/doctrine-change-record-template.md"

$DoctrineIndex = Join-Path $TargetPath "docs/doctrine/README.md"
if ((Test-Path -LiteralPath $DoctrineIndex) -and -not $Force.IsPresent) {
    Write-Host "skip  docs/doctrine/README.md (already exists)"
} else {
    New-Item -ItemType Directory -Force -Path (Split-Path -Parent $DoctrineIndex) | Out-Null
    @"
# Doctrine Snapshot

This folder contains a local doctrine snapshot copied from the Doctrine repository.

## Source of Truth

The canonical source remains the Doctrine repository.

## Refresh

Re-run bootstrap when doctrine updates are needed.
"@ | Set-Content -LiteralPath $DoctrineIndex
    Write-Host "write docs/doctrine/README.md"
}

Write-Host "Bootstrap complete for: $TargetPath"
