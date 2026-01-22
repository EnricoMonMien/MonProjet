# git_push.ps1
# Script simple pour ajouter, committer et pousser les changements sur GitHub

Write-Host "Vérification du statut Git..." -ForegroundColor Cyan
git status

Write-Host "`nAjout de tous les fichiers modifiés..." -ForegroundColor Cyan
git add .

# Demande un message de commit
$message = Read-Host "Entrez le message du commit"
git commit -m "$message"

Write-Host "`nEnvoi vers GitHub..." -ForegroundColor Cyan
git push

Write-Host "`nTerminé ! Votre projet est à jour sur GitHub." -ForegroundColor Green
