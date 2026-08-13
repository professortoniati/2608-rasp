#!/bin/bash
# ============================================
#  Rasp Automação - Setup GitHub Remote
#  Script para conectar o repositório local ao GitHub
# ============================================

REPO_URL="https://github.com/professortoniati/2608-rasp.git"
BRANCH="main"

echo "============================================"
echo "  Rasp Automação - Setup GitHub Remote"
echo "============================================"
echo ""

# Verificar se estamos em um repositório git
if [ ! -d ".git" ]; then
    echo "Erro: Este diretório não é um repositório Git. Execute 'git init' primeiro."
    exit 1
fi

# Verificar se já existe remote origin
EXISTING_REMOTE=$(git remote get-url origin 2>/dev/null)
if [ -n "$EXISTING_REMOTE" ]; then
    echo "Aviso: Remote 'origin' já existe: $EXISTING_REMOTE"
    read -p "Deseja atualizar para '$REPO_URL'? (s/N): " UPDATE
    if [[ ! $UPDATE =~ ^[sS]$ ]]; then
        echo "Operação cancelada."
        exit 0
    fi
    git remote set-url origin "$REPO_URL"
    echo "Remote 'origin' atualizado para: $REPO_URL"
else
    git remote add origin "$REPO_URL"
    echo "Remote 'origin' adicionado: $REPO_URL"
fi

# Verificar branch atual
CURRENT_BRANCH=$(git branch --show-current)
echo "Branch atual: $CURRENT_BRANCH"

if [ "$CURRENT_BRANCH" != "$BRANCH" ]; then
    echo "Renomeando branch para '$BRANCH'..."
    git branch -M "$BRANCH"
fi

# Verificar status
echo ""
echo "Status do repositório:"
git status --short

# Push inicial
echo ""
echo "Enviando para o GitHub..."
echo "Executando: git push -u origin $BRANCH"

if git push -u origin "$BRANCH"; then
    echo ""
    echo "��� Sucesso! Repositório publicado em:"
    echo "   $REPO_URL"
    echo ""
    echo "Para configurar GitHub Pages:"
    echo "1. Acesse: https://github.com/professortoniati/2608-rasp/settings/pages"
    echo "2. Source: 'Deploy from a branch'"
    echo "3. Branch: 'main' / '(root)'"
    echo "4. Clique em Save"
    echo ""
    echo "URL do site: https://professortoniati.github.io/2608-rasp/"
else
    echo ""
    echo "��� Erro ao fazer push"
    echo ""
    echo "Possíveis soluções:"
    echo "1. Verifique se o repositório existe no GitHub"
    echo "2. Verifique suas credenciais (git config --global user.name/email)"
    echo "3. Se o repo não estiver vazio, tente: git push -u origin $BRANCH --force"
    exit 1
fi