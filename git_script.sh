# initialization
mkdir commits
mkdir src
touch git_script.sh
touch svn_script.sh
git init
git add -A
git commit -m "initialization"
git branch -M main
git remote add origin git@github.com:Luhter1/OPI_lab2.git
git push -u origin main

#local setup(red-frogoo)
git config --local user.email "kaparulinti@mail.ru"
git config --local user.name "red-froggo"

#local setup(blue-frogoo)
git config --local user.email "feironox5@gmail.com"
git config --local user.name "blue-froggo"

#r0 (red-froggo)
unzip ./commits/commit0.zip -d src
git add -A
git commit -m "r0"
git tag r0
git push -u origin main

#r1 (blue-froggo)
unzip -o commits/commit1.zip -d src
git add .
git checkout -B "r0>r1"
git commit -m "r1"
git tag r1
git push -u origin main
