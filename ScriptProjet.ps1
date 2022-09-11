$Projet = Read-Host "What is the name of your project ?"
write-host "Let's gooooooooo !!!!!!!!🎊✨✨"
Write-Host "have fun 😎🫡"
$Projets = Read-Host "Reactjs  or vuejs or ReactNatvie"


if ($Projets -contains 'react' ) {
    npx create-react-app $Projet

    cd $Projet

    git init
    
    git add --all
    
    git commit -m "first commit"
    
    git branch -M main
    
    $CheminGit = Read-Host "Votre ripo git hub"
    
    git remote add origin $CheminGit
    
    
    git push -u origin main

    Write-Host "Thank you for using my script 😁🤩"
    
    npm start
}
elseif ( $Projets -contains 'vue') {
    npm init vue@latest $Projet
    cd $Projet
    npm install
    
    git init
    
    git add --all
    
    git commit -m "first commit"
    
    git branch -M main
    
    $CheminGit = Read-Host "Votre ripo git hub"
    
    git remote add origin $CheminGit
    
    
    git push -u origin main

    Write-Host "Thank you for using my script 😁🤩"

    npm run dev
}
elseif ( $Projets -contains 'react-native') {
    npm install -g expo-cli
    expo init $Projet
    cd $Projet
    git init
    
    git add --all
    
    git commit -m "first commit"
    
    git branch -M main
    
    $CheminGit = Read-Host "Votre ripo git hub"
    
    git remote add origin $CheminGit
    
    
    git push -u origin main

    Write-Host "Thank you for using my script 😁🤩"
    
    npm start

} else {

    Write-Host "Not available at the moment"
    Write-Host "Thank you for using my script 😁🤩"
}