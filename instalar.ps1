# Instalador das skills InteligenciaClaude para o Claude Code (Windows).
#
# Uso (no PowerShell):
#   irm https://raw.githubusercontent.com/oliveiracarlosadv/InteligenciaClaude/main/instalar.ps1 | iex
#
# O que faz:
#   - baixa as skills direto do GitHub (sem você precisar baixar nada);
#   - instala cada uma em %USERPROFILE%\.claude\skills\<nome>\SKILL.md;
#   - se a skill já estiver instalada (mesma pasta ou mesmo "name:"), NÃO instala de novo.
#
# Opcional: $env:CLAUDE_SKILLS_DIR = "C:\outra\pasta" antes de rodar.

$ErrorActionPreference = "Stop"
$Repo = "oliveiracarlosadv/InteligenciaClaude"
$Dest = if ($env:CLAUDE_SKILLS_DIR) { $env:CLAUDE_SKILLS_DIR } else { Join-Path $HOME ".claude\skills" }

$Tmp = Join-Path ([IO.Path]::GetTempPath()) ("inteligenciaclaude-" + [guid]::NewGuid())
New-Item -ItemType Directory -Path $Tmp | Out-Null

try {
    Write-Host "Baixando as skills de github.com/$Repo ..."
    $Zip = Join-Path $Tmp "repo.zip"
    Invoke-WebRequest -UseBasicParsing "https://codeload.github.com/$Repo/zip/refs/heads/main" -OutFile $Zip
    Expand-Archive -Path $Zip -DestinationPath $Tmp -Force
    $Src = Get-ChildItem -Path $Tmp -Directory -Recurse -Filter "skills" | Select-Object -First 1
    if (-not $Src) { throw "Pasta skills nao encontrada no download." }

    New-Item -ItemType Directory -Force -Path $Dest | Out-Null

    # Nomes (campo name:) de todas as skills já instaladas
    $Existentes = @()
    Get-ChildItem -Path $Dest -Directory -ErrorAction SilentlyContinue | ForEach-Object {
        $arq = Join-Path $_.FullName "SKILL.md"
        if (Test-Path $arq) {
            $m = Select-String -Path $arq -Pattern '^name:\s*(.+)$' | Select-Object -First 1
            if ($m) { $Existentes += $m.Matches[0].Groups[1].Value.Trim().Trim('"', "'") }
        }
    }

    $instaladas = 0
    $puladas = 0
    Get-ChildItem -Path $Src.FullName -Directory | ForEach-Object {
        $nome = $_.Name
        $origem = Join-Path $_.FullName "SKILL.md"
        if (-not (Test-Path $origem)) { return }
        $destino = Join-Path $Dest $nome
        if ((Test-Path (Join-Path $destino "SKILL.md")) -or ($Existentes -contains $nome)) {
            Write-Host "  - $nome - ja instalada, pulando"
            $puladas++
            return
        }
        New-Item -ItemType Directory -Force -Path $destino | Out-Null
        Copy-Item $origem (Join-Path $destino "SKILL.md")
        Write-Host "  + $nome - instalada"
        $instaladas++
    }

    Write-Host ""
    Write-Host "Pronto. Instaladas: $instaladas | Ja existiam: $puladas"
    Write-Host "Pasta: $Dest"
    Write-Host "Abra uma NOVA sessao do Claude Code e digite /skills para conferir."
}
finally {
    Remove-Item -Recurse -Force $Tmp -ErrorAction SilentlyContinue
}
