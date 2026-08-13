<#
.SYNOPSIS
    Script para conectar o repositório local ao GitHub remoto
.DESCRIPTION
    Configura o remote 'origin' apontando para https://github.com/professortoniati/2608-rasp
    e faz o push inicial para a branch main.
.NOTES
    Autor: Arquiteto de Software / DevOps
    Projeto: Rasp Automação - Refatoração do Site
#>

param(
    [string]$RepoUrl = "https://github.com/professortoniati/2608-rasp.git",
    [string]$Branch = "main"
)

Write-Host "============================================" -ForegroundColor Cyan
Write-Host "  Rasp Automação - Setup GitHub Remote" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""

# Verificar se estamos em um repositório git
if (-not (Test-Path ".git")) {
    Write-Error "Erro: Este diretório não é um repositório Git. Execute 'git init' primeiro."
    exit 1
}

# Verificar se já existe remote origin
$existingRemote = git remote get-url origin 2>$null
if ($existingRemote) {
    Write-Warning "Remote 'origin' já existe: $existingRemote"
    $update = Read-Host "Deseja atualizar para '$RepoUrl'? (s/N)"
    if ($update -notmatch '^[sS]$') {
        Write-Host "Operação cancelada."
        exit 0
    }
    git remote set-url origin $RepoUrl
    Write-Host "Remote 'origin' atualizado para: $RepoUrl" -ForegroundColor Green
} else {
    git remote add origin $RepoUrl
    Write-Host "Remote 'origin' adicionado: $RepoUrl" -ForegroundColor Green
}

# Verificar branch atual
$currentBranch = git branch --show-current
Write-Host "Branch atual: $currentBranch" -ForegroundColor Yellow

if ($currentBranch -ne $Branch) {
    Write-Host "Renomeando branch para '$Branch'..." -ForegroundColor Yellow
    git branch -M $Branch
}

# Verificar status
Write-Host ""
Write-Host "Status do repositório:" -ForegroundColor Cyan
git status --short

# Push inicial
Write-Host ""
Write-Host "Enviando para o GitHub..." -ForegroundColor Cyan
Write-Host "Executando: git push -u origin $Branch" -ForegroundColor Gray

try {
    git push -u origin $Branch
    Write-Host ""
    Write-Host "��� Sucesso! Repositório publicado em:" -ForegroundColor Green
    Write-Host "   $RepoUrl" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Para configurar GitHub Pages:" -ForegroundColor Yellow
    Write-Host "1. Acesse: https://github.com/professortoniati/2608-rasp/settings/pages" -ForegroundColor Gray
    Write-Host "2. Source: 'Deploy from a branch'" -ForegroundColor Gray
    Write-Host "3. Branch: 'main' / '(root)'" -ForegroundColor Gray
    Write-Host "4. Clique em Save" -ForegroundColor Gray
    Write-Host ""
    Write-Host "URL do site: https://professortoniati.github.io/2608-rasp/" -ForegroundColor Cyan
}
catch {
    Write-Error "Erro ao fazer push: $_"
    Write-Host ""
    Write-Host "Possíveis soluções:" -ForegroundColor Yellow
    Write-Host "1. Verifique se o repositório existe no GitHub" -ForegroundColor Gray
    Write-Host "2. Verifique suas credenciais (git config --global user.name/email)" -ForegroundColor Gray
    Write-Host "3. Se o repo não estiver vazio, tente: git push -u origin $Branch --force" -ForegroundColor Gray
    exit 1
}