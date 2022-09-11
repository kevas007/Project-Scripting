#  Get the name of the project
$Projet = Read-Host "What is the name of your project ?"

write-host "Let's gooooooooo !!!!!!!!🎊✨✨"

Write-Host "have fun 😎🫡"

#   Choose the project you want to install
$Projets = Read-Host "Reactjs  or vuejs or ReactNatvie"


if ($Projets -contains 'react' ) {

# Install  react 

    npx create-react-app $Projet

    cd $Projet

# Install  git
    git init
    
    git add --all
    
    git commit -m "first commit"
    
    git branch -M main
    
    $CheminGit = Read-Host "Votre ripo git hub"
    
    git remote add origin $CheminGit
    
    
    git push -u origin main

    Write-Host "Thank you for using my script 😁🤩"

    # Start project
    npm start
}
elseif ( $Projets -contains 'vue') {
    # Install  vue 3 
    npm init vue@latest $Projet
    cd $Projet
     # Install  vue 3 dependence
    npm install
    # Install  git
    git init
    
    git add --all
    
    git commit -m "first commit"
    
    git branch -M main
    
    $CheminGit = Read-Host "Votre ripo git hub"
    
    git remote add origin $CheminGit
    
    
    git push -u origin main

    Write-Host "Thank you for using my script 😁🤩"
   # Start project
    npm run dev
}
elseif ( $Projets -contains 'react-native') {
    npm install -g expo-cli
       # Install  expo
    expo init $Projet
      # Install  git
    cd $Projet
    git init
    
    git add --all
    
    git commit -m "first commit"
    
    git branch -M main
    
    $CheminGit = Read-Host "Votre ripo git hub"
    
    git remote add origin $CheminGit
    
    
    git push -u origin main

    Write-Host "Thank you for using my script 😁🤩"
     # Start project
    npm start

} else {

    Write-Host "Not available at the moment"
    Write-Host "Thank you for using my script 😁🤩"
}