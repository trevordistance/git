# script to demonstrate branches in git

#git push git_remote --delete months
#git push git_remote --delete days
#git push git_remote --delete release
#git push git_remote --delete develop
#git push git_remote --delete master
################################################################################
clear
rm -rf .git
rm days
rm months
rm README
################################################################################
echo
echo '##### 01 - initialise local git repo ######'
echo
################################################################################
git init
git remote add origin https://github.com/trevordistance/git
git add git.sh
git commit -m 'add main shell script'
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 02 - create empty README #####'  # on branch master
echo
################################################################################
touch README
################################################################################
echo
#git push origin master
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 03 - stage empty README #####'  # on branch master
echo
################################################################################
git add README
################################################################################
echo
#git push origin master
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 04 - commit empty README #####'  # on branch master
echo
################################################################################
git commit -m 'first commit to master in order to enable creation of further branches'
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 05 - create develop branch #####'
echo
################################################################################
git branch develop
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 06 - checkout develop branch #####'
echo
################################################################################
git checkout develop
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 07 - populate README as v1.0 on develop branch #####'
echo
################################################################################
echo 'v1.0 - just a lonely little README file' > README
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 08 - stage README v1.0 #####'
echo
################################################################################
git add README
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 09 - commit README v1.0 to develop branch #####'
echo
################################################################################
git commit -m 'commit updated README to develop branch'
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 10 - create release branch #####'
echo
################################################################################
git branch release
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 11 - create days feature branch #####'
echo
################################################################################
git branch days
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 12 - switch to days feature branch #####'
echo
################################################################################
git checkout days
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 13 - create empty days file #####'
echo
################################################################################
touch days
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 14 - stage empty days file #####'
echo
################################################################################
git add days
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 15 - commit empty days file to days branch #####'
echo
################################################################################
git commit -m 'commit empty days file to days branch'
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 16 - checkout master #####'
echo
################################################################################
git checkout master
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 17 - merge release into master (ie ready for production) #####'
echo
################################################################################
git merge release
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 18 - tag v1.0 on master #####'
echo
################################################################################
git tag v1.0
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
#echo
#echo '##### 10 - merge release into develop (ie successfully tested) #####'
#echo
################################################################################
#git checkout develop
#git merge release
################################################################################
#echo
#echo "Press any key to continue"
#while [ true ] ; do
#read -n 1
#if [ $? = 0 ] ; then
#break ;
#fi
#done
#echo
################################################################################
echo
echo '##### 19 - checkout days branch #####'
echo
################################################################################
git checkout days
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 20 - populate days file #####'
echo
################################################################################
echo 'Monday' >> days
echo 'Tuesday' >> days
echo 'Wednesday' >> days
echo 'Thursday' >> days
echo 'Friday' >> days
echo 'Saturday' >> days
git add days
git commit -m 'populate days file'
echo
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 21 - add new days feature to README #####'
echo
################################################################################
echo 'days feature introduced' >> README
git add README
git commit -m 'add new days feature to README'
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 22 - checkout develop branch #####'
echo
################################################################################
git checkout develop
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 23 - merge days feature branch into develop #####'
echo
################################################################################
git merge days
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 24 - checkout release branch #####'
echo
################################################################################
git checkout release
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 25 - merge days feature from develop to release for testing #####'
echo
################################################################################
git merge develop
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 26 - create feature branch for months #####'
echo
################################################################################
git branch months
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 27 - checkout feature branch for months #####'
echo
################################################################################
git checkout months
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 28 - merge develop into feature branch for months #####'
echo
################################################################################
git merge develop
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 29 - introduce empty months file on months feature branch #####'
echo
################################################################################
touch months
git add months
git commit -m 'commit empty months file to months branch'
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 30 - populate months file #####'
echo
################################################################################
echo 'January' >> months
echo 'February' >> months
echo 'March' >> months
echo 'April' >> months
echo 'May' >> months
echo 'June' >> months
echo 'July' >> months
echo 'August' >> months
echo 'September' >> months
echo 'October' >> months
echo 'November' >> months
git add months
git commit -m 'populate months file'
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 31 - checkout release branch in order to fix days file #####'
echo
################################################################################
git checkout release
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 32 - append Sunday to days file #####'
echo
################################################################################
echo 'Sunday' >> days
git add days
git commit -m 'fix issue of missing day in days file'
echo
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 33 - tag v1.1 on release branch - will it transfer to master? #####'
echo
################################################################################
git tag v1.1
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 34 - checkout master for release of days feature #####'
echo
################################################################################
git checkout master
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 35 - merge release into master - does tag go with it? #####'
echo
################################################################################
git merge release
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 36 - checkout develop branch for merge of months feature #####'
echo
################################################################################
git checkout develop
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 37 - merge months feature into develop #####'
echo
################################################################################
git merge months
################################################################################
echo
echo "Press any key to continue"
while [ true ] ; do
read -n 1
if [ $? = 0 ] ; then
break ;
fi
done
echo
################################################################################
echo
echo '##### 38 - merge release (tested and fixed) back into develop - how resolve conflicts?  develop includes months, but release includes days fix #####'
echo
################################################################################
git merge release
################################################################################

#git push --all origin
#git push --tags origin
