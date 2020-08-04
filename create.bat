:: ENTER THE PATH TO WHERE THE PYTHON SCRIPT IS LOCATED
cd <PATH>

python create.py %1



::IF THE FOLDER IS IN ANOTHER DRIVE WRITE "<DRIVE>:" LIKE "E:" IN THIS POSITION TO MOVE TO THE DRIVE 
::ENTER THE PATH TO YOUR PROJECT FOLDERS
cd <PATH>%1

echo # %1 >> README.md
git init

git remote rm origin

:: ENTER YOUR GITHUB USERNAME
git remote add origin git@github.com:<GITHUB-USERNAME>/%1.git



git add .

git commit -m "initial commit"

:: IN ORDER TO PUSH IN ONE LINE FILL THE REQUIRED FIELDS 
git push -u https://<GITHUB--USERNAME>:<GITHUB--PASSWORD>@github.com/<GITHUB-USERNAME>/%1.git master

code .