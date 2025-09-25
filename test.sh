Get-ChildItem -Recurse -File | ForEach-Object {
    $count = (Select-String -Path $_.FullName -Pattern "SOUND" -AllMatches).Matches.Count
    if ($count -gt 0) {
        [PSCustomObject]@{
            File  = $_.FullName
            Count = $count
        }
    }
}
