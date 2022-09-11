#  Get the name of the project
$Projet = Read-Host "What is the name of your project ?"

write-host "Let's gooooooooo !!!!!!!!🎊✨✨"

Write-Host "have fun 😎🫡"

#   Choose the project you want to install
$Projets = Read-Host "Reactjs  or vuejs or ReactNatvie"


$cmdName= 'gh'

if ($Projets -contains 'react' ) {

# Install  react

    npx create-react-app $Projet

    cd $Projet

  # logi to github
    
  if (Get-Command $cmdName -errorAction SilentlyContinue)
  {
      # check if user  login
      gh auth login
      gh repo create $Projet --public
  
      git init
      
      git add --all
      
      git commit -m "first commit"
      
      git branch -M main
  
      $CheminGit = Read-Host "Votre ripo git hub"
      
      
      git push -u origin main
  }
  else {
      
      if (condition) {
      Read-Host = 'We can go to this link : https://cli.github.com/manual/installation'
      }else{
          Read-Host= 'thanks'
      }
  }
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
  # logi to github
    
  if (Get-Command $cmdName -errorAction SilentlyContinue)
  {
      # check if user  login
      gh auth login
      gh repo create $Projet --public
  
      #initial git

      git init
      
      git add --all
      
      git commit -m "first commit"
      
      git branch -M main
  
      $CheminGit = Read-Host "Votre ripo git hub"
      
      
      git push -u origin main
  }
  else {
      
      if (condition) {
      Read-Host = 'We can go to this link : https://cli.github.com/manual/installation'
      }else{
          Read-Host= 'thanks'
      }
  }n

    Write-Host "Thank you for using my script 😁🤩"
   # Start project
    npm run dev
}
elseif ( $Projets -contains 'reactNative') {
    npm install -g expo-cli
       # Install  expo
    expo init $Projet
      # Install  git
    cd $Projet
 
    
  # logi to github
    
if (Get-Command $cmdName -errorAction SilentlyContinue)
{
    # check if user  login
    gh auth login
    gh repo create $Projet --public

    git init
    
    git add --all
    
    git commit -m "first commit"
    
    git branch -M main

    $CheminGit = Read-Host "Votre ripo git hub"
    
    
    git push -u origin main
}
else {
    
    if (condition) {
    Read-Host = 'We can go to this link : https://cli.github.com/manual/installation'
    }else{
        Read-Host= 'thanks'
    }
}
    
 

    Write-Host "Thank you for using my script 😁🤩"
     # Start project
    npm start

} else {

    Write-Host "Not available at the moment"
    Write-Host "Thank you for using my script 😁🤩"
}
